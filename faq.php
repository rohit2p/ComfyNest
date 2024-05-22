<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>EShopper - FAQs</title>
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

    <style>
        .faq-section {
            background-color: #f8f9fa;
            padding: 60px 0;
        }
        .faq-header {
            margin-bottom: 40px;
        }
        .faq-header h2 {
            font-size: 36px;
            font-weight: 700;
            text-align: center;
        }
        .faq-list {
            max-width: 800px;
            margin: 0 auto;
        }
        .faq-item {
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
            padding: 20px;
            transition: all 0.3s;
        }
        .faq-item:hover {
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }
        .faq-question {
            font-size: 20px;
            font-weight: 600;
            cursor: pointer;
        }
        .faq-answer {
            display: none;
            padding-top: 10px;
            font-size: 16px;
            line-height: 1.6;
        }
    </style>
</head>

<body>
    <?php require("header.php"); ?>
    <?php require("navbar.php"); ?>

    <!-- FAQ Section Start -->
    <section class="faq-section">
        <div class="container">
            <div class="faq-header">
                <h2>Frequently Asked Questions</h2>
            </div>
            <div class="faq-list">
    <div class="faq-item">
        <h3 class="faq-question">What are your shipping options?</h3>
        <div class="faq-answer">
            <p>We offer standard shipping and expedited shipping options. Standard shipping typically takes 5-7 business days, while expedited shipping delivers within 2-3 business days. Shipping costs vary based on the shipping method and destination.</p>
        </div>
    </div>
    <div class="faq-item">
        <h3 class="faq-question">Do you offer free shipping?</h3>
        <div class="faq-answer">
            <p>Yes, we offer free standard shipping on all orders over ₹30000 within the continental United States. For orders below ₹30000, standard shipping rates apply.</p>
        </div>
    </div>
    <div class="faq-item">
        <h3 class="faq-question">What is your return policy?</h3>
        <div class="faq-answer">
            <p>Our return policy allows you to return unused items with tags intact within 30 days of delivery for a full refund or store credit. Please visit our Returns page for detailed instructions.</p>
        </div>
    </div>
    <div class="faq-item">
        <h3 class="faq-question">How do I track my order?</h3>
        <div class="faq-answer">
            <p>Once your order has shipped, you will receive a shipping confirmation email with a tracking number. You can use this tracking number to track your order on our website or through the carrier's website.</p>
        </div>
    </div>
    <div class="faq-item">
        <h3 class="faq-question">Can I change the shipping address after placing an order?</h3>
        <div class="faq-answer">
            <p>If you need to change the shipping address for your order, please contact our customer support team as soon as possible. We will do our best to accommodate your request, but changes may not be possible if the order has already been shipped.</p>
        </div>
    </div>
    <div class="faq-item">
        <h3 class="faq-question">What makes your furniture high-quality?</h3>
        <div class="faq-answer">
            <p>We ensure the highest quality standards in all our products by using durable materials and superior craftsmanship. Our furniture is designed to stand the test of time, both in terms of style and functionality.</p>
        </div>
    </div>
    <div class="faq-item">
        <h3 class="faq-question">How do you incorporate sustainability into your products?</h3>
        <div class="faq-answer">
            <p>We are committed to sustainable practices by using eco-friendly materials and processes in our manufacturing. This helps us reduce our environmental footprint and contribute to a healthier planet.</p>
        </div>
    </div>
    <div class="faq-item">
        <h3 class="faq-question">What should I do if I have a problem with my order?</h3>
        <div class="faq-answer">
            <p>If you encounter any issues with your order, please contact our customer support team. Our top priority is customer satisfaction, and we will work with you to resolve any problems promptly and efficiently.</p>
        </div>
    </div>
    <div class="faq-item">
        <h3 class="faq-question">Do you offer furniture for all rooms in the home?</h3>
        <div class="faq-answer">
            <p>Yes, we offer a curated selection of high-quality furniture for every room in your home, including living rooms, dining rooms, and bedrooms. You can find the perfect pieces to create a comfortable and stylish home.</p>
        </div>
    </div>
    <div class="faq-item">
        <h3 class="faq-question">How can I stay updated with new products and offers?</h3>
        <div class="faq-answer">
            <p>You can stay updated with our latest products and special offers by subscribing to our newsletter. Follow us on social media and visit our website regularly for the newest additions to our collection.</p>
        </div>
    </div>
</div>

                </div>
            </div>
        </div>
    </section>
    <!-- FAQ Section End -->

    <?php include("inc/footer.html"); ?>

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
        $(document).ready(function(){
            $('.faq-question').click(function(){
                $(this).next('.faq-answer').slideToggle();
                $(this).parent('.faq-item').toggleClass('active');
            });
        });
    </script>
</body>

</html>
