<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Page</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@300;400;600;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Nunito', sans-serif;
            background: #f5f5f5;
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

        .product__details .card-body {
            background: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            animation: fadeInUp 1s ease;
        }

        .product__details h2 {
            font-size: 2rem;
            margin-bottom: 20px;
        }

        .product__features p {
            margin-bottom: 10px;
        }

        .product__description {
            margin-top: 40px;
        }

        .product__description h4 {
            margin-bottom: 20px;
            border-bottom: 2px solid #ddd;
            padding-bottom: 10px;
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

        .card-img-top {
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .card-img-top:hover {
            transform: scale(1.05);
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        .bg-secondary {
            background-color: #343a40 !important;
            animation: fadeIn 1s ease;
        }

        .font-weight-semi-bold {
            font-weight: 600 !important;
        }

        .text-uppercase {
            text-transform: uppercase !important;
        }

        .qty-select {
            display: flex;
            align-items: center;
            margin-bottom: 15px;
        }

        .qty-select select {
            margin-left: 10px;
            padding: 5px;
            border-radius: 5px;
            border: 1px solid #ccc;
            transition: border-color 0.3s ease;
        }

        .qty-select select:focus {
            border-color: #007bff;
        }

        .product__description p {
            padding: 20px;
            background: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            animation: fadeInUp 1s ease;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }

        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
    </style>
</head>
<body>
    <?php
    require("header.php");
    require("navbar.php");

    if(isset($_GET['id'])){
        $product_id=mysqli_real_escape_string($con,$_GET['id']);
        if($product_id>0){
            $product=get_product($con,'','',$product_id);
        }else{
            echo "<script>window.location.href='index.php';</script>";
        }
    }else{
        echo "<script>window.location.href='index.php';</script>";
    }
    ?>

    <div class="container-fluid bg-secondary mb-5">
        <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 300px">
            <h1 class="font-weight-semi-bold text-uppercase mb-3">Product</h1>
            <div class="d-inline-flex">
                <p class="m-0"><a href="index.php">Home</a></p>
                <p class="m-0 px-2">-</p>
                <p class="m-0"><a href="contact.php">Contact</a></p>
            </div>
        </div>
    </div>

    <div class="container-fluid pt-5">
        <div class="row">
            <div class="col-lg-4 col-md-6 col-sm-8 col-xs-12 mb-4">
                <div class="card">
                    <img class="card-img-top img-fluid" src="<?php echo './media/product/' . $product['0']['image']; ?>" alt="Product Image">
                </div>
            </div>
            <div class="col-lg-8 col-md-6 col-sm-4 col-xs-12">
                <div class="card product__details">
                    <div class="card-body">
                        <h2><?php echo $product['0']['name']; ?></h2>
                        <div class="d-flex justify-content">
                            <h6>Price: ₹ <?php echo $product['0']['price']; ?></h6>
                            <h6 class="text-muted ml-2"><del><?php echo $product['0']['mrp']; ?></del></h6>
                        </div>
                        <p class="pro__info"><?php echo $product['0']['short_desc']; ?></p>
                        <div class="product__features">
                            <div class="sin__desc qty-select">
                                <p><span>Qty:</span> 
                                <select name="qty" id="qty">
                                    <?php for($i=1; $i<=10; $i++): ?>
                                        <option value="<?php echo $i; ?>"><?php echo $i; ?></option>
                                    <?php endfor; ?>
                                </select></p>
                            </div>
                            <div class="sin__desc">
                                <p><span>Availability:</span> In Stock</p>
                            </div>
                            <p><span><i class="fas fa-tag"></i></span> Categories: <a href="#"><?php echo $product['0']['categories']; ?></a></p>
                        </div>
                        <a href="javascript:void(0)" onclick="manage_cart('<?php echo $product['0']['id']?>','add')" class="btn btn-primary btn-lg">Add to Cart</a>
                    </div>
                </div>
                <div class="product__description mt-4">
                    <h4>Product Description</h4>
                    <p><?php echo $product['0']['description']; ?></p>
                </div>
            </div>
        </div>
    </div>

    <?php require("footer.php"); ?>
</body>
</html>
