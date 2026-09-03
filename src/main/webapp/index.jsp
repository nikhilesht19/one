<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>NexusShop — Discover Better</title>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700&family=Playfair+Display:wght@700;800&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">

  <style>
    :root {
      --ink: #14213d;
      --muted: #697386;
      --paper: #fff;
      --soft: #f6f7fb;
      --line: #e8ebf2;
      --violet: #6546e9;
      --pink: #ff5d8f;
      --gold: #ffb800;
      --green: #18a874;
      --radius: 20px;
      --shadow: 0 16px 40px rgba(20, 33, 61, .10);
    }

    * { box-sizing: border-box; }
    html { scroll-behavior: smooth; }
    body {
      margin: 0;
      color: var(--ink);
      background: var(--paper);
      font: 16px/1.5 "DM Sans", sans-serif;
    }

    body.no-scroll { overflow: hidden; }
    a { color: inherit; text-decoration: none; }
    button, input, select { font: inherit; }
    button { cursor: pointer; border: 0; }
    img { max-width: 100%; display: block; }

    .container { width: min(1180px, calc(100% - 40px)); margin: auto; }
    .section { padding: 88px 0; }
    .eyebrow {
      color: var(--violet); font-size: .78rem; letter-spacing: .12em;
      font-weight: 700; text-transform: uppercase;
    }
    .section-head {
      display: flex; align-items: end; justify-content: space-between;
      gap: 20px; margin-bottom: 28px;
    }
    h1, h2, h3, p { margin-top: 0; }
    h2 { font: 800 clamp(2rem, 4vw, 3rem)/1.1 "Playfair Display", serif; margin-bottom: 8px; }
    .muted { color: var(--muted); }
    .btn {
      display: inline-flex; align-items: center; justify-content: center; gap: 10px;
      padding: 13px 20px; border-radius: 999px; font-weight: 700;
      transition: transform .2s, box-shadow .2s, background .2s;
    }
    .btn:hover { transform: translateY(-2px); box-shadow: 0 10px 22px rgba(20, 33, 61, .15); }
    .btn-primary { color: #fff; background: var(--ink); }
    .btn-light { color: var(--ink); background: #fff; }
    .btn-outline { color: var(--ink); background: transparent; border: 1px solid var(--line); }

    .topbar {
      background: var(--ink); color: white; font-size: .82rem; padding: 9px 0;
      text-align: center;
    }
    .topbar strong { color: #ffd166; }

    header {
      position: sticky; top: 0; z-index: 50; background: rgba(255,255,255,.92);
      backdrop-filter: blur(16px); border-bottom: 1px solid var(--line);
    }
    .nav {
      height: 76px; display: flex; align-items: center; justify-content: space-between; gap: 25px;
    }
    .logo { font-size: 1.45rem; font-weight: 800; letter-spacing: -.06em; }
    .logo span { color: var(--violet); }
    .links { display: flex; gap: 24px; color: #4d5870; font-weight: 600; }
    .links a:hover { color: var(--violet); }
    .nav-actions { display: flex; align-items: center; gap: 8px; }
    .icon-btn {
      position: relative; width: 42px; height: 42px; border-radius: 50%;
      background: transparent; color: var(--ink); font-size: 1.05rem;
    }
    .icon-btn:hover { background: var(--soft); }
    .badge {
      position: absolute; top: 2px; right: 1px; min-width: 18px; height: 18px;
      display: grid; place-items: center; padding: 0 4px; border-radius: 50%;
      color: white; background: var(--pink); font-size: .67rem; font-weight: 700;
    }
    .menu-btn { display: none; }

    .hero {
      overflow: hidden; padding: 74px 0; background:
      radial-gradient(circle at 87% 15%, #e9e1ff 0, transparent 23rem),
      linear-gradient(135deg, #f9f8ff 0%, #fff 62%);
    }
    .hero-grid { display: grid; grid-template-columns: 1.05fr .95fr; align-items: center; gap: 48px; }
    .hero h1 {
      max-width: 680px; font: 800 clamp(3.2rem, 6.2vw, 5.5rem)/.98 "Playfair Display", serif;
      letter-spacing: -.055em; margin: 12px 0 22px;
    }
    .hero h1 em { color: var(--violet); font-style: normal; }
    .hero-copy { max-width: 520px; color: var(--muted); font-size: 1.08rem; }
    .hero-actions { display: flex; flex-wrap: wrap; gap: 12px; margin-top: 28px; }
    .trust { display: flex; gap: 20px; margin-top: 38px; font-size: .86rem; color: var(--muted); }
    .trust i { color: var(--green); margin-right: 6px; }
    .hero-art { position: relative; min-height: 440px; }
    .hero-art img {
      position: absolute; width: min(100%, 470px); right: 0; bottom: 0; border-radius: 46% 46% 18px 18px;
      box-shadow: 24px 24px 0 #e4ddff; object-fit: cover; height: 440px;
    }
    .floating-card {
      position: absolute; z-index: 2; display: flex; gap: 10px; align-items: center;
      padding: 12px 15px; background: rgba(255,255,255,.92); backdrop-filter: blur(10px);
      border-radius: 14px; box-shadow: var(--shadow); font-size: .85rem;
    }
    .floating-card i { color: var(--gold); font-size: 1.2rem; }
    .float-one { left: 0; top: 65px; }
    .float-two { right: 8px; bottom: 28px; }

    .categories { display: grid; grid-template-columns: repeat(4, 1fr); gap: 18px; }
    .category {
      min-height: 205px; position: relative; overflow: hidden; padding: 22px; border-radius: var(--radius);
      background: #f4f2ff; transition: transform .25s, box-shadow .25s;
    }
    .category:nth-child(2) { background: #fff0f5; }
    .category:nth-child(3) { background: #eaf9f5; }
    .category:nth-child(4) { background: #fff6df; }
    .category:hover { transform: translateY(-6px); box-shadow: var(--shadow); }
    .category h3 { position: relative; z-index: 1; margin: 0; font-size: 1.15rem; }
    .category span { position: relative; z-index: 1; color: var(--muted); font-size: .88rem; }
    .category img {
      position: absolute; width: 138px; right: -16px; bottom: -18px; border-radius: 50%;
      aspect-ratio: 1; object-fit: cover; transform: rotate(-8deg);
    }

    .toolbar {
      display: flex; align-items: center; justify-content: space-between; gap: 16px; margin-bottom: 28px;
    }
    .filters { display: flex; gap: 9px; flex-wrap: wrap; }
    .filter {
      padding: 9px 15px; color: var(--muted); background: var(--soft); border-radius: 999px; font-weight: 700;
    }
    .filter.active, .filter:hover { color: white; background: var(--ink); }
    .search {
      display: flex; align-items: center; min-width: 250px; padding: 10px 14px; border: 1px solid var(--line);
      border-radius: 12px; background: white;
    }
    .search input { width: 100%; border: 0; outline: 0; margin-left: 8px; }

    .products { display: grid; grid-template-columns: repeat(4, 1fr); gap: 20px; }
    .product {
      position: relative; overflow: hidden; background: white; border: 1px solid var(--line); border-radius: var(--radius);
      transition: transform .25s, box-shadow .25s;
    }
    .product:hover { transform: translateY(-6px); box-shadow: var(--shadow); }
    .product-image { position: relative; height: 245px; overflow: hidden; background: var(--soft); }
    .product-image img { width: 100%; height: 100%; object-fit: cover; transition: transform .5s; }
    .product:hover img { transform: scale(1.08); }
    .label {
      position: absolute; top: 13px; left: 13px; padding: 5px 9px; border-radius: 8px;
      color: white; background: var(--pink); font-size: .72rem; font-weight: 700;
    }
    .wish {
      position: absolute; top: 10px; right: 10px; width: 36px; height: 36px; border-radius: 50%;
      background: white; color: var(--ink); box-shadow: 0 4px 12px rgba(0,0,0,.08);
    }
    .wish.active { color: var(--pink); }
    .product-body { padding: 17px; }
    .rating { color: var(--gold); font-size: .77rem; }
    .rating span { color: var(--muted); margin-left: 4px; }
    .product h3 { margin: 7px 0 5px; font-size: 1rem; }
    .product-foot { display: flex; align-items: center; justify-content: space-between; margin-top: 13px; }
    .price { font-weight: 800; font-size: 1.1rem; }
    .old-price { color: #9aa4b6; text-decoration: line-through; font-size: .84rem; margin-left: 5px; }
    .add { width: 37px; height: 37px; border-radius: 11px; color: white; background: var(--ink); }

    .sale {
      overflow: hidden; position: relative; color: white; background: var(--ink); padding: 58px 0;
    }
    .sale:before {
      content: ""; position: absolute; width: 440px; height: 440px; border-radius: 50%;
      top: -240px; right: 5%; background: var(--violet);
    }
    .sale-grid { position: relative; display: grid; grid-template-columns: 1fr auto; align-items: center; gap: 30px; }
    .sale h2 { margin: 7px 0; }
    .sale p { color: #cad2e4; }
    .countdown { display: flex; gap: 10px; }
    .time-box {
      width: 70px; padding: 11px 6px; text-align: center; border-radius: 12px;
      color: var(--ink); background: white; font-weight: 800;
    }
    .time-box span { display: block; color: var(--muted); font-size: .65rem; font-weight: 600; text-transform: uppercase; }

    .quotes { background: var(--soft); }
    .testimonials { display: grid; grid-template-columns: repeat(3, 1fr); gap: 20px; }
    .quote { padding: 26px; background: white; border-radius: var(--radius); }
    .quote > i { color: var(--violet); font-size: 1.5rem; }
    .quote p { margin: 14px 0 20px; color: #42506a; }
    .person { display: flex; align-items: center; gap: 11px; font-size: .87rem; }
    .person img { width: 40px; height: 40px; border-radius: 50%; object-fit: cover; }
    .person b { display: block; }
    .person small { color: var(--muted); }

    .newsletter {
      display: grid; grid-template-columns: 1fr auto; align-items: center; gap: 30px;
      padding: 42px; border-radius: 28px; color: white; background: linear-gradient(110deg, var(--violet), #8f6eff);
    }
    .newsletter h2 { margin: 0 0 8px; }
    .newsletter p { margin: 0; color: #e6dfff; }
    .subscribe { display: flex; padding: 5px; min-width: 365px; border-radius: 999px; background: white; }
    .subscribe input { flex: 1; min-width: 0; padding: 9px 14px; border: 0; outline: 0; border-radius: 999px; }
    .subscribe button { color: white; background: var(--ink); }

    footer { margin-top: 88px; padding: 60px 0 22px; color: #d7dced; background: #101b32; }
    .footer-grid { display: grid; grid-template-columns: 1.7fr repeat(3, 1fr); gap: 35px; }
    .footer-grid .logo { color: white; }
    .footer-grid p { color: #96a2bb; max-width: 290px; }
    footer h4 { color: white; margin-top: 0; }
    footer a { display: block; color: #aeb8cc; margin: 9px 0; font-size: .9rem; }
    footer a:hover { color: white; }
    .socials { display: flex; gap: 9px; }
    .socials a { display: grid; place-items: center; width: 34px; height: 34px; margin: 0; border-radius: 50%; background: #22304c; }
    .copyright { margin-top: 42px; padding-top: 18px; border-top: 1px solid #273653; color: #8491aa; font-size: .82rem; }

    .overlay { position: fixed; inset: 0; z-index: 90; opacity: 0; visibility: hidden; background: rgba(8, 15, 30, .5); transition: .25s; }
    .overlay.show { opacity: 1; visibility: visible; }
    .drawer {
      position: fixed; top: 0; right: 0; z-index: 100; width: min(420px, 100%); height: 100vh;
      display: flex; flex-direction: column; padding: 22px; background: white; transform: translateX(100%); transition: transform .3s;
    }
    .drawer.show { transform: translateX(0); }
    .drawer-head, .cart-total { display: flex; align-items: center; justify-content: space-between; }
    .drawer-head { padding-bottom: 17px; border-bottom: 1px solid var(--line); }
    .drawer h3 { margin: 0; font-size: 1.25rem; }
    .cart-items { flex: 1; overflow: auto; padding: 14px 0; }
    .empty { color: var(--muted); text-align: center; padding: 60px 0; }
    .cart-item { display: grid; grid-template-columns: 72px 1fr auto; gap: 12px; margin-bottom: 15px; }
    .cart-item img { width: 72px; height: 82px; object-fit: cover; border-radius: 12px; }
    .cart-item h4 { margin: 2px 0 5px; font-size: .92rem; }
    .cart-item p { margin: 0; font-weight: 700; }
    .quantity { display: flex; align-items: center; width: fit-content; margin-top: 8px; border: 1px solid var(--line); border-radius: 8px; }
    .quantity button { width: 25px; height: 25px; background: white; }
    .quantity span { width: 25px; text-align: center; font-size: .85rem; }
    .remove { color: var(--muted); background: none; }
    .cart-bottom { padding-top: 16px; border-top: 1px solid var(--line); }
    .cart-total { margin-bottom: 16px; font-size: 1.1rem; font-weight: 800; }
    .checkout { width: 100%; }

    .toast {
      position: fixed; z-index: 120; right: 20px; bottom: 20px; padding: 14px 18px; border-radius: 12px;
      color: white; background: var(--ink); box-shadow: var(--shadow); transform: translateY(100px); opacity: 0; transition: .3s;
    }
    .toast.show { transform: translateY(0); opacity: 1; }

    @media (max-width: 900px) {
      .links { display: none; }
      .menu-btn { display: grid; }
      .hero-grid, .newsletter { grid-template-columns: 1fr; }
      .hero-art { min-height: 355px; max-width: 500px; width: 100%; margin: auto; }
      .hero-art img { height: 350px; }
      .categories, .products { grid-template-columns: repeat(2, 1fr); }
      .sale-grid { grid-template-columns: 1fr; }
      .testimonials { grid-template-columns: 1fr; }
      .footer-grid { grid-template-columns: repeat(2, 1fr); }
      .subscribe { min-width: 0; width: 100%; }
    }
    @media (max-width: 560px) {
      .container { width: min(100% - 28px, 1180px); }
      .section { padding: 60px 0; }
      .nav { height: 65px; }
      .topbar { font-size: .72rem; }
      .hero { padding: 48px 0; }
      .hero h1 { font-size: 3.2rem; }
      .hero-art { min-height: 290px; }
      .hero-art img { height: 285px; }
      .trust { flex-direction: column; gap: 8px; }
      .section-head, .toolbar { align-items: stretch; flex-direction: column; }
      .search { min-width: 0; }
      .categories, .products { grid-template-columns: 1fr; }
      .product-image { height: 280px; }
      .countdown { gap: 6px; }
      .time-box { width: 58px; }
      .newsletter { padding: 28px 20px; }
      .subscribe { flex-direction: column; gap: 8px; padding: 0; background: transparent; }
      .subscribe input, .subscribe button { width: 100%; padding: 13px; background: white; }
      .subscribe button { color: var(--ink); }
      .footer-grid { grid-template-columns: 1fr 1fr; gap: 26px; }
    }
  </style>
</head>

<body>
  <div class="topbar">Free shipping on orders over $75 — <strong>Use code: NEXUS10</strong></div>

  <header>
    <nav class="nav container">
      <a class="logo" href="#">Nexus<span>Shop</span></a>
      <div class="links">
        <a href="#shop">Shop</a>
        <a href="#categories">Categories</a>
        <a href="#sale">Flash Sale</a>
        <a href="#reviews">Reviews</a>
      </div>
      <div class="nav-actions">
        <button class="icon-btn" aria-label="Search" onclick="document.querySelector('#productSearch').focus()"><i class="fa-solid fa-magnifying-glass"></i></button>
        <button class="icon-btn" aria-label="Wishlist" onclick="showToast('Your wishlist is ready for you.')"><i class="fa-regular fa-heart"></i></button>
        <button class="icon-btn" aria-label="Shopping cart" onclick="toggleCart()">
          <i class="fa-solid fa-bag-shopping"></i><span class="badge" id="cartCount">0</span>
        </button>
        <button class="icon-btn menu-btn" aria-label="Menu" onclick="toggleMenu()"><i class="fa-solid fa-bars"></i></button>
      </div>
    </nav>
  </header>

  <main>
    <section class="hero">
      <div class="container hero-grid">
        <div>
          <div class="eyebrow">Curated for your everyday</div>
          <h1>Find your next <em>favorite</em> thing.</h1>
          <p class="hero-copy">Thoughtfully selected essentials, innovative tech, and beautiful pieces that make every day feel a little more special.</p>
          <div class="hero-actions">
            <a class="btn btn-primary" href="#shop">Shop new arrivals <i class="fa-solid fa-arrow-right"></i></a>
            <a class="btn btn-outline" href="#categories">Explore categories</a>
          </div>
          <div class="trust">
            <span><i class="fa-solid fa-circle-check"></i> Secure checkout</span>
            <span><i class="fa-solid fa-truck-fast"></i> Fast delivery</span>
            <span><i class="fa-solid fa-rotate-left"></i> 30-day returns</span>
          </div>
        </div>
        <div class="hero-art">
          <div class="floating-card float-one"><i class="fa-solid fa-star"></i><span><b>4.9/5 rating</b><br>from happy shoppers</span></div>
          <div class="floating-card float-two"><i class="fa-solid fa-box"></i><span><b>New arrivals</b><br>Every single week</span></div>
          <img src="https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=900&q=85" alt="Premium watch">
        </div>
      </div>
    </section>

    <section class="section container" id="categories">
      <div class="section-head">
        <div><div class="eyebrow">Shop your way</div><h2>Made for every mood.</h2></div>
        <a class="btn btn-outline" href="#shop">View all <i class="fa-solid fa-arrow-right"></i></a>
      </div>
      <div class="categories">
        <a class="category" href="#shop"><h3>Tech & Gadgets</h3><span>52 products</span><img src="https://images.unsplash.com/photo-1498049794561-7780e7231661?auto=format&fit=crop&w=400&q=80" alt="Technology"></a>
        <a class="category" href="#shop"><h3>Style Edit</h3><span>84 products</span><img src="https://images.unsplash.com/photo-1525507119028-ed4c629a60a3?auto=format&fit=crop&w=400&q=80" alt="Fashion"></a>
        <a class="category" href="#shop"><h3>Home & Living</h3><span>67 products</span><img src="https://images.unsplash.com/photo-1484101403633-562f891dc89a?auto=format&fit=crop&w=400&q=80" alt="Home decor"></a>
        <a class="category" href="#shop"><h3>Wellness</h3><span>39 products</span><img src="https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=400&q=80" alt="Wellness products"></a>
      </div>
    </section>

    <section class="section" id="shop">
      <div class="container">
        <div class="section-head">
          <div><div class="eyebrow">Fresh picks</div><h2>Trending right now.</h2></div>
          <p class="muted">Small luxuries. Big energy.</p>
        </div>

        <div class="toolbar">
          <div class="filters">
            <button class="filter active" data-filter="all">All picks</button>
            <button class="filter" data-filter="tech">Tech</button>
            <button class="filter" data-filter="style">Style</button>
            <button class="filter" data-filter="home">Home</button>
          </div>
          <label class="search"><i class="fa-solid fa-magnifying-glass"></i><input id="productSearch" type="search" placeholder="Search products..."></label>
        </div>

        <div class="products" id="productGrid"></div>
      </div>
    </section>

    <section class="sale" id="sale">
      <div class="container sale-grid">
        <div>
          <div class="eyebrow" style="color:#bbaaff">Limited-time offer</div>
          <h2>Flash sale ends soon.</h2>
          <p>Up to 40% off carefully chosen favorites. Once they're gone, they're gone.</p>
          <a href="#shop" class="btn btn-light">Shop the sale <i class="fa-solid fa-bolt"></i></a>
        </div>
        <div class="countdown" aria-label="Flash sale countdown">
          <div class="time-box" id="days">00<span>Days</span></div>
          <div class="time-box" id="hours">00<span>Hours</span></div>
          <div class="time-box" id="mins">00<span>Mins</span></div>
          <div class="time-box" id="secs">00<span>Secs</span></div>
        </div>
      </div>
    </section>

    <section class="section quotes" id="reviews">
      <div class="container">
        <div class="section-head"><div><div class="eyebrow">Customer love</div><h2>A little note from our people.</h2></div></div>
        <div class="testimonials">
          <article class="quote"><i class="fa-solid fa-quote-left"></i><p>"Everything feels more premium than expected. The delivery was quick, beautifully packed, and the product is perfect."</p><div class="person"><img src="https://i.pravatar.cc/100?img=47" alt="Maya"><div><b>Maya Patel</b><small>Verified customer</small></div></div></article>
          <article class="quote"><i class="fa-solid fa-quote-left"></i><p>"NexusShop has become my go-to for gifts. The collection is actually curated, not just endless scrolling."</p><div class="person"><img src="https://i.pravatar.cc/100?img=12" alt="Jordan"><div><b>Jordan Lee</b><small>Verified customer</small></div></div></article>
          <article class="quote"><i class="fa-solid fa-quote-left"></i><p>"Great design, fair prices, and a checkout experience that took less than a minute. Exactly how online shopping should feel."</p><div class="person"><img src="https://i.pravatar.cc/100?img=32" alt="Sam"><div><b>Sam Rivera</b><small>Verified customer</small></div></div></article>
        </div>
      </div>
    </section>

    <section class="section container">
      <div class="newsletter">
        <div><h2>Good things, in your inbox.</h2><p>New arrivals, private offers, and a little inspiration — no noise.</p></div>
        <form class="subscribe" onsubmit="subscribe(event)">
          <input type="email" required placeholder="Your email address">
          <button class="btn" type="submit">Join the list</button>
        </form>
      </div>
    </section>
  </main>

  <footer>
    <div class="container footer-grid">
      <div>
        <a class="logo" href="#">Nexus<span>Shop</span></a>
        <p>Curated goods for living well, working smart, and feeling inspired.</p>
        <div class="socials"><a href="#"><i class="fa-brands fa-instagram"></i></a><a href="#"><i class="fa-brands fa-tiktok"></i></a><a href="#"><i class="fa-brands fa-pinterest"></i></a></div>
      </div>
      <div><h4>Shop</h4><a href="#shop">New arrivals</a><a href="#sale">Flash sale</a><a href="#categories">Categories</a></div>
      <div><h4>Help</h4><a href="#">Shipping & returns</a><a href="#">Contact us</a><a href="#">Track order</a></div>
      <div><h4>About</h4><a href="#">Our story</a><a href="#">Journal</a><a href="#">Careers</a></div>
    </div>
    <div class="container copyright">© 2026 NexusShop. Designed for discovery.</div>
  </footer>

  <div class="overlay" id="overlay" onclick="toggleCart(false)"></div>
  <aside class="drawer" id="cartDrawer" aria-label="Shopping cart">
    <div class="drawer-head"><h3>Your bag (<span id="drawerCount">0</span>)</h3><button class="icon-btn" onclick="toggleCart(false)" aria-label="Close cart"><i class="fa-solid fa-xmark"></i></button></div>
    <div class="cart-items" id="cartItems"><p class="empty">Your bag is waiting for something lovely.</p></div>
    <div class="cart-bottom">
      <div class="cart-total"><span>Total</span><span id="cartTotal">$0.00</span></div>
      <button class="btn btn-primary checkout" onclick="checkout()">Secure checkout <i class="fa-solid fa-lock"></i></button>
    </div>
  </aside>
  <div class="toast" id="toast"></div>

  <script>
    const products = [
      { id: 1, name: "Aura Wireless Headphones", price: 129, old: 159, category: "tech", tag: "Best seller", image: "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=600&q=85" },
      { id: 2, name: "Luna Everyday Tote", price: 84, category: "style", tag: "New", image: "https://images.unsplash.com/photo-1584917865442-de89df76afd3?auto=format&fit=crop&w=600&q=85" },
      { id: 3, name: "Halo Table Lamp", price: 72, old: 89, category: "home", tag: "20% off", image: "https://images.unsplash.com/photo-1507473885765-e6ed057f782c?auto=format&fit=crop&w=600&q=85" },
      { id: 4, name: "Minimal Smart Watch", price: 149, category: "tech", tag: "Popular", image: "https://images.unsplash.com/photo-1546868871-7041f2a55e12?auto=format&fit=crop&w=600&q=85" },
      { id: 5, name: "Cloud Knit Sweater", price: 68, category: "style", tag: "New", image: "https://images.unsplash.com/photo-1434389677669-e08b4cac3105?auto=format&fit=crop&w=600&q=85" },
      { id: 6, name: "Scented Ritual Candle", price: 34, category: "home", tag: "Favorite", image: "https://images.unsplash.com/photo-1603006905003-be475563bc59?auto=format&fit=crop&w=600&q=85" },
      { id: 7, name: "Pocket Camera Pro", price: 249, old: 289, category: "tech", tag: "Save $40", image: "https://images.unsplash.com/photo-1516035069371-29a1b244cc32?auto=format&fit=crop&w=600&q=85" },
      { id: 8, name: "Stoneware Tea Set", price: 56, category: "home", tag: "Limited", image: "https://images.unsplash.com/photo-1514228742587-6b1558fcca3d?auto=format&fit=crop&w=600&q=85" }
    ];

    let cart = [];
    let activeFilter = "all";

    function renderProducts() {
      const search = document.getElementById("productSearch").value.toLowerCase();
      const visible = products.filter(p =>
        (activeFilter === "all" || p.category === activeFilter) &&
        p.name.toLowerCase().includes(search)
      );

      document.getElementById("productGrid").innerHTML = visible.map(p => `
        <article class="product">
          <div class="product-image">
            <img src="${p.image}" alt="${p.name}">
            <span class="label">${p.tag}</span>
            <button class="wish" onclick="toggleWish(this)" aria-label="Add ${p.name} to wishlist"><i class="fa-regular fa-heart"></i></button>
          </div>
          <div class="product-body">
            <div class="rating"><i class="fa-solid fa-star"></i> 4.8 <span>(124)</span></div>
            <h3>${p.name}</h3>
            <div class="product-foot">
              <div class="price">$${p.price.toFixed(2)} ${p.old ? `<span class="old-price">$${p.old.toFixed(2)}</span>` : ""}</div>
              <button class="add" onclick="addToCart(${p.id})" aria-label="Add ${p.name} to cart"><i class="fa-solid fa-plus"></i></button>
            </div>
          </div>
        </article>
      `).join("") || `<p class="muted">No products found. Try another search.</p>`;
    }

    function addToCart(id) {
      const item = cart.find(x => x.id === id);
      if (item) item.quantity++;
      else cart.push({ ...products.find(p => p.id === id), quantity: 1 });
      renderCart();
      showToast("Added to your bag.");
    }

    function renderCart() {
      const totalQty = cart.reduce((sum, item) => sum + item.quantity, 0);
      const total = cart.reduce((sum, item) => sum + item.price * item.quantity, 0);
      document.getElementById("cartCount").textContent = totalQty;
      document.getElementById("drawerCount").textContent = totalQty;
      document.getElementById("cartTotal").textContent = `$${total.toFixed(2)}`;

      document.getElementById("cartItems").innerHTML = cart.length ? cart.map(item => `
        <div class="cart-item">
          <img src="${item.image}" alt="${item.name}">
          <div>
            <h4>${item.name}</h4><p>$${item.price.toFixed(2)}</p>
            <div class="quantity">
              <button onclick="changeQuantity(${item.id}, -1)">−</button>
              <span>${item.quantity}</span>
              <button onclick="changeQuantity(${item.id}, 1)">+</button>
            </div>
          </div>
          <button class="remove" onclick="removeItem(${item.id})" aria-label="Remove ${item.name}"><i class="fa-solid fa-trash-can"></i></button>
        </div>
      `).join("") : `<p class="empty">Your bag is waiting for something lovely.</p>`;
    }

    function changeQuantity(id, amount) {
      const item = cart.find(x => x.id === id);
      item.quantity += amount;
      if (item.quantity < 1) removeItem(id);
      else renderCart();
    }

    function removeItem(id) {
      cart = cart.filter(item => item.id !== id);
      renderCart();
      showToast("Item removed from your bag.");
    }

    function toggleCart(force) {
      const drawer = document.getElementById("cartDrawer");
      const isOpen = typeof force === "boolean" ? force : !drawer.classList.contains("show");
      drawer.classList.toggle("show", isOpen);
      document.getElementById("overlay").classList.toggle("show", isOpen);
      document.body.classList.toggle("no-scroll", isOpen);
    }

    function toggleWish(button) {
      button.classList.toggle("active");
      const icon = button.querySelector("i");
      const active = button.classList.contains("active");
      icon.className = active ? "fa-solid fa-heart" : "fa-regular fa-heart";
      showToast(active ? "Saved to your wishlist." : "Removed from your wishlist.");
    }

    function showToast(message) {
      const toast = document.getElementById("toast");
      toast.textContent = message;
      toast.classList.add("show");
      clearTimeout(window.toastTimer);
      window.toastTimer = setTimeout(() => toast.classList.remove("show"), 2600);
    }

    function subscribe(event) {
      event.preventDefault();
      event.target.reset();
      showToast("Welcome to the Nexus list!");
    }

    function checkout() {
      if (!cart.length) return showToast("Your bag is currently empty.");
      showToast("Demo checkout complete — thanks for shopping!");
      cart = [];
      renderCart();
      toggleCart(false);
    }

    function toggleMenu() {
      showToast("Mobile navigation demo — use the links above to explore.");
    }

    document.querySelectorAll(".filter").forEach(button => {
      button.addEventListener("click", () => {
        document.querySelector(".filter.active").classList.remove("active");
        button.classList.add("active");
        activeFilter = button.dataset.filter;
        renderProducts();
      });
    });

    document.getElementById("productSearch").addEventListener("input", renderProducts);

    const saleEnd = Date.now() + 1000 * 60 * 60 * 28;
    function updateCountdown() {
      const remaining = Math.max(0, saleEnd - Date.now());
      const seconds = Math.floor(remaining / 1000);
      const values = [
        ["days", Math.floor(seconds / 86400)],
        ["hours", Math.floor(seconds % 86400 / 3600)],
        ["mins", Math.floor(seconds % 3600 / 60)],
        ["secs", seconds % 60]
      ];
      values.forEach(([id, value]) => document.getElementById(id).childNodes[0].nodeValue = String(value).padStart(2, "0"));
    }

    renderProducts();
    renderCart();
    updateCountdown();
    setInterval(updateCountdown, 1000);
  </script>
</body>
</html>


I want to make the theme as dust give me code
