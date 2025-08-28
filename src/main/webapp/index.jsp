<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ShopEasy - Electronics & Fashion</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
 
        body {
            background-color: #f8f9fa;
            color: #333;
        }
 
        header {
            background: linear-gradient(to right, #4a00e0, #8e2de2);
            color: white;
            padding: 15px 5%;
            position: sticky;
            top: 0;
            z-index: 100;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }
 
        .header-container {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
 
        .logo {
            font-size: 24px;
            font-weight: bold;
            display: flex;
            align-items: center;
        }
 
        .logo i {
            margin-right: 10px;
        }
 
        nav ul {
            display: flex;
            list-style: none;
        }
 
        nav ul li {
            margin: 0 15px;
        }
 
        nav ul li a {
            color: white;
            text-decoration: none;
            font-weight: 500;
            transition: all 0.3s ease;
        }
 
        nav ul li a:hover {
            color: #ffd700;
        }
 
        .search-cart {
            display: flex;
            align-items: center;
        }
 
        .search-box {
            display: flex;
            background: white;
            border-radius: 4px;
            overflow: hidden;
            margin-right: 20px;
        }
 
        .search-box input {
            border: none;
            padding: 8px 12px;
            outline: none;
            width: 200px;
        }
 
        .search-box button {
            border: none;
            background: #ff6b6b;
            color: white;
            padding: 8px 12px;
            cursor: pointer;
        }
 
        .cart-icon {
            color: white;
            font-size: 20px;
            position: relative;
        }
 
        .cart-count {
            position: absolute;
            top: -8px;
            right: -8px;
            background: #ff6b6b;
            color: white;
            font-size: 12px;
            width: 18px;
            height: 18px;
            border-radius: 50%;
            display: flex;
            justify-content: center;
            align-items: center;
        }
 
        .hero {
            background: linear-gradient(rgba(0, 0, 0, 0.7), rgba(0, 0, 0, 0.7)), url('https://images.unsplash.com/photo-1607082348824-0a96f2a4b9da?ixlib=rb-4.0.3&auto=format&fit=crop&w=1200&q=80');
            background-size: cover;
            background-position: center;
            color: white;
            text-align: center;
            padding: 80px 20px;
            margin-bottom: 40px;
        }
 
        .hero h1 {
            font-size: 2.5rem;
            margin-bottom: 20px;
        }
 
        .hero p {
            font-size: 1.2rem;
            max-width: 700px;
            margin: 0 auto 30px;
        }
 
        .btn {
            background: #ff6b6b;
            color: white;
            padding: 12px 24px;
            border: none;
            border-radius: 4px;
            font-size: 1rem;
            cursor: pointer;
            transition: all 0.3s ease;
        }
 
        .btn:hover {
            background: #ff5252;
            transform: translateY(-2px);
        }
 
        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
        }
 
        .section-title {
            text-align: center;
            margin-bottom: 40px;
            color: #4a00e0;
            position: relative;
        }
 
        .section-title:after {
            content: '';
            display: block;
            width: 80px;
            height: 4px;
            background: #8e2de2;
            margin: 10px auto;
        }
 
        .products {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
            gap: 30px;
            margin-bottom: 60px;
        }
 
        .product-card {
            background: white;
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
        }
 
        .product-card:hover {
            transform: translateY(-5px);
        }
 
        .product-image {
            height: 200px;
            width: 100%;
            object-fit: cover;
        }
 
        .product-info {
            padding: 20px;
        }
 
        .product-title {
            font-size: 18px;
            margin-bottom: 10px;
            color: #333;
        }
 
        .product-price {
            font-size: 20px;
            font-weight: bold;
            color: #4a00e0;
            margin-bottom: 15px;
        }
 
        .product-actions {
            display: flex;
            justify-content: space-between;
        }
 
        .add-to-cart {
            background: #4a00e0;
            color: white;
            border: none;
            padding: 8px 15px;
            border-radius: 4px;
            cursor: pointer;
            transition: background 0.3s ease;
        }
 
        .add-to-cart:hover {
            background: #8e2de2;
        }
 
        .wishlist {
            background: none;
            border: none;
            color: #888;
            font-size: 18px;
            cursor: pointer;
            transition: color 0.3s ease;
        }
 
        .wishlist:hover {
            color: #ff6b6b;
        }
 
        .category-tabs {
            display: flex;
            justify-content: center;
            margin-bottom: 30px;
        }
 
        .category-tab {
            padding: 12px 24px;
            background: #e0e0e0;
            border: none;
            border-radius: 4px;
            margin: 0 10px;
            cursor: pointer;
            font-weight: 500;
            transition: all 0.3s ease;
        }
 
        .category-tab.active {
            background: #4a00e0;
            color: white;
        }
 
        footer {
            background: #333;
            color: white;
            padding: 40px 0;
            margin-top: 60px;
        }
 
        .footer-content {
            display: flex;
            justify-content: space-between;
            flex-wrap: wrap;
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
        }
 
        .footer-section {
            flex: 1;
            min-width: 250px;
            margin-bottom: 20px;
        }
 
        .footer-section h3 {
            margin-bottom: 20px;
            color: #ff6b6b;
        }
 
        .footer-section ul {
            list-style: none;
        }
 
        .footer-section ul li {
            margin-bottom: 10px;
        }
 
        .footer-section ul li a {
            color: #ddd;
            text-decoration: none;
            transition: color 0.3s ease;
        }
 
        .footer-section ul li a:hover {
            color: #ff6b6b;
        }
 
        .social-icons a {
            color: white;
            font-size: 20px;
            margin-right: 15px;
            transition: color 0.3s ease;
        }
 
        .social-icons a:hover {
            color: #ff6b6b;
        }
 
        .copyright {
            text-align: center;
            padding-top: 20px;
            border-top: 1px solid #555;
            margin-top: 20px;
        }
 
        @media (max-width: 768px) {
            .header-container {
                flex-direction: column;
                text-align: center;
            }
            
            .logo {
                margin-bottom: 15px;
            }
            
            nav ul {
                margin-bottom: 15px;
            }
            
            .search-box {
                width: 100%;
                margin-bottom: 15px;
            }
            
            .products {
                grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
            }
            
            .category-tabs {
                flex-wrap: wrap;
            }
            
            .category-tab {
                margin-bottom: 10px;
            }
        }
    </style>
</head>
<body>
    <!-- Header -->
    <header>
        <div class="header-container">
            <div class="logo">
                <i class="fas fa-shopping-bag"></i>
                ShopEasy
            </div>
            <nav>
                <ul>
                    <li><a href="#">Home</a></li>
                    <li><a href="#mobiles">Mobiles</a></li>
                    <li><a href="#laptops">Laptops</a></li>
                    <li><a href="#clothes">Clothes</a></li>
                    <li><a href="#">Offers</a></li>
                </ul>
            </nav>
            <div class="search-cart">
                <div class="search-box">
                    <input type="text" placeholder="Search products...">
                    <button><i class="fas fa-search"></i></button>
                </div>
                <div class="cart-icon">
                    <i class="fas fa-shopping-cart"></i>
                    <span class="cart-count">3</span>
                </div>
            </div>
        </div>
    </header>
 
    <!-- Hero Section -->
    <section class="hero">
        <h1>Welcome to ShopEasy</h1>
        <p>Discover the latest mobiles, laptops, and fashion at amazing prices. Shop now and get exclusive discounts!</p>
        <button class="btn">Shop Now</button>
    </section>
 
    <!-- Main Content -->
    <div class="container">
        <!-- Category Tabs -->
        <div class="category-tabs">
            <button class="category-tab active" data-category="all">All Products</button>
            <button class="category-tab" data-category="mobiles">Mobiles</button>
            <button class="category-tab" data-category="laptops">Laptops</button>
            <button class="category-tab" data-category="clothes">Clothes</button>
        </div>
 
        <!-- Mobiles Section -->
        <section id="mobiles">
            <h2 class="section-title">Mobile Phones</h2>
            <div class="products">
                <!-- Product 1 -->
                <div class="product-card" data-category="mobiles">
                    <img src="https://images.unsplash.com/photo-1598327105666-5b89351aff97?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=80" alt="Smartphone" class="product-image">
                    <div class="product-info">
                        <h3 class="product-title">iPhone 14 Pro</h3>
                        <p class="product-price">₹1,19,999</p>
                        <div class="product-actions">
                            <button class="add-to-cart">Add to Cart</button>
                            <button class="wishlist"><i class="far fa-heart"></i></button>
                        </div>
                    </div>
                </div>
       
 
