  <style>
    :root {
      /* Dust & Earth Color Palette */
      --ink: #2b2623;            /* Deep umber/charcoal */
      --muted: #7d7268;          /* Warm silt gray */
      --paper: #f7f4ee;          /* Chalky desert dust / natural linen */
      --soft: #ebe5db;           /* Pale sandstone */
      --line: #dfd7cc;           /* Dry clay border */
      --violet: #b56c4d;         /* Terracotta / dusty rust accent */
      --pink: #9a533a;           /* Deep baked clay badge */
      --gold: #c98a42;           /* Ochre dust rating stars */
      --green: #6e7f5e;          /* Dry sage / olive checkmark */
      --radius: 16px;
      --shadow: 0 16px 36px rgba(43, 38, 35, .08);
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
      color: var(--violet); font-size: .78rem; letter-spacing: .14em;
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
      padding: 13px 22px; border-radius: 999px; font-weight: 700;
      transition: transform .2s, box-shadow .2s, background .2s;
    }
    .btn:hover { transform: translateY(-2px); box-shadow: 0 10px 22px rgba(43, 38, 35, .15); }
    .btn-primary { color: #fff; background: var(--ink); }
    .btn-light { color: var(--ink); background: var(--soft); }
    .btn-outline { color: var(--ink); background: transparent; border: 1px solid var(--line); }

    .topbar {
      background: #231f1c; color: #dfd7cc; font-size: .82rem; padding: 9px 0;
      text-align: center;
    }
    .topbar strong { color: #eed5a7; }

    header {
      position: sticky; top: 0; z-index: 50; background: rgba(247, 244, 238, .92);
      backdrop-filter: blur(14px); border-bottom: 1px solid var(--line);
    }
    .nav {
      height: 76px; display: flex; align-items: center; justify-content: space-between; gap: 25px;
    }
    .logo { font-size: 1.45rem; font-weight: 800; letter-spacing: -.06em; }
    .logo span { color: var(--violet); }
    .links { display: flex; gap: 24px; color: #5a5148; font-weight: 600; }
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
      radial-gradient(circle at 85% 15%, #e6ded1 0, transparent 24rem),
      linear-gradient(135deg, #f2ece2 0%, var(--paper) 62%);
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
      box-shadow: 20px 20px 0 #ded6c9; object-fit: cover; height: 440px;
    }
    .floating-card {
      position: absolute; z-index: 2; display: flex; gap: 10px; align-items: center;
      padding: 12px 15px; background: rgba(247, 244, 238, .94); backdrop-filter: blur(10px);
      border-radius: 14px; border: 1px solid var(--line); box-shadow: var(--shadow); font-size: .85rem;
    }
    .floating-card i { color: var(--gold); font-size: 1.2rem; }
    .float-one { left: 0; top: 65px; }
    .float-two { right: 8px; bottom: 28px; }

    .categories { display: grid; grid-template-columns: repeat(4, 1fr); gap: 18px; }
    .category {
      min-height: 205px; position: relative; overflow: hidden; padding: 22px; border-radius: var(--radius);
      background: #ebe5dc; border: 1px solid var(--line); transition: transform .25s, box-shadow .25s;
    }
    .category:nth-child(2) { background: #f0e6df; }
    .category:nth-child(3) { background: #e7eae0; }
    .category:nth-child(4) { background: #ede2d3; }
    .category:hover { transform: translateY(-6px); box-shadow: var(--shadow); }
    .category h3 { position: relative; z-index: 1; margin: 0; font-size: 1.15rem; }
    .category span { position: relative; z-index: 1; color: var(--muted); font-size: .88rem; }
    .category img {
      position: absolute; width: 138px; right: -16px; bottom: -18px; border-radius: 50%;
      aspect-ratio: 1; object-fit: cover; transform: rotate(-8deg); opacity: .88;
    }

    .toolbar {
      display: flex; align-items: center; justify-content: space-between; gap: 16px; margin-bottom: 28px;
    }
    .filters { display: flex; gap: 9px; flex-wrap: wrap; }
    .filter {
      padding: 9px 16px; color: var(--muted); background: var(--soft); border-radius: 999px; font-weight: 700;
    }
    .filter.active, .filter:hover { color: #fff; background: var(--ink); }
    .search {
      display: flex; align-items: center; min-width: 250px; padding: 10px 14px; border: 1px solid var(--line);
      border-radius: 12px; background: var(--soft);
    }
    .search input { width: 100%; border: 0; outline: 0; margin-left: 8px; background: transparent; }

    .products { display: grid; grid-template-columns: repeat(4, 1fr); gap: 20px; }
    .product {
      position: relative; overflow: hidden; background: #fffcf8; border: 1px solid var(--line); border-radius: var(--radius);
      transition: transform .25s, box-shadow .25s;
    }
    .product:hover { transform: translateY(-6px); box-shadow: var(--shadow); }
    .product-image { position: relative; height: 245px; overflow: hidden; background: var(--soft); }
    .product-image img { width: 100%; height: 100%; object-fit: cover; transition: transform .5s; }
    .product:hover img { transform: scale(1.08); }
    .label {
      position: absolute; top: 13px; left: 13px; padding: 5px 9px; border-radius: 8px;
      color: white; background: var(--violet); font-size: .72rem; font-weight: 700;
    }
    .wish {
      position: absolute; top: 10px; right: 10px; width: 36px; height: 36px; border-radius: 50%;
      background: var(--paper); color: var(--ink); box-shadow: 0 4px 12px rgba(43,38,35,.08);
    }
    .wish.active { color: var(--pink); }
    .product-body { padding: 17px; }
    .rating { color: var(--gold); font-size: .77rem; }
    .rating span { color: var(--muted); margin-left: 4px; }
    .product h3 { margin: 7px 0 5px; font-size: 1rem; }
    .product-foot { display: flex; align-items: center; justify-content: space-between; margin-top: 13px; }
    .price { font-weight: 800; font-size: 1.1rem; }
    .old-price { color: #a99e93; text-decoration: line-through; font-size: .84rem; margin-left: 5px; }
    .add { width: 37px; height: 37px; border-radius: 11px; color: white; background: var(--ink); }

    .sale {
      overflow: hidden; position: relative; color: #fffcf8; background: #332d29; padding: 58px 0;
    }
    .sale:before {
      content: ""; position: absolute; width: 440px; height: 440px; border-radius: 50%;
      top: -240px; right: 5%; background: var(--violet); opacity: 0.35;
    }
    .sale-grid { position: relative; display: grid; grid-template-columns: 1fr auto; align-items: center; gap: 30px; }
    .sale h2 { margin: 7px 0; }
    .sale p { color: #d6ccbe; }
    .countdown { display: flex; gap: 10px; }
    .time-box {
      width: 70px; padding: 11px 6px; text-align: center; border-radius: 12px;
      color: var(--ink); background: var(--paper); font-weight: 800;
    }
    .time-box span { display: block; color: var(--muted); font-size: .65rem; font-weight: 600; text-transform: uppercase; }

    .quotes { background: var(--soft); }
    .testimonials { display: grid; grid-template-columns: repeat(3, 1fr); gap: 20px; }
    .quote { padding: 26px; background: var(--paper); border: 1px solid var(--line); border-radius: var(--radius); }
    .quote > i { color: var(--violet); font-size: 1.5rem; }
    .quote p { margin: 14px 0 20px; color: #534b43; }
    .person { display: flex; align-items: center; gap: 11px; font-size: .87rem; }
    .person img { width: 40px; height: 40px; border-radius: 50%; object-fit: cover; }
    .person b { display: block; }
    .person small { color: var(--muted); }

    .newsletter {
      display: grid; grid-template-columns: 1fr auto; align-items: center; gap: 30px;
      padding: 42px; border-radius: 28px; color: white; background: linear-gradient(110deg, #9d5d42, #754430);
    }
    .newsletter h2 { margin: 0 0 8px; }
    .newsletter p { margin: 0; color: #f4dcd1; }
    .subscribe { display: flex; padding: 5px; min-width: 365px; border-radius: 999px; background: var(--paper); }
    .subscribe input { flex: 1; min-width: 0; padding: 9px 14px; border: 0; outline: 0; border-radius: 999px; background: transparent; }
    .subscribe button { color: white; background: var(--ink); }

    footer { margin-top: 88px; padding: 60px 0 22px; color: #dfd8cf; background: #231e1a; }
    .footer-grid { display: grid; grid-template-columns: 1.7fr repeat(3, 1fr); gap: 35px; }
    .footer-grid .logo { color: white; }
    .footer-grid p { color: #a1968a; max-width: 290px; }
    footer h4 { color: white; margin-top: 0; }
    footer a { display: block; color: #beb4a7; margin: 9px 0; font-size: .9rem; }
    footer a:hover { color: #fff; }
    .socials { display: flex; gap: 9px; }
    .socials a { display: grid; place-items: center; width: 34px; height: 34px; margin: 0; border-radius: 50%; background: #352e28; }
    .copyright { margin-top: 42px; padding-top: 18px; border-top: 1px solid #362f29; color: #877d71; font-size: .82rem; }

    .overlay { position: fixed; inset: 0; z-index: 90; opacity: 0; visibility: hidden; background: rgba(30, 24, 20, .55); transition: .25s; }
    .overlay.show { opacity: 1; visibility: visible; }
    .drawer {
      position: fixed; top: 0; right: 0; z-index: 100; width: min(420px, 100%); height: 100vh;
      display: flex; flex-direction: column; padding: 22px; background: var(--paper); transform: translateX(100%); transition: transform .3s;
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
    .quantity button { width: 25px; height: 25px; background: var(--soft); }
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
      .subscribe input, .subscribe button { width: 100%; padding: 13px; background: var(--paper); }
      .subscribe button { color: var(--ink); }
      .footer-grid { grid-template-columns: 1fr 1fr; gap: 26px; }
    }
  </style>
