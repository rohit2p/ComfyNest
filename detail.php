<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ComfyNest</title>
    <meta name="keywords" content="furniture, home decor, online furniture store, affordable furniture">
    <meta name="description" content="Discover FurnitureHub's mission, quality commitment, sustainable practices, and community engagement. Join us in our journey to provide stylish and affordable furniture for every home.">

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
        * {
            font-family: Poppins, sans-serif;
        }

        .text-blk {
            margin: 0;
            line-height: 25px;
            padding: 0;
        }

        .responsive-cell-block {
            min-height: 75px;
        }

        .responsive-container-block {
            min-height: 75px;
            height: fit-content;
            width: 100%;
            padding: 10px;
            display: flex;
            flex-wrap: wrap;
            margin: auto;
            justify-content: flex-start;
        }

        .responsive-container-block.bigContainer {
            padding: 0 50px;
            margin: 50px 0;
        }

        .responsive-container-block.Container {
            max-width: 1320px;
            justify-content: space-evenly;
            align-items: center;
            padding: 10px;
            position: relative;
            overflow: hidden;
            margin: auto;
        }

        .mainImg {
            width: 100%;
            height: 800px;
            object-fit: cover;
            border-radius: 15px;
        }

        .blueDots {
            position: absolute;
            top: 150px;
            right: 15%;
            z-index: -1;
            width: 80%;
            height: 500px;
            object-fit: cover;
        }

        .imgContainer {
            position: relative;
            width: 48%;
        }

        .responsive-container-block.textSide {
            width: 48%;
            z-index: 100;
        }

        .text-blk.heading {
            font-size: 36px;
            line-height: 40px;
            font-weight: 700;
            margin-bottom: 20px;
        }

        .text-blk.subHeading {
            font-size: 18px;
            line-height: 26px;
            margin-bottom: 20px;
        }

        .cardImg {
            width: 31px;
            height: 31px;
        }

        .cardImgContainer {
            padding: 20px;
            border: 1px solid rgb(229, 229, 229);
            border-radius: 10px;
            margin-right: 10px;
        }

        .responsive-cell-block.wk-desk-6.wk-ipadp-6.wk-tab-12.wk-mobile-12 {
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 10px 15px;
        }

        .text-blk.cardHeading {
            font-size: 18px;
            line-height: 28px;
            font-weight: 700;
            margin-bottom: 10px;
        }

        .text-blk.cardSubHeading {
            color: rgb(153, 153, 153);
            line-height: 22px;
        }

        .explore {
            font-size: 18px;
            line-height: 20px;
            font-weight: 700;
            color: white;
            background-color: rgb(244, 152, 146);
            box-shadow: rgba(244, 152, 146, 0.25) 0px 10px 20px;
            border-radius: 10px;
            cursor: pointer;
            padding: 17px 40px;
        }

        .explore:hover {
            background-color: rgb(244, 182, 176);
        }

        #ixvck {
            margin-top: 60px;
            width: 90%;
        }

        .redDots {
            position: absolute;
            bottom: -350px;
            right: -100px;
            height: 500px;
            width: 400px;
            object-fit: cover;
        }

        @media (max-width: 1024px) {
            .responsive-container-block.Container {
                flex-direction: column-reverse;
            }

            .imgContainer {
                width: 60%;
            }

            .responsive-container-block.textSide {
                width: 70%;
            }
        }

        @media (max-width: 768px) {
            .responsive-container-block.textSide {
                width: 100%;
                align-items: center;
                flex-direction: column;
                justify-content: center;
            }

            .text-blk.subHeading {
                text-align: center;
                font-size: 17px;
                max-width: 520px;
            }

            .text-blk.heading {
                text-align: center;
            }

            .imgContainer {
                height: 500px;
                width: 90%;
                margin: auto;
            }
        }

        @media (max-width: 500px) {
            .imgContainer {
                height: 450px;
            }

            .blueDots {
                width: 100%;
                left: 0;
                top: 0;
                height: 80%;
            }

            .responsive-container-block.bigContainer {
                padding: 0 30px;
            }

            .text-blk.subHeading {
                font-size: 16px;
                line-height: 23px;
            }

            .text-blk.heading {
                font-size: 28px;
                line-height: 28px;
            }

            .responsive-container-block.textSide {
                margin: 40px 0 50px;
            }
        }
    </style>
    <?php require("header.php"); ?>
    <?php require("navbar.php"); ?>
</head>
<body>

    <div class="responsive-container-block bigContainer">
        <div class="responsive-container-block Container">
            <div class="imgContainer">
                <img class="blueDots" src="https://workik-widget-assets.s3.amazonaws.com/widget-assets/images/aw3.svg" alt="Decorative Blue Dots">
                <img class="mainImg" src="img/about_us.jpg" alt="Main Image">
            </div>
            <div class="responsive-container-block textSide">
                <h1 class="text-blk heading">About Us</h1>
                <p class="text-blk subHeading">
                    Welcome to ComfyNest, your ultimate destination for stylish and affordable furniture! At ComfyNest, we believe that every home deserves beautiful, high-quality furniture without breaking the bank.
                    <br><br>
                    Our journey began in 2024 with a passion for design and a vision to create a one-stop-shop for all your furniture needs. Over the years, we have grown into a beloved online destination, offering a curated selection of high-quality furniture, home decor, and accessories for every room in your home.
                    <br><br>
                    Whether you're searching for the perfect sofa for your living room, a stylish dining table, or cozy bedroom furniture, we've got you covered.
                    <br><br>
                    Thank you for choosing ComfyNest. We look forward to helping you create a home that reflects your unique style and comfort!
                </p>
                <div class="responsive-cell-block wk-desk-6 wk-ipadp-6 wk-tab-12 wk-mobile-12">
                    <div class="cardImgContainer">
                        <img class="cardImg" src="img/value.png" alt="Value Icon">
                    </div>
                    <div class="cardText">
                        <p class="text-blk cardHeading">Quality</p>
                        <p class="text-blk cardSubHeading">We ensure the highest quality standards in all our products, offering durable and stylish furniture that stands the test of time.</p>
                    </div>
                </div>
                <div class="responsive-cell-block wk-desk-6 wk-ipadp-6 wk-tab-12 wk-mobile-12">
                    <div class="cardImgContainer">
                        <img class="cardImg" src="img/value2.png" alt="Value Icon">
                    </div>
                    <div class="cardText">
                        <p class="text-blk cardHeading">Sustainability</p>
                        <p class="text-blk cardSubHeading">We are committed to sustainable practices, using eco-friendly materials and processes to reduce our environmental footprint.</p>
                    </div>
                </div>
                <div class="responsive-cell-block wk-desk-6 wk-ipadp-6 wk-tab-12 wk-mobile-12">
                    <div class="cardImgContainer">
                        <img class="cardImg" src="img/value3.png" alt="Value Icon">
                    </div>
                    <div class="cardText">
                        <p class="text-blk cardHeading">Customer Satisfaction</p>
                        <p class="text-blk cardSubHeading">Our customers are our top priority. We strive to provide an exceptional shopping experience, from browsing to delivery and beyond.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <?php require("footer.php"); ?>

    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
</body>
</html>
