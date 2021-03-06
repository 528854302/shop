<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Genrre - Fashion eCommerce Bootstrap4 Template</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Favicon -->
    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" href="img/icon.png">

    <!-- Google font (font-family: 'Carrois Gothic', sans-serif;) -->
    <link href="https://fonts.googleapis.com/css?family=Carrois+Gothic" rel="stylesheet">
    <!-- Google font (font-family: 'Open Sans', sans-serif;) -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700" rel="stylesheet">

    <!-- Plugins -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/plugins.css">

    <!-- Style Css -->
    <link rel="stylesheet" href="style.css">

    <!-- Custom Styles -->
    <link rel="stylesheet" href="css/custom.css">

</head>
<body>
<!-- Wrapper -->
<div id="wrapper" class="wrapper">

    <!-- Header -->
    <header class="header sticky-header">

        <!-- Header Top Area -->
        <jsp:include page="jsp/head1.jsp"/>
        <!--// Header Top Area -->

        <!-- Header Middle Area -->
        <div class="header-middle-area cr-border cr-border-bottom">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-4 col-12">
                        <form class="header-search">
                            <select name="header-search-categories" id="c_option">
                                <option value="1">所有分类</option>
                                <c:forEach items="${category}" var="c">
                                    <option value="${c.cid}">${c.cname}</option>
                                </c:forEach>

                            </select>
                            <input type="text" placeholder="Search product...">
                            <button type="submit"><i class="fa fa-search"></i></button>
                        </form>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-7 col-12">
                        <div class="header-logo">
                            <a href="index.html">
                                <img src="img/logo/logo-1.png" alt="logo">
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-5 col-12">
                        <div class="header-cart-wrap">
                            <div class="header-cart">
                                <a href="cart.html" class="header-cart-button"><i class="fa fa-shopping-cart"></i> MY CART: (0)</a>
                                <div class="minicart">
                                    <ul class="minicart-product-list">
                                        <li>
                                            <a href="product-details-right-sidebar.html" class="minicart-product-image">
                                                <img src="img/product/small-size/product-image-1.jpg" alt="cart products">
                                                <span class="quantity">1</span>
                                            </a>
                                            <div class="minicart-product-details">
                                                <h6><a href="product-details-right-sidebar.html">Aenean eu tristique</a></h6>
                                                <span>£80</span>
                                            </div>
                                            <button class="close">
                                                <i class="fa fa-times-circle"></i>
                                            </button>
                                        </li>
                                        <li>
                                            <a href="product-details-right-sidebar.html" class="minicart-product-image">
                                                <img src="img/product/small-size/product-image-2.jpg" alt="cart products">
                                                <span class="quantity">1</span>
                                            </a>
                                            <div class="minicart-product-details">
                                                <h6><a href="product-details-right-sidebar.html">Aenean sagittis</a></h6>
                                                <span>£80</span>
                                            </div>
                                            <button class="close">
                                                <i class="fa fa-times-circle"></i>
                                            </button>
                                        </li>
                                        <li>
                                            <a href="product-details-right-sidebar.html" class="minicart-product-image">
                                                <img src="img/product/small-size/product-image-3.jpg" alt="cart products">
                                                <span class="quantity">1</span>
                                            </a>
                                            <div class="minicart-product-details">
                                                <h6><a href="product-details-right-sidebar.html">Aliquam lobortis est</a></h6>
                                                <span>£80</span>
                                            </div>
                                            <button class="close">
                                                <i class="fa fa-times-circle"></i>
                                            </button>
                                        </li>
                                    </ul>
                                    <p class="minicart-total">SUBTOTAL: <span>£315.00</span></p>
                                    <div class="minicart-button">
                                        <a href="checkout.html" class="sn-button-dark sn-button-fullwidth">
                                            <span>Checkout</span>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--// Header Middle Area -->

        <!-- Header Bottom Area -->
        <div class="header-bottom-area d-none d-lg-block">
            <div class="container">
                <div class="header-bottom-inner">
                    <nav class="sn-navigation">
                        <ul>
                            <li><a href="index.html">HOME</a>
                                <ul>
                                    <li><a href="index.html">HOME VERSION 1</a></li>
                                    <li><a href="index-2.html">HOME VERSION 2</a></li>
                                </ul>
                            </li>
                            <li><a href="shop-right-sidebar.html">SHOP</a>
                                <ul>
                                    <li><a href="shop.html">SHOP</a></li>
                                    <li><a href="shop-right-sidebar.html">SHOP WITH RIGHT SIDEBAR</a></li>
                                    <li><a href="shop-left-sidebar.html">SHOP WITH LEFT SIDEBAR</a></li>
                                    <li><a href="product-details.html">PRODUCT DETAILS</a></li>
                                    <li><a href="product-details-right-sidebar.html">PRODUCT DETAILS WITH RIGHT SIDEBAR</a></li>
                                    <li><a href="product-details-left-sidebar.html">PRODUCT DETAILS WITH LEFT SIDEBAR</a></li>
                                </ul>
                            </li>
                            <li><a href="blog-right-sidebar.html">BLOG</a>
                                <ul>
                                    <li><a href="blog.html">Blog Grid</a></li>
                                    <li><a href="blog-right-sidebar.html">Blog with Right Sidebar</a></li>
                                    <li><a href="blog-left-sidebar.html">Blog with Left Sidebar</a></li>
                                    <li><a href="blog-details.html">Blog Details</a></li>
                                    <li><a href="blog-details-right-sidebar.html">Blog Details with right sidebar</a></li>
                                    <li><a href="blog-details-left-sidebar.html">Blog Details with left sidebar</a></li>
                                </ul>
                            </li>
                            <li class="megamenu-active"><a href="#">PAGES</a>
                                <ul>
                                    <li>
                                        <a href="#">Shop/Products Page</a>
                                        <ul>
                                            <li><a href="shop.html">SHOP</a></li>
                                            <li><a href="shop-right-sidebar.html">SHOP WITH RIGHT SIDEBAR</a></li>
                                            <li><a href="shop-left-sidebar.html">SHOP WITH LEFT SIDEBAR</a></li>
                                            <li><a href="product-details.html">PRODUCT DETAILS</a></li>
                                            <li><a href="product-details-right-sidebar.html">PRODUCT DETAILS WITH RIGHT SIDEBAR</a></li>
                                            <li><a href="product-details-left-sidebar.html">PRODUCT DETAILS WITH LEFT SIDEBAR</a></li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="#">Blog Pages</a>
                                        <ul>
                                            <li><a href="blog.html">Blog Grid</a></li>
                                            <li><a href="blog-right-sidebar.html">Blog with Right Sidebar</a></li>
                                            <li><a href="blog-left-sidebar.html">Blog with Left Sidebar</a></li>
                                            <li><a href="blog-details.html">Blog Details</a></li>
                                            <li><a href="blog-details-right-sidebar.html">Blog Details with right sidebar</a></li>
                                            <li><a href="blog-details-left-sidebar.html">Blog Details with left sidebar</a></li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="#">Shop Pages</a>
                                        <ul>
                                            <li><a href="cart.html">Shopping Cart</a></li>
                                            <li><a href="wishlist.html">Wishlist</a></li>
                                            <li><a href="compare.html">Compare</a></li>
                                            <li><a href="checkout.html">Checkout</a></li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="#">Other Pages</a>
                                        <ul>
                                            <li><a href="login-register.html">LOGIN/REGISTER</a></li>
                                            <li><a href="my-account.html">MY ACCOUNT</a></li>
                                            <li><a href="about-us.html">ABOUT US</a></li>
                                            <li><a href="contact.html">CONTACT</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li><a href="about-us.html">ABOUT US</a></li>
                            <li><a href="contact.html">CONTACT</a></li>
                        </ul>
                    </nav>
                    <div class="header-bottom-social">
                        <span>Follow Us On:</span>
                        <ul>
                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fa fa-rss"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!--// Header Bottom Area -->

        <!-- Header Mobile Menu -->
        <div class="mobile-menu-area d-block d-lg-none">
            <div class="container">
                <div class="mobile-menu clearfix">
                    <div class="header-bottom-social">
                        <span>Follow Us On:</span>
                        <ul>
                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fa fa-rss"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!--// Header Mobile Menu -->

    </header>
    <!--// Header -->

    <!-- Hero Area -->
    <div class="hero-area slider-navigation-1">

        <div class="single-hero-item d-flex align-items-center"style="background-image: url(img/hero-image/hero-image-1.jpg);">
            <div class="container">
                <div class="row">
                    <div class="col-xl-6 col-lg-8 col-md-9 offset-xl-1 offset-0">
                        <div class="hero-content">
                            <h1>LATEST & EXCLUSIVE COLLECTIONS FOR WOMEN</h1>
                            <p>Genrre is one of the best shop for mens product & womens product. We always try to bring latest & exclusive collections.</p>
                            <a href="shop-right-sidebar.html" class="sn-button">
                                <span>Shop Now</span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="single-hero-item d-flex align-items-center"style="background-image: url(img/hero-image/hero-image-2.jpg);">
            <div class="container">
                <div class="row">
                    <div class="col-xl-6 col-lg-8 col-md-9 offset-xl-1 offset-0">
                        <div class="hero-content">
                            <h1>OUR NEW COLLECTIONS FOR STYLISH MEN & WOMEN</h1>
                            <p>Genrre is one of the best shop for mens product & womens product. We always try to bring latest & exclusive collections.</p>
                            <a href="shop-right-sidebar.html" class="sn-button">
                                <span>Shop Now</span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--// Hero Area -->

    <!-- Page Conttent -->
    <main class="page-content">

        <!-- Products Area -->
        <div class="products-area bg-white section-padding-md">
            <div class="container">

                <ul class="nav products-tab-trigger" id="myTab" role="tablist">
                    <li class="nav-item">
                        <a class="nav-link active" id="products-of-accessories-tab" data-toggle="tab" href="#products-of-accessories" role="tab" aria-controls="products-of-accessories" aria-selected="true">Accessories</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="products-of-mens-tab" data-toggle="tab" href="#products-of-mens" role="tab" aria-controls="products-of-mens" aria-selected="false">Men</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="products-of-womens-tab" data-toggle="tab" href="#products-of-womens" role="tab" aria-controls="products-of-womens" aria-selected="false">Women</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="products-of-kids-tab" data-toggle="tab" href="#products-of-kids" role="tab" aria-controls="products-of-kids" aria-selected="false">Kids</a>
                    </li>
                </ul>

                <div class="tab-content" id="myTabContent">
                    <div class="tab-pane fade show active" id="products-of-accessories" role="tabpanel" aria-labelledby="products-of-accessories-tab">
                        <div class="row justify-content-center products-wrapper">

                            <!-- Single Product -->
                            <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">
                                <div class="product-item">

                                    <div class="product-item-images">
                                        <a href="product-details-right-sidebar.html" class="product-item-image-inner">
                                            <img src="img/product/thumbnail-size/product-image-1.jpg" alt="product image">
                                            <img src="img/product/thumbnail-size/product-image-2.jpg" alt="product image">
                                        </a>
                                        <a href="cart.html" class="add-to-cart-button">
                                            <span>ADD TO CART</span>
                                        </a>
                                    </div>

                                    <div class="product-item-content">
                                        <div class="product-item-content-left">
                                            <h5><a href="product-details-right-sidebar.html">Vulputate justo</a></h5>
                                            <div class="ratting-box">
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                            </div>
                                            <div class="price-box">
													<span class="pricebox-price">
														<span class="currency-symbol">£</span>80.00
													</span>
                                            </div>
                                        </div>
                                        <div class="product-item-content-right">
                                            <ul>
                                                <li><a class="quick-view-trigger" href="#" data-toggle="tooltip" title="Quick View"><i class="fa fa-eye"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="fa fa-heart"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!--// Single Product -->

                            <!-- Single Product -->
                            <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">
                                <div class="product-item">

                                    <div class="product-item-images">
                                        <a href="product-details-right-sidebar.html" class="product-item-image-inner">
                                            <img src="img/product/thumbnail-size/product-image-3.jpg" alt="product image">
                                        </a>
                                        <a href="cart.html" class="add-to-cart-button">
                                            <span>ADD TO CART</span>
                                        </a>
                                    </div>

                                    <div class="product-item-content">
                                        <div class="product-item-content-left">
                                            <h5><a href="product-details-right-sidebar.html">Vestibulum suscipit</a></h5>
                                            <div class="ratting-box">
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                            </div>
                                            <div class="price-box">
													<span class="pricebox-price">
														<span class="currency-symbol">£</span>80.00
													</span>
                                            </div>
                                        </div>
                                        <div class="product-item-content-right">
                                            <ul>
                                                <li><a class="quick-view-trigger" href="#" data-toggle="tooltip" title="Quick View"><i class="fa fa-eye"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="fa fa-heart"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!--// Single Product -->

                            <!-- Single Product -->
                            <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">
                                <div class="product-item">

                                    <div class="product-item-images">
                                        <a href="product-details-right-sidebar.html" class="product-item-image-inner">
                                            <img src="img/product/thumbnail-size/product-image-5.jpg" alt="product image">
                                            <img src="img/product/thumbnail-size/product-image-6.jpg" alt="product image">
                                        </a>
                                        <a href="cart.html" class="add-to-cart-button">
                                            <span>ADD TO CART</span>
                                        </a>
                                    </div>

                                    <div class="product-item-content">
                                        <div class="product-item-content-left">
                                            <h5><a href="product-details-right-sidebar.html">Phasellus vel hendrerit</a></h5>
                                            <div class="ratting-box">
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                            </div>
                                            <div class="price-box">
													<span class="pricebox-price">
														<span class="currency-symbol">£</span>80.00
													</span>
                                            </div>
                                        </div>
                                        <div class="product-item-content-right">
                                            <ul>
                                                <li><a class="quick-view-trigger" href="#" data-toggle="tooltip" title="Quick View"><i class="fa fa-eye"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="fa fa-heart"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!--// Single Product -->

                            <!-- Single Product -->
                            <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">
                                <div class="product-item">

                                    <div class="product-item-images">
                                        <a href="product-details-right-sidebar.html" class="product-item-image-inner">
                                            <img src="img/product/thumbnail-size/product-image-7.jpg" alt="product image">
                                        </a>
                                        <a href="cart.html" class="add-to-cart-button">
                                            <span>ADD TO CART</span>
                                        </a>
                                    </div>

                                    <div class="product-item-content">
                                        <div class="product-item-content-left">
                                            <h5><a href="product-details-right-sidebar.html">Pellentesque posuere</a></h5>
                                            <div class="ratting-box">
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                            </div>
                                            <div class="price-box">
													<span class="pricebox-price">
														<span class="currency-symbol">£</span>80.00
													</span>
                                            </div>
                                        </div>
                                        <div class="product-item-content-right">
                                            <ul>
                                                <li><a class="quick-view-trigger" href="#" data-toggle="tooltip" title="Quick View"><i class="fa fa-eye"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="fa fa-heart"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!--// Single Product -->

                            <!-- Single Product -->
                            <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">
                                <div class="product-item">

                                    <div class="product-item-images">
                                        <a href="product-details-right-sidebar.html" class="product-item-image-inner">
                                            <img src="img/product/thumbnail-size/product-image-4.jpg" alt="product image">
                                            <img src="img/product/thumbnail-size/product-image-8.jpg" alt="product image">
                                        </a>
                                        <a href="cart.html" class="add-to-cart-button">
                                            <span>ADD TO CART</span>
                                        </a>
                                    </div>

                                    <div class="product-item-content">
                                        <div class="product-item-content-left">
                                            <h5><a href="product-details-right-sidebar.html">Pellentesque posuere</a></h5>
                                            <div class="ratting-box">
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                            </div>
                                            <div class="price-box">
													<span class="pricebox-price">
														<span class="currency-symbol">£</span>80.00
													</span>
                                            </div>
                                        </div>
                                        <div class="product-item-content-right">
                                            <ul>
                                                <li><a class="quick-view-trigger" href="#" data-toggle="tooltip" title="Quick View"><i class="fa fa-eye"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="fa fa-heart"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!--// Single Product -->

                            <!-- Single Product -->
                            <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">
                                <div class="product-item">

                                    <div class="product-item-images">
                                        <a href="product-details-right-sidebar.html" class="product-item-image-inner">
                                            <img src="img/product/thumbnail-size/product-image-9.jpg" alt="product image">
                                            <img src="img/product/thumbnail-size/product-image-10.jpg" alt="product image">
                                        </a>
                                        <a href="cart.html" class="add-to-cart-button">
                                            <span>ADD TO CART</span>
                                        </a>
                                    </div>

                                    <div class="product-item-content">
                                        <div class="product-item-content-left">
                                            <h5><a href="product-details-right-sidebar.html">Pellentesque posuere</a></h5>
                                            <div class="ratting-box">
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                            </div>
                                            <div class="price-box">
													<span class="pricebox-price">
														<span class="currency-symbol">£</span>80.00
													</span>
                                            </div>
                                        </div>
                                        <div class="product-item-content-right">
                                            <ul>
                                                <li><a class="quick-view-trigger" href="#" data-toggle="tooltip" title="Quick View"><i class="fa fa-eye"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="fa fa-heart"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!--// Single Product -->

                            <!-- Single Product -->
                            <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">
                                <div class="product-item">

                                    <div class="product-item-images">
                                        <a href="product-details-right-sidebar.html" class="product-item-image-inner">
                                            <img src="img/product/thumbnail-size/product-image-11.jpg" alt="product image">
                                        </a>
                                        <a href="cart.html" class="add-to-cart-button">
                                            <span>ADD TO CART</span>
                                        </a>
                                    </div>

                                    <div class="product-item-content">
                                        <div class="product-item-content-left">
                                            <h5><a href="product-details-right-sidebar.html">Pellentesque posuere</a></h5>
                                            <div class="ratting-box">
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                            </div>
                                            <div class="price-box">
													<span class="pricebox-price">
														<span class="currency-symbol">£</span>80.00
													</span>
                                            </div>
                                        </div>
                                        <div class="product-item-content-right">
                                            <ul>
                                                <li><a class="quick-view-trigger" href="#" data-toggle="tooltip" title="Quick View"><i class="fa fa-eye"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="fa fa-heart"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!--// Single Product -->

                            <!-- Single Product -->
                            <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">
                                <div class="product-item">

                                    <div class="product-item-images">
                                        <a href="product-details-right-sidebar.html" class="product-item-image-inner">
                                            <img src="img/product/thumbnail-size/product-image-12.jpg" alt="product image">
                                            <img src="img/product/thumbnail-size/product-image-13.jpg" alt="product image">
                                        </a>
                                        <a href="cart.html" class="add-to-cart-button">
                                            <span>ADD TO CART</span>
                                        </a>
                                    </div>

                                    <div class="product-item-content">
                                        <div class="product-item-content-left">
                                            <h5><a href="product-details-right-sidebar.html">Pellentesque posuere</a></h5>
                                            <div class="ratting-box">
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                            </div>
                                            <div class="price-box">
													<span class="pricebox-price">
														<span class="currency-symbol">£</span>80.00
													</span>
                                            </div>
                                        </div>
                                        <div class="product-item-content-right">
                                            <ul>
                                                <li><a class="quick-view-trigger" href="#" data-toggle="tooltip" title="Quick View"><i class="fa fa-eye"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="fa fa-heart"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!--// Single Product -->

                            <!-- Single Product -->
                            <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">
                                <div class="product-item">

                                    <div class="product-item-images">
                                        <a href="product-details-right-sidebar.html" class="product-item-image-inner">
                                            <img src="img/product/thumbnail-size/product-image-14.jpg" alt="product image">
                                        </a>
                                        <a href="cart.html" class="add-to-cart-button">
                                            <span>ADD TO CART</span>
                                        </a>
                                    </div>

                                    <div class="product-item-content">
                                        <div class="product-item-content-left">
                                            <h5><a href="product-details-right-sidebar.html">Pellentesque posuere</a></h5>
                                            <div class="ratting-box">
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                            </div>
                                            <div class="price-box">
													<span class="pricebox-price">
														<span class="currency-symbol">£</span>80.00
													</span>
                                            </div>
                                        </div>
                                        <div class="product-item-content-right">
                                            <ul>
                                                <li><a class="quick-view-trigger" href="#" data-toggle="tooltip" title="Quick View"><i class="fa fa-eye"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="fa fa-heart"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!--// Single Product -->

                            <!-- Single Product -->
                            <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">
                                <div class="product-item">

                                    <div class="product-item-images">
                                        <a href="product-details-right-sidebar.html" class="product-item-image-inner">
                                            <img src="img/product/thumbnail-size/product-image-15.jpg" alt="product image">
                                            <img src="img/product/thumbnail-size/product-image-16.jpg" alt="product image">
                                        </a>
                                        <a href="cart.html" class="add-to-cart-button">
                                            <span>ADD TO CART</span>
                                        </a>
                                    </div>

                                    <div class="product-item-content">
                                        <div class="product-item-content-left">
                                            <h5><a href="product-details-right-sidebar.html">Pellentesque posuere</a></h5>
                                            <div class="ratting-box">
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                            </div>
                                            <div class="price-box">
													<span class="pricebox-price">
														<span class="currency-symbol">£</span>80.00
													</span>
                                            </div>
                                        </div>
                                        <div class="product-item-content-right">
                                            <ul>
                                                <li><a class="quick-view-trigger" href="#" data-toggle="tooltip" title="Quick View"><i class="fa fa-eye"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="fa fa-heart"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!--// Single Product -->

                            <!-- Single Product -->
                            <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">
                                <div class="product-item">

                                    <div class="product-item-images">
                                        <a href="product-details-right-sidebar.html" class="product-item-image-inner">
                                            <img src="img/product/thumbnail-size/product-image-17.jpg" alt="product image">
                                        </a>
                                        <a href="cart.html" class="add-to-cart-button">
                                            <span>ADD TO CART</span>
                                        </a>
                                    </div>

                                    <div class="product-item-content">
                                        <div class="product-item-content-left">
                                            <h5><a href="product-details-right-sidebar.html">Pellentesque posuere</a></h5>
                                            <div class="ratting-box">
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                            </div>
                                            <div class="price-box">
													<span class="pricebox-price">
														<span class="currency-symbol">£</span>80.00
													</span>
                                            </div>
                                        </div>
                                        <div class="product-item-content-right">
                                            <ul>
                                                <li><a class="quick-view-trigger" href="#" data-toggle="tooltip" title="Quick View"><i class="fa fa-eye"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="fa fa-heart"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!--// Single Product -->

                            <!-- Single Product -->
                            <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">
                                <div class="product-item">

                                    <div class="product-item-images">
                                        <a href="product-details-right-sidebar.html" class="product-item-image-inner">
                                            <img src="img/product/thumbnail-size/product-image-18.jpg" alt="product image">
                                        </a>
                                        <a href="cart.html" class="add-to-cart-button">
                                            <span>ADD TO CART</span>
                                        </a>
                                    </div>

                                    <div class="product-item-content">
                                        <div class="product-item-content-left">
                                            <h5><a href="product-details-right-sidebar.html">Pellentesque posuere</a></h5>
                                            <div class="ratting-box">
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                            </div>
                                            <div class="price-box">
													<span class="pricebox-price">
														<span class="currency-symbol">£</span>80.00
													</span>
                                            </div>
                                        </div>
                                        <div class="product-item-content-right">
                                            <ul>
                                                <li><a class="quick-view-trigger" href="#" data-toggle="tooltip" title="Quick View"><i class="fa fa-eye"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="fa fa-heart"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!--// Single Product -->

                            <!-- Single Product -->
                            <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">
                                <div class="product-item">

                                    <div class="product-item-images">
                                        <a href="product-details-right-sidebar.html" class="product-item-image-inner">
                                            <img src="img/product/thumbnail-size/product-image-19.jpg" alt="product image">
                                            <img src="img/product/thumbnail-size/product-image-20.jpg" alt="product image">
                                        </a>
                                        <a href="cart.html" class="add-to-cart-button">
                                            <span>ADD TO CART</span>
                                        </a>
                                    </div>

                                    <div class="product-item-content">
                                        <div class="product-item-content-left">
                                            <h5><a href="product-details-right-sidebar.html">Pellentesque posuere</a></h5>
                                            <div class="ratting-box">
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                            </div>
                                            <div class="price-box">
													<span class="pricebox-price">
														<span class="currency-symbol">£</span>80.00
													</span>
                                            </div>
                                        </div>
                                        <div class="product-item-content-right">
                                            <ul>
                                                <li><a class="quick-view-trigger" href="#" data-toggle="tooltip" title="Quick View"><i class="fa fa-eye"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="fa fa-heart"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!--// Single Product -->

                            <!-- Single Product -->
                            <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">
                                <div class="product-item">

                                    <div class="product-item-images">
                                        <a href="product-details-right-sidebar.html" class="product-item-image-inner">
                                            <img src="img/product/thumbnail-size/product-image-4.jpg" alt="product image">
                                            <img src="img/product/thumbnail-size/product-image-6.jpg" alt="product image">
                                        </a>
                                        <a href="cart.html" class="add-to-cart-button">
                                            <span>ADD TO CART</span>
                                        </a>
                                    </div>

                                    <div class="product-item-content">
                                        <div class="product-item-content-left">
                                            <h5><a href="product-details-right-sidebar.html">Pellentesque posuere</a></h5>
                                            <div class="ratting-box">
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                            </div>
                                            <div class="price-box">
													<span class="pricebox-price">
														<span class="currency-symbol">£</span>80.00
													</span>
                                            </div>
                                        </div>
                                        <div class="product-item-content-right">
                                            <ul>
                                                <li><a class="quick-view-trigger" href="#" data-toggle="tooltip" title="Quick View"><i class="fa fa-eye"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="fa fa-heart"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!--// Single Product -->

                            <!-- Single Product -->
                            <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">
                                <div class="product-item">

                                    <div class="product-item-images">
                                        <a href="product-details-right-sidebar.html" class="product-item-image-inner">
                                            <img src="img/product/thumbnail-size/product-image-21.jpg" alt="product image">
                                        </a>
                                        <a href="cart.html" class="add-to-cart-button">
                                            <span>ADD TO CART</span>
                                        </a>
                                    </div>

                                    <div class="product-item-content">
                                        <div class="product-item-content-left">
                                            <h5><a href="product-details-right-sidebar.html">Pellentesque posuere</a></h5>
                                            <div class="ratting-box">
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                            </div>
                                            <div class="price-box">
													<span class="pricebox-price">
														<span class="currency-symbol">£</span>80.00
													</span>
                                            </div>
                                        </div>
                                        <div class="product-item-content-right">
                                            <ul>
                                                <li><a class="quick-view-trigger" href="#" data-toggle="tooltip" title="Quick View"><i class="fa fa-eye"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="fa fa-heart"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!--// Single Product -->

                            <!-- Single Product -->
                            <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">
                                <div class="product-item">

                                    <div class="product-item-images">
                                        <a href="product-details-right-sidebar.html" class="product-item-image-inner">
                                            <img src="img/product/thumbnail-size/product-image-23.jpg" alt="product image">
                                            <img src="img/product/thumbnail-size/product-image-1.jpg" alt="product image">
                                        </a>
                                        <a href="cart.html" class="add-to-cart-button">
                                            <span>ADD TO CART</span>
                                        </a>
                                    </div>

                                    <div class="product-item-content">
                                        <div class="product-item-content-left">
                                            <h5><a href="product-details-right-sidebar.html">Pellentesque posuere</a></h5>
                                            <div class="ratting-box">
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                            </div>
                                            <div class="price-box">
													<span class="pricebox-price">
														<span class="currency-symbol">£</span>80.00
													</span>
                                            </div>
                                        </div>
                                        <div class="product-item-content-right">
                                            <ul>
                                                <li><a class="quick-view-trigger" href="#" data-toggle="tooltip" title="Quick View"><i class="fa fa-eye"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="fa fa-heart"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!--// Single Product -->

                        </div>
                    </div>
                    <div class="tab-pane fade" id="products-of-mens" role="tabpanel" aria-labelledby="products-of-mens-tab">
                        <div class="row justify-content-center products-wrapper">

                            <!-- Single Product -->
                            <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">
                                <div class="product-item">

                                    <div class="product-item-images">
                                        <a href="product-details-right-sidebar.html" class="product-item-image-inner">
                                            <img src="img/product/thumbnail-size/product-image-7.jpg" alt="product image">
                                        </a>
                                        <a href="cart.html" class="add-to-cart-button">
                                            <span>ADD TO CART</span>
                                        </a>
                                    </div>

                                    <div class="product-item-content">
                                        <div class="product-item-content-left">
                                            <h5><a href="product-details-right-sidebar.html">Pellentesque posuere</a></h5>
                                            <div class="ratting-box">
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                            </div>
                                            <div class="price-box">
													<span class="pricebox-price">
														<span class="currency-symbol">£</span>80.00
													</span>
                                            </div>
                                        </div>
                                        <div class="product-item-content-right">
                                            <ul>
                                                <li><a class="quick-view-trigger" href="#" data-toggle="tooltip" title="Quick View"><i class="fa fa-eye"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="fa fa-heart"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!--// Single Product -->

                            <!-- Single Product -->
                            <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">
                                <div class="product-item">

                                    <div class="product-item-images">
                                        <a href="product-details-right-sidebar.html" class="product-item-image-inner">
                                            <img src="img/product/thumbnail-size/product-image-4.jpg" alt="product image">
                                            <img src="img/product/thumbnail-size/product-image-8.jpg" alt="product image">
                                        </a>
                                        <a href="cart.html" class="add-to-cart-button">
                                            <span>ADD TO CART</span>
                                        </a>
                                    </div>

                                    <div class="product-item-content">
                                        <div class="product-item-content-left">
                                            <h5><a href="product-details-right-sidebar.html">Pellentesque posuere</a></h5>
                                            <div class="ratting-box">
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                            </div>
                                            <div class="price-box">
													<span class="pricebox-price">
														<span class="currency-symbol">£</span>80.00
													</span>
                                            </div>
                                        </div>
                                        <div class="product-item-content-right">
                                            <ul>
                                                <li><a class="quick-view-trigger" href="#" data-toggle="tooltip" title="Quick View"><i class="fa fa-eye"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="fa fa-heart"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!--// Single Product -->

                            <!-- Single Product -->
                            <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">
                                <div class="product-item">

                                    <div class="product-item-images">
                                        <a href="product-details-right-sidebar.html" class="product-item-image-inner">
                                            <img src="img/product/thumbnail-size/product-image-9.jpg" alt="product image">
                                            <img src="img/product/thumbnail-size/product-image-10.jpg" alt="product image">
                                        </a>
                                        <a href="cart.html" class="add-to-cart-button">
                                            <span>ADD TO CART</span>
                                        </a>
                                    </div>

                                    <div class="product-item-content">
                                        <div class="product-item-content-left">
                                            <h5><a href="product-details-right-sidebar.html">Pellentesque posuere</a></h5>
                                            <div class="ratting-box">
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                            </div>
                                            <div class="price-box">
													<span class="pricebox-price">
														<span class="currency-symbol">£</span>80.00
													</span>
                                            </div>
                                        </div>
                                        <div class="product-item-content-right">
                                            <ul>
                                                <li><a class="quick-view-trigger" href="#" data-toggle="tooltip" title="Quick View"><i class="fa fa-eye"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="fa fa-heart"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!--// Single Product -->

                            <!-- Single Product -->
                            <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">
                                <div class="product-item">

                                    <div class="product-item-images">
                                        <a href="product-details-right-sidebar.html" class="product-item-image-inner">
                                            <img src="img/product/thumbnail-size/product-image-11.jpg" alt="product image">
                                        </a>
                                        <a href="cart.html" class="add-to-cart-button">
                                            <span>ADD TO CART</span>
                                        </a>
                                    </div>

                                    <div class="product-item-content">
                                        <div class="product-item-content-left">
                                            <h5><a href="product-details-right-sidebar.html">Pellentesque posuere</a></h5>
                                            <div class="ratting-box">
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                            </div>
                                            <div class="price-box">
													<span class="pricebox-price">
														<span class="currency-symbol">£</span>80.00
													</span>
                                            </div>
                                        </div>
                                        <div class="product-item-content-right">
                                            <ul>
                                                <li><a class="quick-view-trigger" href="#" data-toggle="tooltip" title="Quick View"><i class="fa fa-eye"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="fa fa-heart"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!--// Single Product -->

                            <!-- Single Product -->
                            <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">
                                <div class="product-item">

                                    <div class="product-item-images">
                                        <a href="product-details-right-sidebar.html" class="product-item-image-inner">
                                            <img src="img/product/thumbnail-size/product-image-12.jpg" alt="product image">
                                            <img src="img/product/thumbnail-size/product-image-13.jpg" alt="product image">
                                        </a>
                                        <a href="cart.html" class="add-to-cart-button">
                                            <span>ADD TO CART</span>
                                        </a>
                                    </div>

                                    <div class="product-item-content">
                                        <div class="product-item-content-left">
                                            <h5><a href="product-details-right-sidebar.html">Pellentesque posuere</a></h5>
                                            <div class="ratting-box">
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                            </div>
                                            <div class="price-box">
													<span class="pricebox-price">
														<span class="currency-symbol">£</span>80.00
													</span>
                                            </div>
                                        </div>
                                        <div class="product-item-content-right">
                                            <ul>
                                                <li><a class="quick-view-trigger" href="#" data-toggle="tooltip" title="Quick View"><i class="fa fa-eye"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="fa fa-heart"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!--// Single Product -->

                            <!-- Single Product -->
                            <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">
                                <div class="product-item">

                                    <div class="product-item-images">
                                        <a href="product-details-right-sidebar.html" class="product-item-image-inner">
                                            <img src="img/product/thumbnail-size/product-image-14.jpg" alt="product image">
                                        </a>
                                        <a href="cart.html" class="add-to-cart-button">
                                            <span>ADD TO CART</span>
                                        </a>
                                    </div>

                                    <div class="product-item-content">
                                        <div class="product-item-content-left">
                                            <h5><a href="product-details-right-sidebar.html">Pellentesque posuere</a></h5>
                                            <div class="ratting-box">
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                            </div>
                                            <div class="price-box">
													<span class="pricebox-price">
														<span class="currency-symbol">£</span>80.00
													</span>
                                            </div>
                                        </div>
                                        <div class="product-item-content-right">
                                            <ul>
                                                <li><a class="quick-view-trigger" href="#" data-toggle="tooltip" title="Quick View"><i class="fa fa-eye"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="fa fa-heart"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!--// Single Product -->

                            <!-- Single Product -->
                            <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">
                                <div class="product-item">

                                    <div class="product-item-images">
                                        <a href="product-details-right-sidebar.html" class="product-item-image-inner">
                                            <img src="img/product/thumbnail-size/product-image-15.jpg" alt="product image">
                                            <img src="img/product/thumbnail-size/product-image-16.jpg" alt="product image">
                                        </a>
                                        <a href="cart.html" class="add-to-cart-button">
                                            <span>ADD TO CART</span>
                                        </a>
                                    </div>

                                    <div class="product-item-content">
                                        <div class="product-item-content-left">
                                            <h5><a href="product-details-right-sidebar.html">Pellentesque posuere</a></h5>
                                            <div class="ratting-box">
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                            </div>
                                            <div class="price-box">
													<span class="pricebox-price">
														<span class="currency-symbol">£</span>80.00
													</span>
                                            </div>
                                        </div>
                                        <div class="product-item-content-right">
                                            <ul>
                                                <li><a class="quick-view-trigger" href="#" data-toggle="tooltip" title="Quick View"><i class="fa fa-eye"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="fa fa-heart"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!--// Single Product -->

                            <!-- Single Product -->
                            <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">
                                <div class="product-item">

                                    <div class="product-item-images">
                                        <a href="product-details-right-sidebar.html" class="product-item-image-inner">
                                            <img src="img/product/thumbnail-size/product-image-17.jpg" alt="product image">
                                        </a>
                                        <a href="cart.html" class="add-to-cart-button">
                                            <span>ADD TO CART</span>
                                        </a>
                                    </div>

                                    <div class="product-item-content">
                                        <div class="product-item-content-left">
                                            <h5><a href="product-details-right-sidebar.html">Pellentesque posuere</a></h5>
                                            <div class="ratting-box">
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                            </div>
                                            <div class="price-box">
													<span class="pricebox-price">
														<span class="currency-symbol">£</span>80.00
													</span>
                                            </div>
                                        </div>
                                        <div class="product-item-content-right">
                                            <ul>
                                                <li><a class="quick-view-trigger" href="#" data-toggle="tooltip" title="Quick View"><i class="fa fa-eye"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="fa fa-heart"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!--// Single Product -->

                            <!-- Single Product -->
                            <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">
                                <div class="product-item">

                                    <div class="product-item-images">
                                        <a href="product-details-right-sidebar.html" class="product-item-image-inner">
                                            <img src="img/product/thumbnail-size/product-image-18.jpg" alt="product image">
                                        </a>
                                        <a href="cart.html" class="add-to-cart-button">
                                            <span>ADD TO CART</span>
                                        </a>
                                    </div>

                                    <div class="product-item-content">
                                        <div class="product-item-content-left">
                                            <h5><a href="product-details-right-sidebar.html">Pellentesque posuere</a></h5>
                                            <div class="ratting-box">
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                            </div>
                                            <div class="price-box">
													<span class="pricebox-price">
														<span class="currency-symbol">£</span>80.00
													</span>
                                            </div>
                                        </div>
                                        <div class="product-item-content-right">
                                            <ul>
                                                <li><a class="quick-view-trigger" href="#" data-toggle="tooltip" title="Quick View"><i class="fa fa-eye"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="fa fa-heart"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!--// Single Product -->

                            <!-- Single Product -->
                            <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">
                                <div class="product-item">

                                    <div class="product-item-images">
                                        <a href="product-details-right-sidebar.html" class="product-item-image-inner">
                                            <img src="img/product/thumbnail-size/product-image-19.jpg" alt="product image">
                                            <img src="img/product/thumbnail-size/product-image-20.jpg" alt="product image">
                                        </a>
                                        <a href="cart.html" class="add-to-cart-button">
                                            <span>ADD TO CART</span>
                                        </a>
                                    </div>

                                    <div class="product-item-content">
                                        <div class="product-item-content-left">
                                            <h5><a href="product-details-right-sidebar.html">Pellentesque posuere</a></h5>
                                            <div class="ratting-box">
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                            </div>
                                            <div class="price-box">
													<span class="pricebox-price">
														<span class="currency-symbol">£</span>80.00
													</span>
                                            </div>
                                        </div>
                                        <div class="product-item-content-right">
                                            <ul>
                                                <li><a class="quick-view-trigger" href="#" data-toggle="tooltip" title="Quick View"><i class="fa fa-eye"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="fa fa-heart"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!--// Single Product -->

                            <!-- Single Product -->
                            <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">
                                <div class="product-item">

                                    <div class="product-item-images">
                                        <a href="product-details-right-sidebar.html" class="product-item-image-inner">
                                            <img src="img/product/thumbnail-size/product-image-4.jpg" alt="product image">
                                            <img src="img/product/thumbnail-size/product-image-6.jpg" alt="product image">
                                        </a>
                                        <a href="cart.html" class="add-to-cart-button">
                                            <span>ADD TO CART</span>
                                        </a>
                                    </div>

                                    <div class="product-item-content">
                                        <div class="product-item-content-left">
                                            <h5><a href="product-details-right-sidebar.html">Pellentesque posuere</a></h5>
                                            <div class="ratting-box">
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                            </div>
                                            <div class="price-box">
													<span class="pricebox-price">
														<span class="currency-symbol">£</span>80.00
													</span>
                                            </div>
                                        </div>
                                        <div class="product-item-content-right">
                                            <ul>
                                                <li><a class="quick-view-trigger" href="#" data-toggle="tooltip" title="Quick View"><i class="fa fa-eye"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="fa fa-heart"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!--// Single Product -->

                            <!-- Single Product -->
                            <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">
                                <div class="product-item">

                                    <div class="product-item-images">
                                        <a href="product-details-right-sidebar.html" class="product-item-image-inner">
                                            <img src="img/product/thumbnail-size/product-image-21.jpg" alt="product image">
                                        </a>
                                        <a href="cart.html" class="add-to-cart-button">
                                            <span>ADD TO CART</span>
                                        </a>
                                    </div>

                                    <div class="product-item-content">
                                        <div class="product-item-content-left">
                                            <h5><a href="product-details-right-sidebar.html">Pellentesque posuere</a></h5>
                                            <div class="ratting-box">
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                            </div>
                                            <div class="price-box">
													<span class="pricebox-price">
														<span class="currency-symbol">£</span>80.00
													</span>
                                            </div>
                                        </div>
                                        <div class="product-item-content-right">
                                            <ul>
                                                <li><a class="quick-view-trigger" href="#" data-toggle="tooltip" title="Quick View"><i class="fa fa-eye"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="fa fa-heart"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!--// Single Product -->

                            <!-- Single Product -->
                            <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">
                                <div class="product-item">

                                    <div class="product-item-images">
                                        <a href="product-details-right-sidebar.html" class="product-item-image-inner">
                                            <img src="img/product/thumbnail-size/product-image-23.jpg" alt="product image">
                                            <img src="img/product/thumbnail-size/product-image-1.jpg" alt="product image">
                                        </a>
                                        <a href="cart.html" class="add-to-cart-button">
                                            <span>ADD TO CART</span>
                                        </a>
                                    </div>

                                    <div class="product-item-content">
                                        <div class="product-item-content-left">
                                            <h5><a href="product-details-right-sidebar.html">Pellentesque posuere</a></h5>
                                            <div class="ratting-box">
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                            </div>
                                            <div class="price-box">
													<span class="pricebox-price">
														<span class="currency-symbol">£</span>80.00
													</span>
                                            </div>
                                        </div>
                                        <div class="product-item-content-right">
                                            <ul>
                                                <li><a class="quick-view-trigger" href="#" data-toggle="tooltip" title="Quick View"><i class="fa fa-eye"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="fa fa-heart"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!--// Single Product -->

                            <!-- Single Product -->
                            <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">
                                <div class="product-item">

                                    <div class="product-item-images">
                                        <a href="product-details-right-sidebar.html" class="product-item-image-inner">
                                            <img src="img/product/thumbnail-size/product-image-1.jpg" alt="product image">
                                            <img src="img/product/thumbnail-size/product-image-2.jpg" alt="product image">
                                        </a>
                                        <a href="cart.html" class="add-to-cart-button">
                                            <span>ADD TO CART</span>
                                        </a>
                                    </div>

                                    <div class="product-item-content">
                                        <div class="product-item-content-left">
                                            <h5><a href="product-details-right-sidebar.html">Vulputate justo</a></h5>
                                            <div class="ratting-box">
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                            </div>
                                            <div class="price-box">
													<span class="pricebox-price">
														<span class="currency-symbol">£</span>80.00
													</span>
                                            </div>
                                        </div>
                                        <div class="product-item-content-right">
                                            <ul>
                                                <li><a class="quick-view-trigger" href="#" data-toggle="tooltip" title="Quick View"><i class="fa fa-eye"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="fa fa-heart"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!--// Single Product -->

                            <!-- Single Product -->
                            <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">
                                <div class="product-item">

                                    <div class="product-item-images">
                                        <a href="product-details-right-sidebar.html" class="product-item-image-inner">
                                            <img src="img/product/thumbnail-size/product-image-3.jpg" alt="product image">
                                        </a>
                                        <a href="cart.html" class="add-to-cart-button">
                                            <span>ADD TO CART</span>
                                        </a>
                                    </div>

                                    <div class="product-item-content">
                                        <div class="product-item-content-left">
                                            <h5><a href="product-details-right-sidebar.html">Vestibulum suscipit</a></h5>
                                            <div class="ratting-box">
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                            </div>
                                            <div class="price-box">
													<span class="pricebox-price">
														<span class="currency-symbol">£</span>80.00
													</span>
                                            </div>
                                        </div>
                                        <div class="product-item-content-right">
                                            <ul>
                                                <li><a class="quick-view-trigger" href="#" data-toggle="tooltip" title="Quick View"><i class="fa fa-eye"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="fa fa-heart"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!--// Single Product -->

                            <!-- Single Product -->
                            <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">
                                <div class="product-item">

                                    <div class="product-item-images">
                                        <a href="product-details-right-sidebar.html" class="product-item-image-inner">
                                            <img src="img/product/thumbnail-size/product-image-5.jpg" alt="product image">
                                            <img src="img/product/thumbnail-size/product-image-6.jpg" alt="product image">
                                        </a>
                                        <a href="cart.html" class="add-to-cart-button">
                                            <span>ADD TO CART</span>
                                        </a>
                                    </div>

                                    <div class="product-item-content">
                                        <div class="product-item-content-left">
                                            <h5><a href="product-details-right-sidebar.html">Phasellus vel hendrerit</a></h5>
                                            <div class="ratting-box">
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                            </div>
                                            <div class="price-box">
													<span class="pricebox-price">
														<span class="currency-symbol">£</span>80.00
													</span>
                                            </div>
                                        </div>
                                        <div class="product-item-content-right">
                                            <ul>
                                                <li><a class="quick-view-trigger" href="#" data-toggle="tooltip" title="Quick View"><i class="fa fa-eye"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="fa fa-heart"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!--// Single Product -->

                        </div>
                    </div>
                    <div class="tab-pane fade" id="products-of-womens" role="tabpanel" aria-labelledby="products-of-womens-tab">
                        <div class="row justify-content-center products-wrapper">

                            <!-- Single Product -->
                            <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">
                                <div class="product-item">

                                    <div class="product-item-images">
                                        <a href="product-details-right-sidebar.html" class="product-item-image-inner">
                                            <img src="img/product/thumbnail-size/product-image-11.jpg" alt="product image">
                                        </a>
                                        <a href="cart.html" class="add-to-cart-button">
                                            <span>ADD TO CART</span>
                                        </a>
                                    </div>

                                    <div class="product-item-content">
                                        <div class="product-item-content-left">
                                            <h5><a href="product-details-right-sidebar.html">Pellentesque posuere</a></h5>
                                            <div class="ratting-box">
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                            </div>
                                            <div class="price-box">
													<span class="pricebox-price">
														<span class="currency-symbol">£</span>80.00
													</span>
                                            </div>
                                        </div>
                                        <div class="product-item-content-right">
                                            <ul>
                                                <li><a class="quick-view-trigger" href="#" data-toggle="tooltip" title="Quick View"><i class="fa fa-eye"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="fa fa-heart"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!--// Single Product -->

                            <!-- Single Product -->
                            <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">
                                <div class="product-item">

                                    <div class="product-item-images">
                                        <a href="product-details-right-sidebar.html" class="product-item-image-inner">
                                            <img src="img/product/thumbnail-size/product-image-12.jpg" alt="product image">
                                            <img src="img/product/thumbnail-size/product-image-13.jpg" alt="product image">
                                        </a>
                                        <a href="cart.html" class="add-to-cart-button">
                                            <span>ADD TO CART</span>
                                        </a>
                                    </div>

                                    <div class="product-item-content">
                                        <div class="product-item-content-left">
                                            <h5><a href="product-details-right-sidebar.html">Pellentesque posuere</a></h5>
                                            <div class="ratting-box">
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                            </div>
                                            <div class="price-box">
													<span class="pricebox-price">
														<span class="currency-symbol">£</span>80.00
													</span>
                                            </div>
                                        </div>
                                        <div class="product-item-content-right">
                                            <ul>
                                                <li><a class="quick-view-trigger" href="#" data-toggle="tooltip" title="Quick View"><i class="fa fa-eye"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="fa fa-heart"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!--// Single Product -->

                            <!-- Single Product -->
                            <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">
                                <div class="product-item">

                                    <div class="product-item-images">
                                        <a href="product-details-right-sidebar.html" class="product-item-image-inner">
                                            <img src="img/product/thumbnail-size/product-image-14.jpg" alt="product image">
                                        </a>
                                        <a href="cart.html" class="add-to-cart-button">
                                            <span>ADD TO CART</span>
                                        </a>
                                    </div>

                                    <div class="product-item-content">
                                        <div class="product-item-content-left">
                                            <h5><a href="product-details-right-sidebar.html">Pellentesque posuere</a></h5>
                                            <div class="ratting-box">
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                            </div>
                                            <div class="price-box">
													<span class="pricebox-price">
														<span class="currency-symbol">£</span>80.00
													</span>
                                            </div>
                                        </div>
                                        <div class="product-item-content-right">
                                            <ul>
                                                <li><a class="quick-view-trigger" href="#" data-toggle="tooltip" title="Quick View"><i class="fa fa-eye"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="fa fa-heart"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!--// Single Product -->

                            <!-- Single Product -->
                            <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">
                                <div class="product-item">

                                    <div class="product-item-images">
                                        <a href="product-details-right-sidebar.html" class="product-item-image-inner">
                                            <img src="img/product/thumbnail-size/product-image-15.jpg" alt="product image">
                                            <img src="img/product/thumbnail-size/product-image-16.jpg" alt="product image">
                                        </a>
                                        <a href="cart.html" class="add-to-cart-button">
                                            <span>ADD TO CART</span>
                                        </a>
                                    </div>

                                    <div class="product-item-content">
                                        <div class="product-item-content-left">
                                            <h5><a href="product-details-right-sidebar.html">Pellentesque posuere</a></h5>
                                            <div class="ratting-box">
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                            </div>
                                            <div class="price-box">
													<span class="pricebox-price">
														<span class="currency-symbol">£</span>80.00
													</span>
                                            </div>
                                        </div>
                                        <div class="product-item-content-right">
                                            <ul>
                                                <li><a class="quick-view-trigger" href="#" data-toggle="tooltip" title="Quick View"><i class="fa fa-eye"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="fa fa-heart"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!--// Single Product -->

                            <!-- Single Product -->
                            <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">
                                <div class="product-item">

                                    <div class="product-item-images">
                                        <a href="product-details-right-sidebar.html" class="product-item-image-inner">
                                            <img src="img/product/thumbnail-size/product-image-17.jpg" alt="product image">
                                        </a>
                                        <a href="cart.html" class="add-to-cart-button">
                                            <span>ADD TO CART</span>
                                        </a>
                                    </div>

                                    <div class="product-item-content">
                                        <div class="product-item-content-left">
                                            <h5><a href="product-details-right-sidebar.html">Pellentesque posuere</a></h5>
                                            <div class="ratting-box">
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                            </div>
                                            <div class="price-box">
													<span class="pricebox-price">
														<span class="currency-symbol">£</span>80.00
													</span>
                                            </div>
                                        </div>
                                        <div class="product-item-content-right">
                                            <ul>
                                                <li><a class="quick-view-trigger" href="#" data-toggle="tooltip" title="Quick View"><i class="fa fa-eye"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="fa fa-heart"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!--// Single Product -->

                            <!-- Single Product -->
                            <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">
                                <div class="product-item">

                                    <div class="product-item-images">
                                        <a href="product-details-right-sidebar.html" class="product-item-image-inner">
                                            <img src="img/product/thumbnail-size/product-image-18.jpg" alt="product image">
                                        </a>
                                        <a href="cart.html" class="add-to-cart-button">
                                            <span>ADD TO CART</span>
                                        </a>
                                    </div>

                                    <div class="product-item-content">
                                        <div class="product-item-content-left">
                                            <h5><a href="product-details-right-sidebar.html">Pellentesque posuere</a></h5>
                                            <div class="ratting-box">
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                            </div>
                                            <div class="price-box">
													<span class="pricebox-price">
														<span class="currency-symbol">£</span>80.00
													</span>
                                            </div>
                                        </div>
                                        <div class="product-item-content-right">
                                            <ul>
                                                <li><a class="quick-view-trigger" href="#" data-toggle="tooltip" title="Quick View"><i class="fa fa-eye"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="fa fa-heart"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!--// Single Product -->

                            <!-- Single Product -->
                            <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">
                                <div class="product-item">

                                    <div class="product-item-images">
                                        <a href="product-details-right-sidebar.html" class="product-item-image-inner">
                                            <img src="img/product/thumbnail-size/product-image-19.jpg" alt="product image">
                                            <img src="img/product/thumbnail-size/product-image-20.jpg" alt="product image">
                                        </a>
                                        <a href="cart.html" class="add-to-cart-button">
                                            <span>ADD TO CART</span>
                                        </a>
                                    </div>

                                    <div class="product-item-content">
                                        <div class="product-item-content-left">
                                            <h5><a href="product-details-right-sidebar.html">Pellentesque posuere</a></h5>
                                            <div class="ratting-box">
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                            </div>
                                            <div class="price-box">
													<span class="pricebox-price">
														<span class="currency-symbol">£</span>80.00
													</span>
                                            </div>
                                        </div>
                                        <div class="product-item-content-right">
                                            <ul>
                                                <li><a class="quick-view-trigger" href="#" data-toggle="tooltip" title="Quick View"><i class="fa fa-eye"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="fa fa-heart"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!--// Single Product -->

                            <!-- Single Product -->
                            <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">
                                <div class="product-item">

                                    <div class="product-item-images">
                                        <a href="product-details-right-sidebar.html" class="product-item-image-inner">
                                            <img src="img/product/thumbnail-size/product-image-4.jpg" alt="product image">
                                            <img src="img/product/thumbnail-size/product-image-6.jpg" alt="product image">
                                        </a>
                                        <a href="cart.html" class="add-to-cart-button">
                                            <span>ADD TO CART</span>
                                        </a>
                                    </div>

                                    <div class="product-item-content">
                                        <div class="product-item-content-left">
                                            <h5><a href="product-details-right-sidebar.html">Pellentesque posuere</a></h5>
                                            <div class="ratting-box">
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                            </div>
                                            <div class="price-box">
													<span class="pricebox-price">
														<span class="currency-symbol">£</span>80.00
													</span>
                                            </div>
                                        </div>
                                        <div class="product-item-content-right">
                                            <ul>
                                                <li><a class="quick-view-trigger" href="#" data-toggle="tooltip" title="Quick View"><i class="fa fa-eye"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="fa fa-heart"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!--// Single Product -->

                            <!-- Single Product -->
                            <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">
                                <div class="product-item">

                                    <div class="product-item-images">
                                        <a href="product-details-right-sidebar.html" class="product-item-image-inner">
                                            <img src="img/product/thumbnail-size/product-image-21.jpg" alt="product image">
                                        </a>
                                        <a href="cart.html" class="add-to-cart-button">
                                            <span>ADD TO CART</span>
                                        </a>
                                    </div>

                                    <div class="product-item-content">
                                        <div class="product-item-content-left">
                                            <h5><a href="product-details-right-sidebar.html">Pellentesque posuere</a></h5>
                                            <div class="ratting-box">
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                            </div>
                                            <div class="price-box">
													<span class="pricebox-price">
														<span class="currency-symbol">£</span>80.00
													</span>
                                            </div>
                                        </div>
                                        <div class="product-item-content-right">
                                            <ul>
                                                <li><a class="quick-view-trigger" href="#" data-toggle="tooltip" title="Quick View"><i class="fa fa-eye"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="fa fa-heart"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!--// Single Product -->

                            <!-- Single Product -->
                            <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">
                                <div class="product-item">

                                    <div class="product-item-images">
                                        <a href="product-details-right-sidebar.html" class="product-item-image-inner">
                                            <img src="img/product/thumbnail-size/product-image-23.jpg" alt="product image">
                                            <img src="img/product/thumbnail-size/product-image-1.jpg" alt="product image">
                                        </a>
                                        <a href="cart.html" class="add-to-cart-button">
                                            <span>ADD TO CART</span>
                                        </a>
                                    </div>

                                    <div class="product-item-content">
                                        <div class="product-item-content-left">
                                            <h5><a href="product-details-right-sidebar.html">Pellentesque posuere</a></h5>
                                            <div class="ratting-box">
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                            </div>
                                            <div class="price-box">
													<span class="pricebox-price">
														<span class="currency-symbol">£</span>80.00
													</span>
                                            </div>
                                        </div>
                                        <div class="product-item-content-right">
                                            <ul>
                                                <li><a class="quick-view-trigger" href="#" data-toggle="tooltip" title="Quick View"><i class="fa fa-eye"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="fa fa-heart"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!--// Single Product -->

                            <!-- Single Product -->
                            <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">
                                <div class="product-item">

                                    <div class="product-item-images">
                                        <a href="product-details-right-sidebar.html" class="product-item-image-inner">
                                            <img src="img/product/thumbnail-size/product-image-1.jpg" alt="product image">
                                            <img src="img/product/thumbnail-size/product-image-2.jpg" alt="product image">
                                        </a>
                                        <a href="cart.html" class="add-to-cart-button">
                                            <span>ADD TO CART</span>
                                        </a>
                                    </div>

                                    <div class="product-item-content">
                                        <div class="product-item-content-left">
                                            <h5><a href="product-details-right-sidebar.html">Vulputate justo</a></h5>
                                            <div class="ratting-box">
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                            </div>
                                            <div class="price-box">
													<span class="pricebox-price">
														<span class="currency-symbol">£</span>80.00
													</span>
                                            </div>
                                        </div>
                                        <div class="product-item-content-right">
                                            <ul>
                                                <li><a class="quick-view-trigger" href="#" data-toggle="tooltip" title="Quick View"><i class="fa fa-eye"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="fa fa-heart"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!--// Single Product -->

                            <!-- Single Product -->
                            <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">
                                <div class="product-item">

                                    <div class="product-item-images">
                                        <a href="product-details-right-sidebar.html" class="product-item-image-inner">
                                            <img src="img/product/thumbnail-size/product-image-3.jpg" alt="product image">
                                        </a>
                                        <a href="cart.html" class="add-to-cart-button">
                                            <span>ADD TO CART</span>
                                        </a>
                                    </div>

                                    <div class="product-item-content">
                                        <div class="product-item-content-left">
                                            <h5><a href="product-details-right-sidebar.html">Vestibulum suscipit</a></h5>
                                            <div class="ratting-box">
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                            </div>
                                            <div class="price-box">
													<span class="pricebox-price">
														<span class="currency-symbol">£</span>80.00
													</span>
                                            </div>
                                        </div>
                                        <div class="product-item-content-right">
                                            <ul>
                                                <li><a class="quick-view-trigger" href="#" data-toggle="tooltip" title="Quick View"><i class="fa fa-eye"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="fa fa-heart"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!--// Single Product -->

                            <!-- Single Product -->
                            <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">
                                <div class="product-item">

                                    <div class="product-item-images">
                                        <a href="product-details-right-sidebar.html" class="product-item-image-inner">
                                            <img src="img/product/thumbnail-size/product-image-5.jpg" alt="product image">
                                            <img src="img/product/thumbnail-size/product-image-6.jpg" alt="product image">
                                        </a>
                                        <a href="cart.html" class="add-to-cart-button">
                                            <span>ADD TO CART</span>
                                        </a>
                                    </div>

                                    <div class="product-item-content">
                                        <div class="product-item-content-left">
                                            <h5><a href="product-details-right-sidebar.html">Phasellus vel hendrerit</a></h5>
                                            <div class="ratting-box">
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                            </div>
                                            <div class="price-box">
													<span class="pricebox-price">
														<span class="currency-symbol">£</span>80.00
													</span>
                                            </div>
                                        </div>
                                        <div class="product-item-content-right">
                                            <ul>
                                                <li><a class="quick-view-trigger" href="#" data-toggle="tooltip" title="Quick View"><i class="fa fa-eye"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="fa fa-heart"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!--// Single Product -->

                            <!-- Single Product -->
                            <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">
                                <div class="product-item">

                                    <div class="product-item-images">
                                        <a href="product-details-right-sidebar.html" class="product-item-image-inner">
                                            <img src="img/product/thumbnail-size/product-image-7.jpg" alt="product image">
                                        </a>
                                        <a href="cart.html" class="add-to-cart-button">
                                            <span>ADD TO CART</span>
                                        </a>
                                    </div>

                                    <div class="product-item-content">
                                        <div class="product-item-content-left">
                                            <h5><a href="product-details-right-sidebar.html">Pellentesque posuere</a></h5>
                                            <div class="ratting-box">
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                            </div>
                                            <div class="price-box">
													<span class="pricebox-price">
														<span class="currency-symbol">£</span>80.00
													</span>
                                            </div>
                                        </div>
                                        <div class="product-item-content-right">
                                            <ul>
                                                <li><a class="quick-view-trigger" href="#" data-toggle="tooltip" title="Quick View"><i class="fa fa-eye"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="fa fa-heart"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!--// Single Product -->

                            <!-- Single Product -->
                            <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">
                                <div class="product-item">

                                    <div class="product-item-images">
                                        <a href="product-details-right-sidebar.html" class="product-item-image-inner">
                                            <img src="img/product/thumbnail-size/product-image-4.jpg" alt="product image">
                                            <img src="img/product/thumbnail-size/product-image-8.jpg" alt="product image">
                                        </a>
                                        <a href="cart.html" class="add-to-cart-button">
                                            <span>ADD TO CART</span>
                                        </a>
                                    </div>

                                    <div class="product-item-content">
                                        <div class="product-item-content-left">
                                            <h5><a href="product-details-right-sidebar.html">Pellentesque posuere</a></h5>
                                            <div class="ratting-box">
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                            </div>
                                            <div class="price-box">
													<span class="pricebox-price">
														<span class="currency-symbol">£</span>80.00
													</span>
                                            </div>
                                        </div>
                                        <div class="product-item-content-right">
                                            <ul>
                                                <li><a class="quick-view-trigger" href="#" data-toggle="tooltip" title="Quick View"><i class="fa fa-eye"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="fa fa-heart"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!--// Single Product -->

                            <!-- Single Product -->
                            <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">
                                <div class="product-item">

                                    <div class="product-item-images">
                                        <a href="product-details-right-sidebar.html" class="product-item-image-inner">
                                            <img src="img/product/thumbnail-size/product-image-9.jpg" alt="product image">
                                            <img src="img/product/thumbnail-size/product-image-10.jpg" alt="product image">
                                        </a>
                                        <a href="cart.html" class="add-to-cart-button">
                                            <span>ADD TO CART</span>
                                        </a>
                                    </div>

                                    <div class="product-item-content">
                                        <div class="product-item-content-left">
                                            <h5><a href="product-details-right-sidebar.html">Pellentesque posuere</a></h5>
                                            <div class="ratting-box">
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                            </div>
                                            <div class="price-box">
													<span class="pricebox-price">
														<span class="currency-symbol">£</span>80.00
													</span>
                                            </div>
                                        </div>
                                        <div class="product-item-content-right">
                                            <ul>
                                                <li><a class="quick-view-trigger" href="#" data-toggle="tooltip" title="Quick View"><i class="fa fa-eye"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="fa fa-heart"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!--// Single Product -->

                        </div>
                    </div>
                    <div class="tab-pane fade" id="products-of-kids" role="tabpanel" aria-labelledby="products-of-kids-tab">
                        <div class="row justify-content-center products-wrapper">

                            <!-- Single Product -->
                            <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">
                                <div class="product-item">

                                    <div class="product-item-images">
                                        <a href="product-details-right-sidebar.html" class="product-item-image-inner">
                                            <img src="img/product/thumbnail-size/product-image-21.jpg" alt="product image">
                                        </a>
                                        <a href="cart.html" class="add-to-cart-button">
                                            <span>ADD TO CART</span>
                                        </a>
                                    </div>

                                    <div class="product-item-content">
                                        <div class="product-item-content-left">
                                            <h5><a href="product-details-right-sidebar.html">Pellentesque posuere</a></h5>
                                            <div class="ratting-box">
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                            </div>
                                            <div class="price-box">
													<span class="pricebox-price">
														<span class="currency-symbol">£</span>80.00
													</span>
                                            </div>
                                        </div>
                                        <div class="product-item-content-right">
                                            <ul>
                                                <li><a class="quick-view-trigger" href="#" data-toggle="tooltip" title="Quick View"><i class="fa fa-eye"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="fa fa-heart"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!--// Single Product -->

                            <!-- Single Product -->
                            <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">
                                <div class="product-item">

                                    <div class="product-item-images">
                                        <a href="product-details-right-sidebar.html" class="product-item-image-inner">
                                            <img src="img/product/thumbnail-size/product-image-23.jpg" alt="product image">
                                            <img src="img/product/thumbnail-size/product-image-1.jpg" alt="product image">
                                        </a>
                                        <a href="cart.html" class="add-to-cart-button">
                                            <span>ADD TO CART</span>
                                        </a>
                                    </div>

                                    <div class="product-item-content">
                                        <div class="product-item-content-left">
                                            <h5><a href="product-details-right-sidebar.html">Pellentesque posuere</a></h5>
                                            <div class="ratting-box">
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                            </div>
                                            <div class="price-box">
													<span class="pricebox-price">
														<span class="currency-symbol">£</span>80.00
													</span>
                                            </div>
                                        </div>
                                        <div class="product-item-content-right">
                                            <ul>
                                                <li><a class="quick-view-trigger" href="#" data-toggle="tooltip" title="Quick View"><i class="fa fa-eye"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="fa fa-heart"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!--// Single Product -->

                            <!-- Single Product -->
                            <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">
                                <div class="product-item">

                                    <div class="product-item-images">
                                        <a href="product-details-right-sidebar.html" class="product-item-image-inner">
                                            <img src="img/product/thumbnail-size/product-image-1.jpg" alt="product image">
                                            <img src="img/product/thumbnail-size/product-image-2.jpg" alt="product image">
                                        </a>
                                        <a href="cart.html" class="add-to-cart-button">
                                            <span>ADD TO CART</span>
                                        </a>
                                    </div>

                                    <div class="product-item-content">
                                        <div class="product-item-content-left">
                                            <h5><a href="product-details-right-sidebar.html">Vulputate justo</a></h5>
                                            <div class="ratting-box">
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                            </div>
                                            <div class="price-box">
													<span class="pricebox-price">
														<span class="currency-symbol">£</span>80.00
													</span>
                                            </div>
                                        </div>
                                        <div class="product-item-content-right">
                                            <ul>
                                                <li><a class="quick-view-trigger" href="#" data-toggle="tooltip" title="Quick View"><i class="fa fa-eye"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="fa fa-heart"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!--// Single Product -->

                            <!-- Single Product -->
                            <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">
                                <div class="product-item">

                                    <div class="product-item-images">
                                        <a href="product-details-right-sidebar.html" class="product-item-image-inner">
                                            <img src="img/product/thumbnail-size/product-image-11.jpg" alt="product image">
                                        </a>
                                        <a href="cart.html" class="add-to-cart-button">
                                            <span>ADD TO CART</span>
                                        </a>
                                    </div>

                                    <div class="product-item-content">
                                        <div class="product-item-content-left">
                                            <h5><a href="product-details-right-sidebar.html">Pellentesque posuere</a></h5>
                                            <div class="ratting-box">
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                            </div>
                                            <div class="price-box">
													<span class="pricebox-price">
														<span class="currency-symbol">£</span>80.00
													</span>
                                            </div>
                                        </div>
                                        <div class="product-item-content-right">
                                            <ul>
                                                <li><a class="quick-view-trigger" href="#" data-toggle="tooltip" title="Quick View"><i class="fa fa-eye"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="fa fa-heart"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!--// Single Product -->

                            <!-- Single Product -->
                            <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">
                                <div class="product-item">

                                    <div class="product-item-images">
                                        <a href="product-details-right-sidebar.html" class="product-item-image-inner">
                                            <img src="img/product/thumbnail-size/product-image-12.jpg" alt="product image">
                                            <img src="img/product/thumbnail-size/product-image-13.jpg" alt="product image">
                                        </a>
                                        <a href="cart.html" class="add-to-cart-button">
                                            <span>ADD TO CART</span>
                                        </a>
                                    </div>

                                    <div class="product-item-content">
                                        <div class="product-item-content-left">
                                            <h5><a href="product-details-right-sidebar.html">Pellentesque posuere</a></h5>
                                            <div class="ratting-box">
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                            </div>
                                            <div class="price-box">
													<span class="pricebox-price">
														<span class="currency-symbol">£</span>80.00
													</span>
                                            </div>
                                        </div>
                                        <div class="product-item-content-right">
                                            <ul>
                                                <li><a class="quick-view-trigger" href="#" data-toggle="tooltip" title="Quick View"><i class="fa fa-eye"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="fa fa-heart"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!--// Single Product -->

                            <!-- Single Product -->
                            <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">
                                <div class="product-item">

                                    <div class="product-item-images">
                                        <a href="product-details-right-sidebar.html" class="product-item-image-inner">
                                            <img src="img/product/thumbnail-size/product-image-14.jpg" alt="product image">
                                        </a>
                                        <a href="cart.html" class="add-to-cart-button">
                                            <span>ADD TO CART</span>
                                        </a>
                                    </div>

                                    <div class="product-item-content">
                                        <div class="product-item-content-left">
                                            <h5><a href="product-details-right-sidebar.html">Pellentesque posuere</a></h5>
                                            <div class="ratting-box">
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                            </div>
                                            <div class="price-box">
													<span class="pricebox-price">
														<span class="currency-symbol">£</span>80.00
													</span>
                                            </div>
                                        </div>
                                        <div class="product-item-content-right">
                                            <ul>
                                                <li><a class="quick-view-trigger" href="#" data-toggle="tooltip" title="Quick View"><i class="fa fa-eye"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="fa fa-heart"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!--// Single Product -->

                            <!-- Single Product -->
                            <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">
                                <div class="product-item">

                                    <div class="product-item-images">
                                        <a href="product-details-right-sidebar.html" class="product-item-image-inner">
                                            <img src="img/product/thumbnail-size/product-image-15.jpg" alt="product image">
                                            <img src="img/product/thumbnail-size/product-image-16.jpg" alt="product image">
                                        </a>
                                        <a href="cart.html" class="add-to-cart-button">
                                            <span>ADD TO CART</span>
                                        </a>
                                    </div>

                                    <div class="product-item-content">
                                        <div class="product-item-content-left">
                                            <h5><a href="product-details-right-sidebar.html">Pellentesque posuere</a></h5>
                                            <div class="ratting-box">
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                            </div>
                                            <div class="price-box">
													<span class="pricebox-price">
														<span class="currency-symbol">£</span>80.00
													</span>
                                            </div>
                                        </div>
                                        <div class="product-item-content-right">
                                            <ul>
                                                <li><a class="quick-view-trigger" href="#" data-toggle="tooltip" title="Quick View"><i class="fa fa-eye"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="fa fa-heart"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!--// Single Product -->

                            <!-- Single Product -->
                            <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">
                                <div class="product-item">

                                    <div class="product-item-images">
                                        <a href="product-details-right-sidebar.html" class="product-item-image-inner">
                                            <img src="img/product/thumbnail-size/product-image-17.jpg" alt="product image">
                                        </a>
                                        <a href="cart.html" class="add-to-cart-button">
                                            <span>ADD TO CART</span>
                                        </a>
                                    </div>

                                    <div class="product-item-content">
                                        <div class="product-item-content-left">
                                            <h5><a href="product-details-right-sidebar.html">Pellentesque posuere</a></h5>
                                            <div class="ratting-box">
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                            </div>
                                            <div class="price-box">
													<span class="pricebox-price">
														<span class="currency-symbol">£</span>80.00
													</span>
                                            </div>
                                        </div>
                                        <div class="product-item-content-right">
                                            <ul>
                                                <li><a class="quick-view-trigger" href="#" data-toggle="tooltip" title="Quick View"><i class="fa fa-eye"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="fa fa-heart"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!--// Single Product -->

                            <!-- Single Product -->
                            <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">
                                <div class="product-item">

                                    <div class="product-item-images">
                                        <a href="product-details-right-sidebar.html" class="product-item-image-inner">
                                            <img src="img/product/thumbnail-size/product-image-18.jpg" alt="product image">
                                        </a>
                                        <a href="cart.html" class="add-to-cart-button">
                                            <span>ADD TO CART</span>
                                        </a>
                                    </div>

                                    <div class="product-item-content">
                                        <div class="product-item-content-left">
                                            <h5><a href="product-details-right-sidebar.html">Pellentesque posuere</a></h5>
                                            <div class="ratting-box">
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                            </div>
                                            <div class="price-box">
													<span class="pricebox-price">
														<span class="currency-symbol">£</span>80.00
													</span>
                                            </div>
                                        </div>
                                        <div class="product-item-content-right">
                                            <ul>
                                                <li><a class="quick-view-trigger" href="#" data-toggle="tooltip" title="Quick View"><i class="fa fa-eye"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="fa fa-heart"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!--// Single Product -->

                            <!-- Single Product -->
                            <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">
                                <div class="product-item">

                                    <div class="product-item-images">
                                        <a href="product-details-right-sidebar.html" class="product-item-image-inner">
                                            <img src="img/product/thumbnail-size/product-image-19.jpg" alt="product image">
                                            <img src="img/product/thumbnail-size/product-image-20.jpg" alt="product image">
                                        </a>
                                        <a href="cart.html" class="add-to-cart-button">
                                            <span>ADD TO CART</span>
                                        </a>
                                    </div>

                                    <div class="product-item-content">
                                        <div class="product-item-content-left">
                                            <h5><a href="product-details-right-sidebar.html">Pellentesque posuere</a></h5>
                                            <div class="ratting-box">
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                            </div>
                                            <div class="price-box">
													<span class="pricebox-price">
														<span class="currency-symbol">£</span>80.00
													</span>
                                            </div>
                                        </div>
                                        <div class="product-item-content-right">
                                            <ul>
                                                <li><a class="quick-view-trigger" href="#" data-toggle="tooltip" title="Quick View"><i class="fa fa-eye"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="fa fa-heart"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!--// Single Product -->

                            <!-- Single Product -->
                            <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">
                                <div class="product-item">

                                    <div class="product-item-images">
                                        <a href="product-details-right-sidebar.html" class="product-item-image-inner">
                                            <img src="img/product/thumbnail-size/product-image-4.jpg" alt="product image">
                                            <img src="img/product/thumbnail-size/product-image-6.jpg" alt="product image">
                                        </a>
                                        <a href="cart.html" class="add-to-cart-button">
                                            <span>ADD TO CART</span>
                                        </a>
                                    </div>

                                    <div class="product-item-content">
                                        <div class="product-item-content-left">
                                            <h5><a href="product-details-right-sidebar.html">Pellentesque posuere</a></h5>
                                            <div class="ratting-box">
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                            </div>
                                            <div class="price-box">
													<span class="pricebox-price">
														<span class="currency-symbol">£</span>80.00
													</span>
                                            </div>
                                        </div>
                                        <div class="product-item-content-right">
                                            <ul>
                                                <li><a class="quick-view-trigger" href="#" data-toggle="tooltip" title="Quick View"><i class="fa fa-eye"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="fa fa-heart"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!--// Single Product -->

                            <!-- Single Product -->
                            <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">
                                <div class="product-item">

                                    <div class="product-item-images">
                                        <a href="product-details-right-sidebar.html" class="product-item-image-inner">
                                            <img src="img/product/thumbnail-size/product-image-3.jpg" alt="product image">
                                        </a>
                                        <a href="cart.html" class="add-to-cart-button">
                                            <span>ADD TO CART</span>
                                        </a>
                                    </div>

                                    <div class="product-item-content">
                                        <div class="product-item-content-left">
                                            <h5><a href="product-details-right-sidebar.html">Vestibulum suscipit</a></h5>
                                            <div class="ratting-box">
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                            </div>
                                            <div class="price-box">
													<span class="pricebox-price">
														<span class="currency-symbol">£</span>80.00
													</span>
                                            </div>
                                        </div>
                                        <div class="product-item-content-right">
                                            <ul>
                                                <li><a class="quick-view-trigger" href="#" data-toggle="tooltip" title="Quick View"><i class="fa fa-eye"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="fa fa-heart"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!--// Single Product -->

                            <!-- Single Product -->
                            <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">
                                <div class="product-item">

                                    <div class="product-item-images">
                                        <a href="product-details-right-sidebar.html" class="product-item-image-inner">
                                            <img src="img/product/thumbnail-size/product-image-5.jpg" alt="product image">
                                            <img src="img/product/thumbnail-size/product-image-6.jpg" alt="product image">
                                        </a>
                                        <a href="cart.html" class="add-to-cart-button">
                                            <span>ADD TO CART</span>
                                        </a>
                                    </div>

                                    <div class="product-item-content">
                                        <div class="product-item-content-left">
                                            <h5><a href="product-details-right-sidebar.html">Phasellus vel hendrerit</a></h5>
                                            <div class="ratting-box">
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                            </div>
                                            <div class="price-box">
													<span class="pricebox-price">
														<span class="currency-symbol">£</span>80.00
													</span>
                                            </div>
                                        </div>
                                        <div class="product-item-content-right">
                                            <ul>
                                                <li><a class="quick-view-trigger" href="#" data-toggle="tooltip" title="Quick View"><i class="fa fa-eye"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="fa fa-heart"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!--// Single Product -->

                            <!-- Single Product -->
                            <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">
                                <div class="product-item">

                                    <div class="product-item-images">
                                        <a href="product-details-right-sidebar.html" class="product-item-image-inner">
                                            <img src="img/product/thumbnail-size/product-image-7.jpg" alt="product image">
                                        </a>
                                        <a href="cart.html" class="add-to-cart-button">
                                            <span>ADD TO CART</span>
                                        </a>
                                    </div>

                                    <div class="product-item-content">
                                        <div class="product-item-content-left">
                                            <h5><a href="product-details-right-sidebar.html">Pellentesque posuere</a></h5>
                                            <div class="ratting-box">
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                            </div>
                                            <div class="price-box">
													<span class="pricebox-price">
														<span class="currency-symbol">£</span>80.00
													</span>
                                            </div>
                                        </div>
                                        <div class="product-item-content-right">
                                            <ul>
                                                <li><a class="quick-view-trigger" href="#" data-toggle="tooltip" title="Quick View"><i class="fa fa-eye"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="fa fa-heart"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!--// Single Product -->

                            <!-- Single Product -->
                            <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">
                                <div class="product-item">

                                    <div class="product-item-images">
                                        <a href="product-details-right-sidebar.html" class="product-item-image-inner">
                                            <img src="img/product/thumbnail-size/product-image-4.jpg" alt="product image">
                                            <img src="img/product/thumbnail-size/product-image-8.jpg" alt="product image">
                                        </a>
                                        <a href="cart.html" class="add-to-cart-button">
                                            <span>ADD TO CART</span>
                                        </a>
                                    </div>

                                    <div class="product-item-content">
                                        <div class="product-item-content-left">
                                            <h5><a href="product-details-right-sidebar.html">Pellentesque posuere</a></h5>
                                            <div class="ratting-box">
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                            </div>
                                            <div class="price-box">
													<span class="pricebox-price">
														<span class="currency-symbol">£</span>80.00
													</span>
                                            </div>
                                        </div>
                                        <div class="product-item-content-right">
                                            <ul>
                                                <li><a class="quick-view-trigger" href="#" data-toggle="tooltip" title="Quick View"><i class="fa fa-eye"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="fa fa-heart"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!--// Single Product -->

                            <!-- Single Product -->
                            <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">
                                <div class="product-item">

                                    <div class="product-item-images">
                                        <a href="product-details-right-sidebar.html" class="product-item-image-inner">
                                            <img src="img/product/thumbnail-size/product-image-9.jpg" alt="product image">
                                            <img src="img/product/thumbnail-size/product-image-10.jpg" alt="product image">
                                        </a>
                                        <a href="cart.html" class="add-to-cart-button">
                                            <span>ADD TO CART</span>
                                        </a>
                                    </div>

                                    <div class="product-item-content">
                                        <div class="product-item-content-left">
                                            <h5><a href="product-details-right-sidebar.html">Pellentesque posuere</a></h5>
                                            <div class="ratting-box">
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                                <span><i class="fa fa-star"></i></span>
                                            </div>
                                            <div class="price-box">
													<span class="pricebox-price">
														<span class="currency-symbol">£</span>80.00
													</span>
                                            </div>
                                        </div>
                                        <div class="product-item-content-right">
                                            <ul>
                                                <li><a class="quick-view-trigger" href="#" data-toggle="tooltip" title="Quick View"><i class="fa fa-eye"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="fa fa-heart"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" title="Compare"><i class="fa fa-exchange"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!--// Single Product -->

                        </div>
                    </div>
                </div>

            </div>
        </div>
        <!--// Products Area -->

        <!-- Features Area -->
        <div class="features-area">
            <div class="container">
                <div class="row justify-content-center features-wrapper">

                    <!-- Single Features -->
                    <div class="col-lg-4 col-md-6 col-12">
                        <div class="features text-center">
                            <h6>MONEY BACK GUARANTEED</h6>
                            <p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur</p>
                        </div>
                    </div>
                    <!--// Single Features -->

                    <!-- Single Features -->
                    <div class="col-lg-4 col-md-6 col-12">
                        <div class="features text-center">
                            <h6>FREE WORLDWIDE DELIVERY</h6>
                            <p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur</p>
                        </div>
                    </div>
                    <!--// Single Features -->

                    <!-- Single Features -->
                    <div class="col-lg-4 col-md-6 col-12">
                        <div class="features text-center">
                            <h6>ONLINE SUPPORT 24/7</h6>
                            <p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur</p>
                        </div>
                    </div>
                    <!--// Single Features -->

                </div>
            </div>
        </div>
        <!--// Features Area -->

        <!-- Newsletter & Brand Logos Area -->
        <div class="newsletter-brandlogo-area section-padding-xs">
            <div class="container">
                <div class="row no-gutters align-items-center">

                    <!-- Newsletter -->
                    <div class="col-lg-4">
                        <div class="newsletterbox">
                            <h5>SIGN UP FOR OUR WEEKLY NEWSLETTER !</h5>
                            <form action="#">
                                <input type="text" placeholder="Email">
                                <button type="submit">Subscribe</button>
                            </form>
                        </div>
                    </div>
                    <!--// Newsletter -->

                    <!-- Brand Logo -->
                    <div class="col-lg-8">
                        <div class="brand-logos slider-navigation-2">
                            <div class="brand-logo">
                                <a href="#">
                                    <img src="img/brand-logos/brand-logo-1.jpg" alt="best brand logo">
                                </a>
                            </div>
                            <div class="brand-logo">
                                <a href="#">
                                    <img src="img/brand-logos/brand-logo-2.jpg" alt="best brand logo">
                                </a>
                            </div>
                            <div class="brand-logo">
                                <a href="#">
                                    <img src="img/brand-logos/brand-logo-3.jpg" alt="best brand logo">
                                </a>
                            </div>
                            <div class="brand-logo">
                                <a href="#">
                                    <img src="img/brand-logos/brand-logo-4.jpg" alt="best brand logo">
                                </a>
                            </div>
                            <div class="brand-logo">
                                <a href="#">
                                    <img src="img/brand-logos/brand-logo-2.jpg" alt="best brand logo">
                                </a>
                            </div>
                            <div class="brand-logo">
                                <a href="#">
                                    <img src="img/brand-logos/brand-logo-3.jpg" alt="best brand logo">
                                </a>
                            </div>
                        </div>
                    </div>
                    <!--// Brand Logo -->

                </div>
            </div>
        </div>
        <!--// Newsletter & Brand Logos Area -->

    </main>
    <!--// Page Conttent -->

    <!-- Footer Area -->
    <footer class="footer-area bg-black section-padding-sm">

        <!-- Footer Top Area -->
        <div class="footer-top-area">
            <div class="container">
                <div class="row widgets footer-widgets">

                    <!-- Single Widget -->
                    <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                        <div class="single-widget widget-quicklinks">
                            <h6 class="widget-title">INFORMATION</h6>
                            <ul>
                                <li><a href="#">Our Blog</a></li>
                                <li><a href="#">About Our Shop</a></li>
                                <li><a href="#">Secure Shopping</a></li>
                                <li><a href="#">Privacy Policy</a></li>
                                <li><a href="#">Delivery information</a></li>
                                <li><a href="#">Advanced Search</a></li>
                            </ul>
                        </div>
                    </div>
                    <!--// Single Widget -->

                    <!-- Single Widget -->
                    <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                        <div class="single-widget widget-quicklinks">
                            <h6 class="widget-title">OUR SERVICES</h6>
                            <ul>
                                <li><a href="#">Order History</a></li>
                                <li><a href="#">Shipping & Returns</a></li>
                                <li><a href="#">Secure Shopping</a></li>
                                <li><a href="#">International Shipping</a></li>
                                <li><a href="#">Affiliates</a></li>
                                <li><a href="#">Returns</a></li>
                            </ul>
                        </div>
                    </div>
                    <!--// Single Widget -->

                    <!-- Single Widget -->
                    <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                        <div class="single-widget widget-quicklinks">
                            <h6 class="widget-title">OUR SUPPORT</h6>
                            <ul>
                                <li><a href="my-account.html">My Account</a></li>
                                <li><a href="#">Contact</a></li>
                                <li><a href="#">About Us</a></li>
                                <li><a href="#">Sample Page</a></li>
                                <li><a href="#">My address</a></li>
                                <li><a href="#">My credit slips</a></li>
                            </ul>
                        </div>
                    </div>
                    <!--// Single Widget -->

                    <!-- Single Widget -->
                    <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                        <div class="single-widget widget-contact">
                            <h6 class="widget-title">CONTACT US</h6>
                            <ul>
                                <li class="location">
                                    <i class="fa fa-map-marker"></i>
                                    <p>1234 Heaven Stress, Beverly Hill OldYork UnitedState of Lorem</p>
                                </li>
                                <li class="phone">
                                    <i class="fa fa-mobile"></i>
                                    <a href="tel:+80001234567890">(800) 0123 4567 890</a>
                                    <a href="tel:+80009876543210">(800) 0987 6543 210</a>
                                </li>
                                <li class="mail">
                                    <i class="fa fa-envelope-o"></i>
                                    <a href="mailto://info1@example.com">info1@example.com</a>
                                    <a href="mailto://info2@example.com">info2@example.com</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!--// Single Widget -->

                </div>
            </div>
        </div>
        <!--// Footer Top Area -->

        <!-- Footer Copyright Area -->
        <div class="footer-copyright-area section-padding-top-xs">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-9">
                        <p class="footer-copyright">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s Copyright © 2018 HasTech. All Rights Reserved More Templates <a href="http://www.scnoob.com">菜鸟素材</a> - Collect from <a href="http://www.scnoob.com/moban">网页模板</a></p>
                    </div>
                    <div class="col-lg-3">
                        <div class="footer-social-links">
                            <ul>
                                <li><a data-toggle="tooltip" title="Facebook" href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a data-toggle="tooltip" title="Twitter" href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a data-toggle="tooltip" title="Tumblr" href="#"><i class="fa fa-tumblr"></i></a></li>
                                <li><a data-toggle="tooltip" title="Google Plus" href="#"><i class="fa fa-google-plus"></i></a></li>
                                <li><a data-toggle="tooltip" title="Dribbble" href="#"><i class="fa fa-dribbble"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--// Footer Copyright Area -->

    </footer>
    <!--// Footer Area -->

    <!-- Quick View Modal -->
    <div class="quick-view-modal">
        <div class="quick-view-modal-inner">
            <div class="container">
                <div class="product-details">

                    <!-- Product Details Left -->
                    <div class="product-details-left">
                        <div class="product-details-images slider-navigation-2">
                            <a href="img/product/large-size/product-image-1.jpg">
                                <img src="img/product/thumbnail-size/product-image-1.jpg" alt="product image">
                            </a>
                            <a href="img/product/thumbnail-size/product-image-2.jpg">
                                <img src="img/product/thumbnail-size/product-image-2.jpg" alt="product image">
                            </a>
                            <a href="img/product/large-size/product-image-3.jpg">
                                <img src="img/product/thumbnail-size/product-image-14.jpg" alt="product image">
                            </a>
                            <a href="img/product/large-size/product-image-4.jpg">
                                <img src="img/product/thumbnail-size/product-image-15.jpg" alt="product image">
                            </a>
                            <a href="img/product/large-size/product-image-5.jpg">
                                <img src="img/product/thumbnail-size/product-image-20.jpg" alt="product image">
                            </a>
                        </div>
                        <div class="product-details-thumbs slider-navigation-2">
                            <img src="img/product/small-size/product-image-1.jpg" alt="product image thumb">
                            <img src="img/product/small-size/product-image-2.jpg" alt="product image thumb">
                            <img src="img/product/small-size/product-image-3.jpg" alt="product image thumb">
                            <img src="img/product/small-size/product-image-4.jpg" alt="product image thumb">
                            <img src="img/product/small-size/product-image-5.jpg" alt="product image thumb">
                        </div>
                    </div>
                    <!--// Product Details Left -->

                    <!-- Product Details Right -->
                    <div class="product-details-right">
                        <h5 class="product-title">Aenean Eu Tristique</h5>

                        <div class="ratting-stock-availbility">
                            <div class="ratting-box">
                                <span><i class="fa fa-star"></i></span>
                                <span><i class="fa fa-star"></i></span>
                                <span><i class="fa fa-star"></i></span>
                                <span><i class="fa fa-star"></i></span>
                                <span><i class="fa fa-star"></i></span>
                            </div>
                            <span class="stock-available">In stock</span>
                        </div>

                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla. adipiscing cursus eu, suscipit id nulla.</p>

                        <div class="price-box">
                            <span class="pricebox-price">£80.00</span>
                        </div>

                        <div class="product-details-quantity">
                            <div class="quantity-select">
                                <input type="text" value="1">
                            </div>
                            <a href="#" class="add-to-cart-button">
                                <span>ADD TO CART</span>
                            </a>
                        </div>

                        <div class="product-details-color">
                            <span>Color :</span>
                            <ul>
                                <li class="red"><span></span></li>
                                <li class="green checked"><span></span></li>
                                <li class="blue"><span></span></li>
                                <li class="black"><span></span></li>
                            </ul>
                        </div>

                        <div class="product-details-size">
                            <span>Size :</span>
                            <ul>
                                <li class="checked"><span>S</span></li>
                                <li><span>M</span></li>
                                <li><span>L</span></li>
                                <li><span>XL</span></li>
                                <li><span>XXL</span></li>
                            </ul>
                        </div>

                        <div class="product-details-categories">
                            <span>Categories :</span>
                            <ul>
                                <li><a href="shop.html">Accessories</a></li>
                                <li><a href="shop.html">Kids</a></li>
                                <li><a href="shop.html">Women</a></li>
                            </ul>
                        </div>

                        <div class="product-details-tags">
                            <span>Tags :</span>
                            <ul>
                                <li><a href="shop.html">Electronic</a></li>
                                <li><a href="shop.html">Television</a></li>
                            </ul>
                        </div>

                        <div class="product-details-socialshare">
                            <span>Share :</span>
                            <ul>
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                            </ul>
                        </div>
                    </div>
                    <!--// Product Details Right -->

                </div>
            </div>
            <button class="close-quickview-modal"><i class="fa fa-close"></i></button>
        </div>
    </div>
    <!--// Quick View Modal -->


</div>
<!--// Wrapper -->

<!-- Js Files -->

<script src="js/vendor/modernizr-3.6.0.min.js"></script>
<script src="js/vendor/jquery-3.3.1.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/plugins.js"></script>
<script src="js/main.js"></script>


</body>


<!-- source http://www.scnoob.com More templates http://www.scnoob.com/moban -->
</html>
