<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ComfyNest - Home</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link rel="stylesheet" href="lib/owlcarousel/assets/owl.carousel.min.css">
    <link rel="stylesheet" href="css/style.css">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
        }
        .section-title {
            font-size: 28px;
            font-weight: 600;
            color: #333;
        }
        .carousel-caption {
            background: rgba(0, 0, 0, 0.5);
            padding: 20px;
            border-radius: 10px;
        }
        .product-item {
            transition: transform 0.2s;
        }
        .product-item:hover {
            transform: scale(1.05);
        }
        .subscribe-section {
            background: url('img/subscribe-bg.jpg') no-repeat center center/cover;
            padding: 50px 0;
            color: white;
            text-align: center;
        }
        .testimonial-section {
            background: #f8f9fa;
            padding: 50px 0;
            text-align: center;
        }
        .testimonial {
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
    </style>
</head>
<body>

<?php require("header.php"); ?>
<?php require("navbar.php"); ?>

<!-- Featured Start -->
<div class="container-fluid pt-5">
    <div class="row px-xl-5 pb-3">
        <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
            <div class="d-flex align-items-center border mb-4" style="padding: 30px;">
                <h1 class="fa fa-check text-primary m-0 mr-3"></h1>
                <h5 class="font-weight-semi-bold m-0">Quality Product</h5>
            </div>
        </div>
        <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
            <div class="d-flex align-items-center border mb-4" style="padding: 30px;">
                <h1 class="fa fa-shipping-fast text-primary m-0 mr-2"></h1>
                <h5 class="font-weight-semi-bold m-0">Free Shipping</h5>
            </div>
        </div>
        <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
            <div class="d-flex align-items-center border mb-4" style="padding: 30px;">
                <h1 class="fas fa-exchange-alt text-primary m-0 mr-3"></h1>
                <h5 class="font-weight-semi-bold m-0">14-Day Return</h5>
            </div>
        </div>
        <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
            <div class="d-flex align-items-center border mb-4" style="padding: 30px;">
                <h1 class="fa fa-phone-volume text-primary m-0 mr-3"></h1>
                <h5 class="font-weight-semi-bold m-0">24/7 Support</h5>
            </div>
        </div>
    </div>
</div>
<!-- Featured End -->

<!-- Carousel Start -->
<div id="header-carousel" class="carousel slide" data-ride="carousel">
    <div class="carousel-inner">
        <div class="carousel-item active" style="height: 410px;">
            <img class="img-fluid" src="img/banner1.jpg" alt="Image">
            <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                <div class="p-3" style="max-width: 700px;">
                    <h4 class="text-light text-uppercase font-weight-medium mb-3">25% Off Your Every Order</h4>
                    <h3 class="display-4 text-white font-weight-semi-bold mb-4">All your furniture needs</h3>
                    <a href="products.php" class="btn btn-light py-2 px-3">Shop Now</a>
                </div>
            </div>
        </div>
        <div class="carousel-item" style="height: 410px;">
            <img class="img-fluid" src="img/banner2.jpg" alt="Image">
            <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                <div class="p-3" style="max-width: 700px;">
                    <h4 class="text-light text-uppercase font-weight-medium mb-3">25% Off Your Every Order</h4>
                    <h3 class="display-4 text-white font-weight-semi-bold mb-4">Reasonable Price</h3>
                    <a href="products.php" class="btn btn-light py-2 px-3">Shop Now</a>
                </div>
            </div>
        </div>
    </div>
    <a class="carousel-control-prev" href="#header-carousel" data-slide="prev">
        <div class="btn btn-dark" style="width: 45px; height: 45px;">
            <span class="carousel-control-prev-icon mb-n2"></span>
        </div>
    </a>
    <a class="carousel-control-next" href="#header-carousel" data-slide="next">
        <div class="btn btn-dark" style="width: 45px; height: 45px;">
            <span class="carousel-control-next-icon mb-n2"></span>
        </div>
    </a>
</div>
<!-- Carousel End -->

<!-- Products Start -->
<div class="container-fluid pt-5">
    <div class="text-center mb-4">
        <h2 class="section-title px-5"><span class="px-2">Trendy Products</span></h2>
    </div>
    <div class="row px-xl-5 pb-3">
        <?php
        $get_product = get_product($con);
        foreach($get_product as $list) {
        ?>
        <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
            <div class="card product-item border-0 mb-4">
                <a href="product.php?id=<?php echo $list['id']?>" class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
                    <img class="img-fluid w-100" src="<?php echo './media/product/'.$list['image']?>" alt="product images">
                </a>
                <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
                    <h6 class="text-truncate mb-3"><?php echo $list['name'] ?></h6>
                    <div class="d-flex justify-content-center">
                        <h6>₹<?php echo $list['price'] ?></h6><h6 class="text-muted ml-2"><del>₹<?php echo $list['mrp'] ?></del></h6>
                    </div>
                </div>
                <div class="card-footer d-flex justify-content-between bg-light border">
                    <a href="product.php?id=<?php echo $list['id']?>" class="btn btn-sm text-dark p-0"><i class="fas fa-eye text-primary mr-1"></i>View Detail</a>
                    <a href="javascript:void(0)" onclick="manage_cart('<?php echo $list['id'] ?>', 'add', 1)" class="btn btn-sm text-dark p-0"><i class="fas fa-shopping-cart text-primary mr-1"></i>Add to Cart</a>
                </div>
            </div>
        </div>
        <?php } ?>
    </div>
</div>
<!-- Products End -->

<!-- Just Arrived Start -->
<div class="container-fluid pt-5">
    <div class="text-center mb-4">
        <h2 class="section-title px-5"><span class="px-2">Just Arrived</span></h2>
    </div>
    <div class="row px-xl-5 pb-3">
        <?php 
        foreach ($get_product as $list) {
        ?>
        <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
            <div class="card product-item border-0 mb-4">
                <a href="product.php?id=<?php echo $list['id']?>" class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
                    <img class="img-fluid w-100" src="<?php echo './media/product/'.$list['image']?>" alt="Product Image">
                </a>
                <div class="cardHere's the continued enhanced version of your `index.php` page with the completion of the "Just Arrived" section and the addition of a "Testimonials" section:

```php
                <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
                    <h6 class="text-truncate mb-3"><?php echo $list['name']?></h6>
                    <div class="d-flex justify-content-center">
                        <h6>₹<?php echo $list['mrp'] ?></h6><h6 class="text-muted ml-2"><del>₹<?php echo $list['price']?></del></h6>
                    </div>
                </div>
                <div class="card-footer d-flex justify-content-between bg-light border">
                    <a href="product.php?id=<?php echo $list['id']?>" class="btn btn-sm text-dark p-0"><i class="fas fa-eye text-primary mr-1"></i>View Detail</a>
                    <a href="javascript:void(0)" onclick="manage_cart('<?php echo $list['id'] ?>', 'add', 1)" class="btn btn-sm text-dark p-0"><i class="fas fa-shopping-cart text-primary mr-1"></i>Add to Cart</a>
                </div>
            </div>
        </div>
        <?php } ?>
    </div>
</div>
<!-- Just Arrived End -->

<!-- Testimonials Start -->
<div class="testimonial-section">
    <div class="container">
        <h2 class="section-title px-5 mb-4"><span class="px-2">What Our Customers Say</span></h2>
        <div class="row">
            <div class="col-md-4">
                <div class="testimonial">
                    <img src="img/customer1.jpg" class="img-fluid rounded-circle mb-3" alt="Customer Image">
                    <h5 class="font-weight-bold">Shalani Gupta</h5>
                    <p class="text-muted">"ComfyNest has the best quality furniture. Highly recommend!"</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="testimonial">
                    <img src="img/customer2.jpeg" class="img-fluid rounded-circle mb-3" alt="Customer Image">
                    <h5 class="font-weight-bold">Shah Rukh Khan</h5>
                    <p class="text-muted">"Great service and quick delivery. I'm very satisfied."</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="testimonial">
                    <img src="img/cunsomer3.jpeg" class="img-fluid rounded-circle mb-3" alt="Customer Image">
                    <h5 class="font-weight-bold">Alia Bhatt</h5>
                    <p class="text-muted">"Amazing products at affordable prices. Will shop again."</p>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Testimonials End -->

<!-- Subscribe Start -->
<div class="container-fluid subscribe-section my-5">
    <div class="row justify-content-md-center py-5 px-xl-5">
        <div class="col-md-6 col-12 py-5">
            <div class="text-center mb-2 pb-2">
                <h1>Stay Updated</h1>
                <p>Stay up to date with the latest trends and offers from ComfyNest. Subscribe to our newsletter for regular updates and special promotions.</p>
            </div>
            <form action="">
                <div class="input-group">
                    <input type="text" class="form-control border-white p-4" placeholder="Email Goes Here">
                    <div class="input-group-append">
                        <button class="btn btn-primary px-4">Subscribe</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<!-- Subscribe End -->

<!-- Footer Start -->
<?php include("inc/footer.html"); ?>
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
<script>
function manage_cart(pid, type, qty) {
    $.ajax({
        url: 'manage_cart.php',
        type: 'post',
        data: {pid: pid, type: type, qty: qty},
        success: function (result) {
            var response = JSON.parse(result);
            $('#cart_count').text(response.totalProduct);
            location.reload();
        }
    });
}
</script>
</body>
</html>
