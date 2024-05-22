<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>EShopper - Bootstrap Shop Template</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">
    
    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;700&display=swap" rel="stylesheet">

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: #f8f9fa;
            color: #333;
        }

        .breadcrumb {
            background-color: transparent;
            padding: 0;
            margin: 0;
        }

        .breadcrumb-item a {
            color: #6c757d;
            text-decoration: none;
        }

        .breadcrumb-item a:hover {
            color: #007bff;
        }

        .table-responsive {
            margin-bottom: 20px;
        }

        .table th, .table td {
            padding: 15px;
            vertical-align: middle;
            border-color: #ddd;
        }

        .product-thumbnail img {
            max-width: 100px;
            height: auto;
            margin-right: 15px;
        }

        .product-name a {
            font-family: 'Open Sans', sans-serif;
            font-weight: bold;
            text-decoration: none;
            color: #333;
        }

        .product-name a:hover {
            color: #007bff;
        }

        .product-quantity input {
            width: 60px;
            text-align: center;
            border: 1px solid #ddd;
            border-radius: 5px;
            margin: 0 10px;
        }

        .product-quantity a {
            color: #007bff;
            text-decoration: none;
        }

        .product-quantity a:hover {
            color: #0056b3;
        }

        .product-remove i {
            color: #dc3545;
            font-size: 18px;
            cursor: pointer;
        }

        .product-remove i:hover {
            color: #c82333;
        }

        .card {
            margin-bottom: 30px;
            border: 1px solid #ddd;
            border-radius: 10px;
        }

        .card-header, .card-body, .card-footer {
            padding: 20px;
            background: #fff;
            border-radius: 10px;
        }

        .card-footer {
            background-color: #f8f8f8;
            border-top: 1px solid #ddd;
        }

        .btn-primary {
            background-color: #007bff;
            border: none;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        .btn-primary:hover {
            background-color: #0056b3;
            transform: translateY(-2px);
        }

        .btn-lg {
            padding: 15px 20px;
            border-radius: 5px;
        }

        .back-to-top {
            position: fixed;
            bottom: 30px;
            right: 30px;
            display: none;
            width: 40px;
            height: 40px;
            text-align: center;
            background-color: #007bff;
            color: #fff;
            border-radius: 50%;
        }

        .back-to-top i {
            line-height: 40px;
        }

        .back-to-top:hover {
            background-color: #0056b3;
        }
    </style>
</head>

<body>
    <!-- Topbar Start -->
    <?php 
        include("header.php");
    ?>
    <!-- Topbar End -->

    <!-- Navbar Start -->
    <?php 
        include("navbar.php");
    ?>
    <!-- Navbar End -->

    <!-- Page Header Start -->
    <div class="container-fluid bg-secondary mb-5">
        <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 300px">
            <h1 class="font-weight-semi-bold text-uppercase mb-3">Shopping Cart</h1>
            <div class="d-inline-flex">
                <p class="m-0"><a href="index.php">Home</a></p>
                <p class="m-0 px-2">-</p>
                <p class="m-0">Shopping Cart</p>
            </div>
        </div>
    </div>
    <!-- Page Header End -->

    <!-- Cart Start -->
    <div class="container-fluid pt-5">
        <div class="row px-xl-5">
            <div class="col-lg-8 table-responsive mb-5">
                <table class="table table-bordered text-center mb-0">
                    <thead class="bg-secondary text-dark">
                        <tr>
                            <th class="product-thumbnail">Products</th>
                            <th class="product-name">Name of products</th>
                            <th class="product-price">Price</th>
                            <th class="product-quantity">Quantity</th>
                            <th class="product-subtotal">Total</th>
                            <th class="product-remove">Remove</th>
                        </tr>
                    </thead>
                    <tbody>
                    <?php
                        if(isset($_SESSION['cart'])){
                            foreach($_SESSION['cart'] as $key=>$val){
                                $productArr=get_product($con,'','',$key);
                                $pname=$productArr[0]['name'];
                                $mrp=$productArr[0]['mrp'];
                                $price=$productArr[0]['price'];
                                $image=$productArr[0]['image'];
                                $qty=$val['qty'];
                                ?>
                                <tr>
                                    <td class="product-thumbnail"><a href="#"><img src="<?php echo './media/product/'.$image?>" alt="<?php echo $pname; ?>"/></a></td>
                                    <td class="product-name"><a href="product.php?id=<?php echo $key; ?>"><?php echo $pname?></a></td>
                                    <td class="product-price">₹<?php echo $price?></td>
                                    <td class="product-quantity">
                                        <input type="number" id="<?php echo $key?>qty" value="<?php echo $qty?>" min="1" max="10"/>
                                        <a href="javascript:void(0)" onclick="manage_cart('<?php echo $key?>','update')">Update</a>
                                    </td>
                                    <td class="product-subtotal">₹<?php echo $qty*$price?></td>
                                    <td class="product-remove"><a href="javascript:void(0)" onclick="manage_cart('<?php echo $key?>','remove')"><i class="fas fa-trash-alt"></i></a></td> 
                                </tr>
                    <?php } } ?> 
                    </tbody>
                </table>
            </div>
            <div class="col-lg-4">
                <div class="card border-secondary mb-5">
                    <div class="card-header bg-secondary border-0">
                        <h4 class="font-weight-semi-bold m-0">Cart Summary</h4>
                    </div>
                    <div class="card-body">
                        <div class="d-flex justify-content-between mb-3 pt-1">
                            <h6 class="font-weight-medium">Subtotal</h6>
                            <?php 
                            $subtotal=0;
                            if(isset($_SESSION['cart'])){
                                foreach($_SESSION['cart'] as $key => $val){
                                    $productArr = get_product($con, '', '', $key);
                                    $price = $productArr[0]['price'];
                                    $qty = $val['qty'];
                                    $subtotal += $price * $qty; // Calculate subtotal
                                }
                            }
                            ?>
                            <h5 class="font-weight-medium">₹<?php echo $subtotal; ?></h5>
                        </div>
                        <div class="d-flex justify-content-between">
                            <h6 class="font-weight-medium">Shipping</h6>
                            <h6 class="font-weight-medium">₹50</h6>
                        </div>
                    </div>
                    <div class="card-footer border-secondary bg-transparent">
                        <div class="d-flex justify-content-between mt-2">
                            <h5 class="font-weight-medium">Total</h5>
                            <?php
                            $total = $subtotal + 50; // Calculate total by adding shipping cost
                            ?>
                            <h5 class="font-weight-medium">₹<?php echo $total; ?></h5> <!-- Display total -->
                        </div>
                        <button class="btn btn-lg btn-block btn-primary font-weight-bold my-3 py-3"><a href="checkout.php" class="btn btn-primary">Proceed To Checkout</a></button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Cart End -->


    <!-- Footer Start -->
    <?php 
        include("footer.php");
    ?>
    <!-- Footer End -->


    <!-- Back to Top -->
    <a href="#" class="btn btn-primary back-to-top"><i class="fa fa-angle-double-up"></i></a>


    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Contact Javascript File -->
    <script src="mail/jqBootstrapValidation.min.js"></script>
    <script src="mail/contact.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
</body>

</html>