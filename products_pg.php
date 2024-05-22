<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>ComfyNest - Bootstrap Shop Template</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet"> 

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
</head>
<body>
<?php 
    require("header.php");
?>

    <!-- Navbar Start -->
    <?php 
        require("navbar.php");
    ?>
    <!-- Navbar End -->

    <div class="container-fluid pt-5">
        <div class="text-center mb-4">
            <h1 class="section-title px-5"><span class="px-2">Products</span></h1>
        </div>
        <div class="row px-xl-5 pb-3">
            <?php
            $get_product = get_product($con);
            foreach($get_product as $list){
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

    <!-- Footer Start -->
    <?php 
        include("inc/footer.html");
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
