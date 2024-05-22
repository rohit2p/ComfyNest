<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

include("connection.inc.php");
include("functions.inc.php");

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Collect order details
    $first_name = $_POST['first_name'];
    $last_name = $_POST['last_name'];
    $email = $_POST['email'];
    $mobile_no = $_POST['mobile_no'];
    $address_line1 = $_POST['address_line1'];
    $address_line2 = $_POST['address_line2'];
    $country = $_POST['country'];
    $city = $_POST['city'];
    $state = $_POST['state'];
    $pin_code = $_POST['pin_code'];

    $shipping_first_name = $_POST['shipping_first_name'] ?: $first_name;
    $shipping_last_name = $_POST['shipping_last_name'] ?: $last_name;
    $shipping_email = $_POST['shipping_email'] ?: $email;
    $shipping_mobile_no = $_POST['shipping_mobile_no'] ?: $mobile_no;
    $shipping_address_line1 = $_POST['shipping_address_line1'] ?: $address_line1;
    $shipping_address_line2 = $_POST['shipping_address_line2'] ?: $address_line2;
    $shipping_country = $_POST['shipping_country'] ?: $country;
    $shipping_city = $_POST['shipping_city'] ?: $city;
    $shipping_state = $_POST['shipping_state'] ?: $state;
    $shipping_pin_code = $_POST['shipping_pin_code'] ?: $pin_code;

    $payment_method = $_POST['payment_method'];
    $order_total = 0;

    // Calculate order total
    if (isset($_SESSION['cart'])) {
        foreach ($_SESSION['cart'] as $key => $val) {
            $productArr = get_product($con, '', '', $key);
            if (!empty($productArr)) {
                $price = $productArr[0]['price'];
                $qty = $val['qty'];
                $order_total += $price * $qty;
            }
        }
    }
    $order_total += 50; // Add shipping cost

    // Insert order details into orders table
    $sql = "INSERT INTO orders (
        first_name, last_name, email, mobile_no, address_line1, address_line2, country, city, state, pin_code,
        shipping_first_name, shipping_last_name, shipping_email, shipping_mobile_no, shipping_address_line1,
        shipping_address_line2, shipping_country, shipping_city, shipping_state, shipping_pin_code,
        payment_method, order_total
    ) VALUES (
        ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?
    )";

    $stmt = $con->prepare($sql);
    if ($stmt === false) {
        die('Prepare failed: ' . htmlspecialchars($con->error));
    }

    $bind = $stmt->bind_param(
        "ssssssssssssssssssssss",
        $first_name, $last_name, $email, $mobile_no, $address_line1, $address_line2, $country, $city, $state, $pin_code,
        $shipping_first_name, $shipping_last_name, $shipping_email, $shipping_mobile_no, $shipping_address_line1,
        $shipping_address_line2, $shipping_country, $shipping_city, $shipping_state, $shipping_pin_code,
        $payment_method, $order_total
    );

    if ($bind === false) {
        die('Bind param failed: ' . htmlspecialchars($stmt->error));
    }

    $execute = $stmt->execute();
    if ($execute === false) {
        die('Execute failed: ' . htmlspecialchars($stmt->error));
    }

    // Get the last inserted order id
    $order_id = $stmt->insert_id;

    // Insert order details into order_details table
    if (isset($_SESSION['cart'])) {
        foreach ($_SESSION['cart'] as $key => $val) {
            $productArr = get_product($con, '', '', $key);
            if (!empty($productArr)) {
                $price = $productArr[0]['price'];
                $qty = $val['qty'];
                $product_name = $productArr[0]['name'];
                $product_id = $key;

                $order_detail_query = "INSERT INTO order_details (order_id, product_id, product_name, product_price, qty) VALUES (?, ?, ?, ?, ?)";
                $order_detail_stmt = $con->prepare($order_detail_query);
                if ($order_detail_stmt === false) {
                    die('Prepare failed: ' . htmlspecialchars($con->error));
                }
                $order_detail_stmt->bind_param("iisdi", $order_id, $product_id, $product_name, $price, $qty);
                $order_detail_stmt->execute();
                $order_detail_stmt->close();
            }
        }
    }

    // Order placed successfully, show the message
    echo '<!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Order Confirmation</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
        <style>
            .confirmation-message {
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
                background-color: #f8f9fa;
            }
            .message-box {
                text-align: center;
                padding: 20px;
                border: 1px solid #ced4da;
                border-radius: 10px;
                background-color: #ffffff;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            }
            .message-box h1 {
                font-size: 2.5rem;
                color: #28a745;
                margin-bottom: 20px;
            }
            .message-box p {
                font-size: 1.2rem;
                color: #6c757d;
            }
        </style>
    </head>
    <body>
        <div class="confirmation-message">
            <div class="message-box">
                <h1><i class="fas fa-check-circle"></i> Order Placed Successfully!</h1>
                <p>You will be redirected to the home page shortly.</p>
            </div>
        </div>
        <script>
            setTimeout(function() {
                window.location.href = "index.php";
            }, 5000); // Redirect after 5 seconds
        </script>
    </body>
    </html>';

    unset($_SESSION['cart']);

    $stmt->close();
    $con->close();
} else {
    header('Location: checkout.php');
}
?>
