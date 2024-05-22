<?php
require('top.inc.php');

if (!isset($_GET['id'])) {
    header('Location: admin_orders.php');
    die();
}

$order_id = get_safe_value($con, $_GET['id']);

// Fetch order details
$order_sql = "SELECT * FROM orders WHERE id = $order_id";
$order_res = mysqli_query($con, $order_sql);
$order_data = mysqli_fetch_assoc($order_res);

if (!$order_data) {
    header('Location: admin_orders.php');
    die();
}

// Fetch order items
$order_detail_sql = "SELECT * FROM order_details WHERE order_id = $order_id";
$order_detail_res = mysqli_query($con, $order_detail_sql);
?>

<div class="content pb-0">
    <div class="orders">
        <div class="row">
            <div class="col-xl-12">
                <div class="card">
                    <div class="card-body">
                        <h4 class="box-title">Order Details</h4>
                    </div>
                    <div class="card-body--">
                        <div class="table-stats order-table ov-h">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Product Name</th>
                                        <th>Price</th>
                                        <th>Quantity</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php 
                                    $i = 1;
                                    while ($detail_row = mysqli_fetch_assoc($order_detail_res)) { ?>
                                        <tr>
                                            <td><?php echo $i++; ?></td>
                                            <td><?php echo $detail_row['product_name']; ?></td>
                                            <td>₹<?php echo $detail_row['product_price']; ?></td>
                                            <td><?php echo $detail_row['qty']; ?></td>
                                        </tr>
                                    <?php } ?>
                                    <?php if (mysqli_num_rows($order_detail_res) == 0) { ?>
                                        <tr>
                                            <td colspan="4">No products found</td>
                                        </tr>
                                    <?php } ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="card-footer">
                        <a href="admin_orders.php" class="btn btn-primary">Back to Orders</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<?php
require('footer.inc.php');
?>
