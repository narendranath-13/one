<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>NexusShop — Modern E-Commerce Experience</title>

    <!-- Google Fonts & Font Awesome 6 -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;600;700;800&family=Playfair+Display:ital,wght@0,600;0,700;1,400&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">

    <style>
        /* ==========================================================================
           ROOT DESIGN TOKENS
           ========================================================================== */
        :root {
            --primary: #0f172a;
            --primary-rgb: 15, 23, 42;
            --accent: #2563eb;
            --accent-hover: #1d4ed8;
            --accent-soft: #eff6ff;
            --coral: #f43f5e;
            --success: #10b981;
            --warning: #f59e0b;

            --bg: #f8fafc;
            --surface: #ffffff;
            --surface-subtle: #f1f5f9;
            --border: #e2e8f0;
            --border-focus: #94a3b8;

            --text-main: #0f172a;
            --text-muted: #64748b;
            --text-light: #94a3b8;

            --radius-sm: 8px;
            --radius-md: 14px;
            --radius-lg: 20px;
            --radius-full: 9999px;

            --shadow-xs: 0 1px 2px rgba(0, 0, 0, 0.04);
            --shadow-sm: 0 2px 8px rgba(15, 23, 42, 0.05);
            --shadow-md: 0 8px 24px rgba(15, 23, 42, 0.08);
            --shadow-lg: 0 20px 40px -15px rgba(15, 23, 42, 0.12);
            --shadow-drawer: -8px 0 32px rgba(15, 23, 42, 0.15);

            --transition-fast: 0.15s ease;
            --transition-smooth: 0.25s cubic-bezier(0.16, 1, 0.3, 1);
            --container: 1200px;
        }

        /* Dark mode ready variables support */
        @media (prefers-color-scheme: dark) {
            :root {
                --bg: #090d16;
                --surface: #111827;
                --surface-subtle: #1e293b;
                --border: #1f293d;
                --border-focus: #334155;
                --text-main: #f8fafc;
                --text-muted: #94a3b8;
                --text-light: #64748b;
                --accent-soft: rgba(37, 99, 235, 0.12);
            }
        }

        /* ==========================================================================
           RESET & ESSENTIALS
           ========================================================================== */
        *, *::before, *::after {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }
        html {
            scroll-behavior: smooth;
        }
        body {
            font-family: 'Plus Jakarta Sans', system-ui, -apple-system, sans-serif;
            background-color: var(--bg);
            color: var(--text-main);
            line-height: 1.5;
            -webkit-font-smoothing: antialiased;
            overflow-x: hidden;
            padding-bottom: 70px; /* safe area for mobile bottom bar */
        }
        @media (min-width: 769px) {
            body { padding-bottom: 0; }
        }
        a {
            color: inherit;
            text-decoration: none;
        }
        button, input, select {
            font-family: inherit;
            color: inherit;
        }
        button {
            cursor: pointer;
            border: none;
            background: none;
        }
        img {
            max-width: 100%;
            height: auto;
            display: block;
        }

        .container {
            width: 100%;
            max-width: var(--container);
            margin: 0 auto;
            padding: 0 20px;
        }

        /* ==========================================================================
           BUTTON SYSTEM
           ========================================================================== */
        .btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
            font-weight: 600;
            font-size: 14px;
            padding: 10px 22px;
            border-radius: var(--radius-full);
            transition: all var(--transition-smooth);
            white-space: nowrap;
        }
        .btn:active {
            transform: scale(0.97);
        }
        .btn-primary {
            background-color: var(--accent);
            color: #ffffff;
            box-shadow: 0 4px 14px rgba(37, 99, 235, 0.35);
        }
        .btn-primary:hover {
            background-color: var(--accent-hover);
            box-shadow: 0 6px 20px rgba(37, 99, 235, 0.45);
        }
        .btn-secondary {
            background-color: var(--surface-subtle);
            color: var(--text-main);
        }
        .btn-secondary:hover {
            background-color: var(--border);
        }
        .btn-outline {
            border: 1.5px solid var(--border);
            color: var(--text-main);
        }
        .btn-outline:hover {
            background-color: var(--surface-subtle);
            border-color: var(--border-focus);
        }
        .btn-ghost-light {
            background: rgba(255, 255, 255, 0.15);
            color: #ffffff;
            backdrop-filter: blur(10px);
            border: 1px solid rgba(255, 255, 255, 0.25);
        }
        .btn-ghost-light:hover {
            background: rgba(255, 255, 255, 0.25);
        }
        .btn-icon {
            width: 42px;
            height: 42px;
            border-radius: var(--radius-full);
            display: grid;
            place-items: center;
            background: var(--surface);
            color: var(--text-main);
            border: 1px solid var(--border);
            position: relative;
            transition: all var(--transition-fast);
        }
        .btn-icon:hover {
            background: var(--surface-subtle);
            border-color: var(--border-focus);
            transform: translateY(-1px);
        }
        .badge-counter {
            position: absolute;
            top: -4px;
            right: -4px;
            background: var(--coral);
            color: white;
            font-size: 11px;
            font-weight: 700;
            min-width: 19px;
            height: 19px;
            padding: 0 4px;
            border-radius: 999px;
            display: grid;
            place-items: center;
            border: 2px solid var(--surface);
            transition: transform 0.2s cubic-bezier(0.175, 0.885, 0.32, 1.275);
        }

        /* ==========================================================================
           HEADER & NAVIGATION
           ========================================================================== */
        header {
            position: sticky;
            top: 0;
            z-index: 100;
            background: rgba(255, 255, 255, 0.88);
            backdrop-filter: blur(16px);
            -webkit-backdrop-filter: blur(16px);
            border-bottom: 1px solid var(--border);
            transition: background var(--transition-fast);
        }
        @media (prefers-color-scheme: dark) {
            header {
                background: rgba(17, 24, 39, 0.88);
            }
        }
        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            height: 72px;
            gap: 20px;
        }
        .brand {
            display: flex;
            align-items: center;
            gap: 10px;
            font-weight: 800;
            font-size: 21px;
            letter-spacing: -0.5px;
            color: var(--text-main);
        }
        .brand-icon {
            width: 38px;
            height: 38px;
            border-radius: 12px;
            background: linear-gradient(135deg, var(--accent), #7c3aed);
            display: grid;
            place-items: center;
            color: white;
            font-size: 18px;
            box-shadow: 0 4px 12px rgba(37, 99, 235, 0.3);
        }
        .brand span span {
            color: var(--accent);
        }

        /* Search input bar */
        .search-container {
            flex: 1;
            max-width: 440px;
            position: relative;
        }
        .search-bar {
            display: flex;
            align-items: center;
            width: 100%;
            background: var(--surface-subtle);
            border: 1.5px solid transparent;
            border-radius: var(--radius-full);
            padding: 8px 16px;
            transition: all var(--transition-smooth);
        }
        .search-bar:focus-within {
            border-color: var(--accent);
            background: var(--surface);
            box-shadow: 0 0 0 4px var(--accent-soft);
        }
        .search-bar i.search-icon {
            color: var(--text-muted);
            margin-right: 10px;
            font-size: 15px;
        }
        .search-bar input {
            width: 100%;
            border: none;
            background: transparent;
            outline: none;
            font-size: 14px;
            color: var(--text-main);
        }
        .search-bar input::placeholder {
            color: var(--text-light);
        }
        .search-clear {
            display: none;
            color: var(--text-muted);
            padding: 4px;
            cursor: pointer;
        }
        .search-clear:hover {
            color: var(--text-main);
        }

        /* Desktop Nav */
        nav.nav-links {
            display: flex;
            align-items: center;
            gap: 24px;
            list-style: none;
        }
        nav.nav-links a {
            font-size: 14px;
            font-weight: 600;
            color: var(--text-muted);
            transition: color var(--transition-fast);
            position: relative;
        }
        nav.nav-links a:hover,
        nav.nav-links a.active {
            color: var(--accent);
        }
        nav.nav-links a.active::after {
            content: '';
            position: absolute;
            bottom: -6px;
            left: 0;
            right: 0;
            height: 2px;
            background: var(--accent);
            border-radius: 2px;
        }

        .header-actions {
            display: flex;
            align-items: center;
            gap: 12px;
        }

        /* ==========================================================================
           HERO SECTION
           ========================================================================== */
        .hero-banner {
            margin: 20px 0 40px;
        }
        .hero-card {
            background: linear-gradient(135deg, #091325 0%, #172554 100%);
            border-radius: var(--radius-lg);
            padding: 60px 48px;
            color: white;
            position: relative;
            overflow: hidden;
            display: grid;
            grid-template-columns: 1.2fr 0.8fr;
            align-items: center;
            gap: 40px;
            box-shadow: var(--shadow-lg);
        }
        .hero-card::after {
            content: '';
            position: absolute;
            right: -80px;
            top: -80px;
            width: 450px;
            height: 450px;
            background: radial-gradient(circle, rgba(59, 130, 246, 0.35) 0%, rgba(0,0,0,0) 70%);
            pointer-events: none;
        }
        .hero-tag {
            display: inline-flex;
            align-items: center;
            gap: 6px;
            background: rgba(255, 255, 255, 0.12);
            padding: 6px 14px;
            border-radius: var(--radius-full);
            font-size: 12px;
            font-weight: 700;
            letter-spacing: 0.5px;
            text-transform: uppercase;
            color: #93c5fd;
            margin-bottom: 18px;
            backdrop-filter: blur(10px);
        }
        .hero-content h1 {
            font-size: 46px;
            font-weight: 800;
            line-height: 1.15;
            letter-spacing: -1px;
            margin-bottom: 16px;
        }
        .hero-content h1 span {
            background: linear-gradient(to right, #93c5fd, #c4b5fd);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }
        .hero-content p {
            color: #cbd5e1;
            font-size: 16px;
            line-height: 1.6;
            margin-bottom: 28px;
            max-width: 480px;
        }
        .hero-cta {
            display: flex;
            gap: 14px;
            flex-wrap: wrap;
        }
        .hero-visual {
            position: relative;
            display: flex;
            justify-content: center;
        }
        .hero-visual img {
            border-radius: var(--radius-md);
            max-height: 320px;
            object-fit: cover;
            box-shadow: 0 20px 40px rgba(0,0,0,0.4);
            transform: perspective(1000px) rotateY(-8deg) rotateX(4deg);
            transition: transform 0.4s ease;
        }
        .hero-card:hover .hero-visual img {
            transform: perspective(1000px) rotateY(0deg) rotateX(0deg);
        }

        /* ==========================================================================
           CATEGORY FILTER PILLS
           ========================================================================== */
        .category-scroller {
            display: flex;
            align-items: center;
            gap: 10px;
            overflow-x: auto;
            padding: 10px 4px 24px;
            scroll-behavior: smooth;
            -ms-overflow-style: none;
            scrollbar-width: none;
        }
        .category-scroller::-webkit-scrollbar {
            display: none;
        }
        .cat-pill {
            display: flex;
            align-items: center;
            gap: 8px;
            padding: 10px 20px;
            background: var(--surface);
            border: 1.5px solid var(--border);
            border-radius: var(--radius-full);
            font-size: 14px;
            font-weight: 600;
            color: var(--text-muted);
            white-space: nowrap;
            transition: all var(--transition-fast);
            user-select: none;
        }
        .cat-pill:hover {
            border-color: var(--border-focus);
            color: var(--text-main);
        }
        .cat-pill.active {
            background: var(--text-main);
            color: var(--surface);
            border-color: var(--text-main);
            box-shadow: var(--shadow-sm);
        }
        .cat-pill i {
            font-size: 15px;
        }

        /* ==========================================================================
           CONTROLS & PRODUCT GRID
           ========================================================================== */
        .catalog-controls {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-bottom: 24px;
            flex-wrap: wrap;
            gap: 16px;
        }
        .catalog-title h2 {
            font-size: 24px;
            font-weight: 800;
            letter-spacing: -0.5px;
        }
        .catalog-title span {
            color: var(--text-muted);
            font-size: 14px;
            font-weight: 500;
        }
        .catalog-filter-group {
            display: flex;
            align-items: center;
            gap: 12px;
        }
        .sort-select {
            background: var(--surface);
            border: 1.5px solid var(--border);
            border-radius: var(--radius-md);
            padding: 8px 16px;
            font-size: 14px;
            font-weight: 500;
            color: var(--text-main);
            outline: none;
            cursor: pointer;
            transition: border-color var(--transition-fast);
        }
        .sort-select:focus {
            border-color: var(--accent);
        }

        /* Grid */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(260px, 1fr));
            gap: 24px;
            margin-bottom: 60px;
        }

        /* Card */
        .product-card {
            background: var(--surface);
            border-radius: var(--radius-md);
            border: 1.5px solid var(--border);
            overflow: hidden;
            display: flex;
            flex-direction: column;
            transition: all var(--transition-smooth);
            position: relative;
        }
        .product-card:hover {
            transform: translateY(-6px);
            border-color: var(--border-focus);
            box-shadow: var(--shadow-md);
        }
        .product-card .img-box {
            position: relative;
            background: var(--surface-subtle);
            aspect-ratio: 1;
            overflow: hidden;
            cursor: pointer;
        }
        .product-card .img-box img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.4s ease;
        }
        .product-card:hover .img-box img {
            transform: scale(1.06);
        }
        .product-badges {
            position: absolute;
            top: 12px;
            left: 12px;
            display: flex;
            flex-direction: column;
            gap: 6px;
            z-index: 2;
        }
        .badge-pill {
            padding: 4px 10px;
            border-radius: var(--radius-full);
            font-size: 11px;
            font-weight: 700;
            letter-spacing: 0.3px;
            text-transform: uppercase;
        }
        .badge-pill.new {
            background: var(--accent);
            color: white;
        }
        .badge-pill.sale {
            background: var(--coral);
            color: white;
        }
        .product-card .wishlist-btn {
            position: absolute;
            top: 12px;
            right: 12px;
            width: 36px;
            height: 36px;
            border-radius: var(--radius-full);
            background: rgba(255, 255, 255, 0.9);
            color: var(--text-muted);
            display: grid;
            place-items: center;
            font-size: 15px;
            backdrop-filter: blur(8px);
            transition: all var(--transition-fast);
            z-index: 2;
        }
        .product-card .wishlist-btn:hover {
            color: var(--coral);
            background: #ffffff;
            transform: scale(1.1);
        }
        .product-card .wishlist-btn.active {
            color: var(--coral);
        }
        .product-card .quick-view-overlay {
            position: absolute;
            inset: 0;
            background: rgba(0,0,0,0.25);
            display: flex;
            align-items: center;
            justify-content: center;
            opacity: 0;
            transition: opacity var(--transition-fast);
        }
        .product-card:hover .quick-view-overlay {
            opacity: 1;
        }

        .product-info {
            padding: 16px;
            flex: 1;
            display: flex;
            flex-direction: column;
        }
        .product-meta {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 6px;
        }
        .product-category {
            font-size: 12px;
            font-weight: 600;
            color: var(--text-muted);
            text-transform: uppercase;
        }
        .product-rating {
            display: flex;
            align-items: center;
            gap: 4px;
            font-size: 12px;
            font-weight: 700;
            color: #d97706;
        }
        .product-title {
            font-size: 16px;
            font-weight: 700;
            margin-bottom: 8px;
            line-height: 1.35;
            cursor: pointer;
            display: -webkit-box;
            -webkit-line-clamp: 2;
            -webkit-box-orient: vertical;
            overflow: hidden;
        }
        .product-title:hover {
            color: var(--accent);
        }
        .product-price-row {
            display: flex;
            align-items: baseline;
            gap: 8px;
            margin-top: auto;
            padding-top: 10px;
        }
        .product-price {
            font-size: 19px;
            font-weight: 800;
            color: var(--text-main);
        }
        .product-old-price {
            font-size: 13px;
            color: var(--text-light);
            text-decoration: line-through;
        }
        .product-action {
            margin-top: 14px;
        }
        .add-cart-btn {
            width: 100%;
            padding: 10px;
            border-radius: var(--radius-sm);
            background: var(--surface-subtle);
            color: var(--text-main);
            font-weight: 600;
            font-size: 14px;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
            transition: all var(--transition-fast);
        }
        .add-cart-btn:hover {
            background: var(--accent);
            color: white;
        }

        /* ==========================================================================
           FLASH DEAL SECTION
           ========================================================================== */
        .deal-card {
            background: var(--surface);
            border-radius: var(--radius-lg);
            border: 1.5px solid var(--border);
            padding: 36px;
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 40px;
            align-items: center;
            margin-bottom: 60px;
            box-shadow: var(--shadow-sm);
        }
        .deal-img-box {
            border-radius: var(--radius-md);
            overflow: hidden;
            background: var(--surface-subtle);
            aspect-ratio: 4/3;
        }
        .deal-img-box img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }
        .deal-badge {
            background: var(--coral);
            color: white;
            font-weight: 700;
            font-size: 12px;
            padding: 4px 12px;
            border-radius: var(--radius-full);
            display: inline-flex;
            align-items: center;
            gap: 6px;
            margin-bottom: 12px;
        }
        .deal-content h3 {
            font-size: 28px;
            font-weight: 800;
            margin-bottom: 10px;
        }
        .deal-content p {
            color: var(--text-muted);
            margin-bottom: 20px;
            font-size: 15px;
        }
        .countdown-boxes {
            display: flex;
            gap: 12px;
            margin-bottom: 24px;
        }
        .time-box {
            background: var(--surface-subtle);
            border: 1px solid var(--border);
            padding: 10px 14px;
            border-radius: var(--radius-sm);
            text-align: center;
            min-width: 65px;
        }
        .time-box .num {
            font-size: 22px;
            font-weight: 800;
            color: var(--text-main);
            line-height: 1.1;
        }
        .time-box .label {
            font-size: 10px;
            text-transform: uppercase;
            font-weight: 600;
            color: var(--text-muted);
            margin-top: 2px;
        }

        /* ==========================================================================
           SLIDE-OVER CART DRAWER
           ========================================================================== */
        .drawer-overlay {
            position: fixed;
            inset: 0;
            background: rgba(15, 23, 42, 0.45);
            backdrop-filter: blur(4px);
            z-index: 998;
            opacity: 0;
            visibility: hidden;
            transition: all var(--transition-smooth);
        }
        .drawer-overlay.active {
            opacity: 1;
            visibility: visible;
        }
        .cart-drawer {
            position: fixed;
            top: 0;
            right: 0;
            bottom: 0;
            width: 100%;
            max-width: 440px;
            background: var(--surface);
            box-shadow: var(--shadow-drawer);
            z-index: 999;
            transform: translateX(100%);
            transition: transform var(--transition-smooth);
            display: flex;
            flex-direction: column;
        }
        .cart-drawer.active {
            transform: translateX(0);
        }
        .cart-header {
            padding: 20px 24px;
            border-bottom: 1px solid var(--border);
            display: flex;
            align-items: center;
            justify-content: space-between;
        }
        .cart-header h3 {
            font-size: 18px;
            font-weight: 800;
            display: flex;
            align-items: center;
            gap: 8px;
        }
        .cart-body {
            flex: 1;
            overflow-y: auto;
            padding: 20px 24px;
            display: flex;
            flex-direction: column;
            gap: 16px;
        }
        .empty-cart-state {
            margin: auto;
            text-align: center;
            color: var(--text-muted);
            padding: 20px;
        }
        .empty-cart-state i {
            font-size: 48px;
            color: var(--text-light);
            margin-bottom: 16px;
        }
        .cart-item {
            display: flex;
            gap: 14px;
            padding-bottom: 16px;
            border-bottom: 1px solid var(--border);
        }
        .cart-item img {
            width: 72px;
            height: 72px;
            border-radius: var(--radius-sm);
            object-fit: cover;
            background: var(--surface-subtle);
        }
        .cart-item-details {
            flex: 1;
        }
        .cart-item-title {
            font-size: 14px;
            font-weight: 700;
            margin-bottom: 4px;
            line-height: 1.3;
        }
        .cart-item-price {
            font-size: 15px;
            font-weight: 700;
            color: var(--accent);
            margin-bottom: 8px;
        }
        .cart-item-controls {
            display: flex;
            align-items: center;
            gap: 8px;
        }
        .qty-btn {
            width: 26px;
            height: 26px;
            border-radius: 6px;
            background: var(--surface-subtle);
            border: 1px solid var(--border);
            display: grid;
            place-items: center;
            font-size: 12px;
        }
        .qty-btn:hover {
            background: var(--border);
        }
        .qty-display {
            font-size: 13px;
            font-weight: 600;
            min-width: 20px;
            text-align: center;
        }
        .remove-item-btn {
            margin-left: auto;
            color: var(--text-light);
            font-size: 14px;
            padding: 4px;
        }
        .remove-item-btn:hover {
            color: var(--coral);
        }
        .cart-footer {
            padding: 20px 24px;
            border-top: 1px solid var(--border);
            background: var(--surface-subtle);
        }
        .cart-summary-line {
            display: flex;
            justify-content: space-between;
            font-size: 14px;
            color: var(--text-muted);
            margin-bottom: 8px;
        }
        .cart-summary-line.total {
            font-size: 17px;
            font-weight: 800;
            color: var(--text-main);
            margin-top: 12px;
            padding-top: 12px;
            border-top: 1px dashed var(--border);
        }
        .checkout-btn {
            width: 100%;
            margin-top: 16px;
            padding: 14px;
            border-radius: var(--radius-sm);
        }

        /* ==========================================================================
           QUICK VIEW MODAL
           ========================================================================== */
        .modal-overlay {
            position: fixed;
            inset: 0;
            background: rgba(15, 23, 42, 0.5);
            backdrop-filter: blur(4px);
            z-index: 1000;
            display: grid;
            place-items: center;
            padding: 20px;
            opacity: 0;
            visibility: hidden;
            transition: all var(--transition-smooth);
        }
        .modal-overlay.active {
            opacity: 1;
            visibility: visible;
        }
        .quick-view-card {
            background: var(--surface);
            border-radius: var(--radius-lg);
            width: 100%;
            max-width: 760px;
            overflow: hidden;
            display: grid;
            grid-template-columns: 1fr 1.2fr;
            box-shadow: var(--shadow-lg);
            position: relative;
            transform: scale(0.95);
            transition: transform var(--transition-smooth);
        }
        .modal-overlay.active .quick-view-card {
            transform: scale(1);
        }
        .modal-close-btn {
            position: absolute;
            top: 16px;
            right: 16px;
            width: 36px;
            height: 36px;
            border-radius: 50%;
            background: var(--surface);
            border: 1px solid var(--border);
            display: grid;
            place-items: center;
            z-index: 10;
        }
        .modal-close-btn:hover {
            background: var(--surface-subtle);
        }
        .qv-img-box {
            background: var(--surface-subtle);
            height: 100%;
        }
        .qv-img-box img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }
        .qv-content {
            padding: 32px;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }
        .qv-title {
            font-size: 24px;
            font-weight: 800;
            margin-bottom: 8px;
        }
        .qv-desc {
            color: var(--text-muted);
            font-size: 14px;
            margin: 14px 0 20px;
            line-height: 1.6;
        }

        /* ==========================================================================
           TOAST NOTIFICATION
           ========================================================================== */
        .toast-container {
            position: fixed;
            bottom: 24px;
            right: 24px;
            z-index: 1001;
            display: flex;
            flex-direction: column;
            gap: 10px;
            pointer-events: none;
        }
        .toast {
            background: var(--primary);
            color: #ffffff;
            padding: 12px 20px;
            border-radius: var(--radius-md);
            font-size: 14px;
            font-weight: 600;
            display: flex;
            align-items: center;
            gap: 10px;
            box-shadow: var(--shadow-md);
            transform: translateY(20px);
            opacity: 0;
            transition: all var(--transition-smooth);
            pointer-events: auto;
        }
        .toast.show {
            transform: translateY(0);
            opacity: 1;
        }
        .toast.success i { color: var(--success); }
        .toast.info i { color: var(--accent); }

        /* ==========================================================================
           MOBILE BOTTOM ACTION BAR
           ========================================================================== */
        .mobile-bottom-nav {
            display: none;
            position: fixed;
            bottom: 0;
            left: 0;
            right: 0;
            height: 60px;
            background: var(--surface);
            border-top: 1px solid var(--border);
            z-index: 90;
            justify-content: space-around;
            align-items: center;
            padding: 0 10px;
        }
        .bottom-nav-item {
            display: flex;
            flex-direction: column;
            align-items: center;
            font-size: 11px;
            font-weight: 600;
            color: var(--text-muted);
            gap: 4px;
            position: relative;
        }
        .bottom-nav-item.active {
            color: var(--accent);
        }
        .bottom-nav-item i {
            font-size: 18px;
        }

        /* ==========================================================================
           FOOTER
           ========================================================================== */
        footer {
            background: var(--surface);
            border-top: 1px solid var(--border);
            padding: 60px 0 30px;
            margin-top: 80px;
        }
        .footer-grid {
            display: grid;
            grid-template-columns: 2fr 1fr 1fr 1.5fr;
            gap: 40px;
            margin-bottom: 40px;
        }
        .footer-desc {
            color: var(--text-muted);
            font-size: 14px;
            margin-top: 12px;
            line-height: 1.6;
            max-width: 320px;
        }
        .footer-links h4 {
            font-size: 15px;
            font-weight: 700;
            margin-bottom: 16px;
        }
        .footer-links ul {
            list-style: none;
            display: flex;
            flex-direction: column;
            gap: 10px;
        }
        .footer-links a {
            color: var(--text-muted);
            font-size: 14px;
            transition: color var(--transition-fast);
        }
        .footer-links a:hover {
            color: var(--accent);
        }

        /* ==========================================================================
           RESPONSIVE BREAKPOINTS
           ========================================================================== */
        @media (max-width: 992px) {
            .hero-card {
                grid-template-columns: 1fr;
                padding: 40px 30px;
            }
            .hero-visual { display: none; }
            .deal-card { grid-template-columns: 1fr; }
            .quick-view-card { grid-template-columns: 1fr; max-height: 90vh; overflow-y: auto; }
            .qv-img-box { height: 260px; }
            .footer-grid { grid-template-columns: 1fr 1fr; }
        }
        @media (max-width: 768px) {
            nav.nav-links, .header-search-desktop { display: none; }
            .mobile-bottom-nav { display: flex; }
            .hero-content h1 { font-size: 32px; }
            .catalog-controls { flex-direction: column; align-items: flex-start; }
            .footer-grid { grid-template-columns: 1fr; }
            .cart-drawer { max-width: 100%; }
        }
    </style>
</head>
<body>

    <!-- ===== HEADER ===== -->
    <header>
        <div class="container header-inner">
            <!-- Brand -->
            <a href="#" class="brand">
                <div class="brand-icon"><i class="fas fa-layer-group"></i></div>
                <span>Nexus<span>Shop</span></span>
            </a>

            <!-- Search Bar (Desktop) -->
            <div class="search-container header-search-desktop">
                <div class="search-bar">
                    <i class="fas fa-search search-icon"></i>
                    <input type="text" id="searchInput" placeholder="Search gadgets, sneakers, laptops..." aria-label="Search" autocomplete="off">
                    <i class="fas fa-times-circle search-clear" id="searchClear"></i>
                </div>
            </div>

            <!-- Desktop Nav Links -->
            <nav>
                <ul class="nav-links">
                    <li><a href="#products" class="active">Discover</a></li>
                    <li><a href="#deals">Flash Deals</a></li>
                    <li><a href="#reviews">Reviews</a></li>
                </ul>
            </nav>

            <!-- Actions -->
            <div class="header-actions">
                <button class="btn-icon" id="wishlistHeaderBtn" title="Wishlist" aria-label="Wishlist">
                    <i class="far fa-heart"></i>
                    <span class="badge-counter" id="wishlistCount">0</span>
                </button>
                <button class="btn-icon" id="cartOpenBtn" title="Cart" aria-label="Cart">
                    <i class="fas fa-shopping-bag"></i>
                    <span class="badge-counter" id="cartCount">0</span>
                </button>
            </div>
        </div>
    </header>

    <main class="container">
        <!-- ===== HERO BANNER ===== -->
        <section class="hero-banner">
            <div class="hero-card">
                <div class="hero-content">
                    <span class="hero-tag"><i class="fas fa-sparkles"></i> 2026 Season Drops</span>
                    <h1>Curated Tech & <br><span>Minimalist Goods</span></h1>
                    <p>Experience ultra-responsive performance & timeless lifestyle picks. Designed for daily comfort, engineered for longevity.</p>
                    <div class="hero-cta">
                        <a href="#products" class="btn btn-primary"><i class="fas fa-arrow-down"></i> Explore Products</a>
                        <a href="#deals" class="btn btn-ghost-light"><i class="fas fa-bolt"></i> View Flash Deals</a>
                    </div>
                </div>
                <div class="hero-visual">
                    <img src="https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=600&q=80" alt="Premium Headphones" />
                </div>
            </div>
        </section>

        <!-- ===== CATEGORY PILLS FILTER ===== -->
        <div class="category-scroller" id="categoryPills">
            <button class="cat-pill active" data-cat="all"><i class="fas fa-border-all"></i> All Items</button>
            <button class="cat-pill" data-cat="Smartphones"><i class="fas fa-mobile-screen"></i> Smartphones</button>
            <button class="cat-pill" data-cat="Laptops"><i class="fas fa-laptop"></i> Laptops</button>
            <button class="cat-pill" data-cat="Footwear"><i class="fas fa-shoe-prints"></i> Footwear</button>
            <button class="cat-pill" data-cat="Gadgets"><i class="fas fa-headphones"></i> Audio & Gadgets</button>
            <button class="cat-pill" data-cat="Accessories"><i class="fas fa-clock"></i> Accessories</button>
        </div>

        <!-- ===== PRODUCT CATALOG & CONTROLS ===== -->
        <section id="products">
            <div class="catalog-controls">
                <div class="catalog-title">
                    <h2>Trending Gear</h2>
                    <span id="itemsFoundCount">Showing all items</span>
                </div>
                <div class="catalog-filter-group">
                    <select class="sort-select" id="sortSelect" aria-label="Sort products">
                        <option value="featured">Featured Picks</option>
                        <option value="price-low">Price: Low to High</option>
                        <option value="price-high">Price: High to Low</option>
                        <option value="rating">Highest Rated</option>
                    </select>
                </div>
            </div>

            <!-- Dynamic Product Grid -->
            <div class="products-grid" id="productsGrid"></div>
        </section>

        <!-- ===== FLASH DEAL SECTION ===== -->
        <section id="deals">
            <div class="deal-card">
                <div class="deal-img-box">
                    <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80" alt="MacBook Air M2" loading="lazy">
                </div>
                <div class="deal-content">
                    <div class="deal-badge"><i class="fas fa-stopwatch"></i> Deal of the Day</div>
                    <h3>MacBook Air M2 — Midnight</h3>
                    <p>Impossibly thin with unmatched battery life. Enjoy up to 18 hours of performance backed by Apple Silicon.</p>
                    <div class="product-price-row" style="margin-bottom: 16px;">
                        <span class="product-price" style="font-size: 28px;">$999</span>
                        <span class="product-old-price" style="font-size: 18px;">$1,199</span>
                    </div>

                    <!-- Countdown Timer -->
                    <div class="countdown-boxes">
                        <div class="time-box">
                            <div class="num" id="dealHours">14</div>
                            <div class="label">Hours</div>
                        </div>
                        <div class="time-box">
                            <div class="num" id="dealMins">42</div>
                            <div class="label">Mins</div>
                        </div>
                        <div class="time-box">
                            <div class="num" id="dealSecs">58</div>
                            <div class="label">Secs</div>
                        </div>
                    </div>

                    <button class="btn btn-primary" id="claimDealBtn">
                        <i class="fas fa-cart-shopping"></i> Claim Deal Now
                    </button>
                </div>
            </div>
        </section>
    </main>

    <!-- ===== CART DRAWER ===== -->
    <div class="drawer-overlay" id="drawerOverlay"></div>
    <aside class="cart-drawer" id="cartDrawer" aria-label="Shopping Cart">
        <div class="cart-header">
            <h3><i class="fas fa-shopping-bag"></i> Your Cart (<span id="cartDrawerCount">0</span>)</h3>
            <button class="btn-icon" id="cartCloseBtn" aria-label="Close cart"><i class="fas fa-times"></i></button>
        </div>
        <div class="cart-body" id="cartItemsContainer">
            <!-- Dynamic Cart Items or Empty state -->
        </div>
        <div class="cart-footer">
            <div class="cart-summary-line">
                <span>Subtotal</span>
                <span id="cartSubtotal">$0.00</span>
            </div>
            <div class="cart-summary-line">
                <span>Shipping</span>
                <span style="color:var(--success); font-weight:700;">FREE</span>
            </div>
            <div class="cart-summary-line total">
                <span>Estimated Total</span>
                <span id="cartTotal">$0.00</span>
            </div>
            <button class="btn btn-primary checkout-btn" id="checkoutBtn">
                Proceed to Checkout <i class="fas fa-arrow-right"></i>
            </button>
        </div>
    </aside>

    <!-- ===== QUICK VIEW MODAL ===== -->
    <div class="modal-overlay" id="quickViewModal">
        <div class="quick-view-card">
            <button class="modal-close-btn" id="modalCloseBtn"><i class="fas fa-times"></i></button>
            <div class="qv-img-box">
                <img id="qvImage" src="" alt="Product">
            </div>
            <div class="qv-content">
                <span class="product-category" id="qvCategory">Category</span>
                <h3 class="qv-title" id="qvTitle">Product Title</h3>
                <div class="product-rating" id="qvRating">★★★★★ <span>(0)</span></div>
                <p class="qv-desc" id="qvDesc">Comprehensive product description highlighting ergonomic specs, premium material construction, and seamless functionality.</p>
                <div class="product-price-row" style="margin-bottom: 20px;">
                    <span class="product-price" id="qvPrice" style="font-size: 24px;">$0</span>
                    <span class="product-old-price" id="qvOldPrice">$0</span>
                </div>
                <button class="btn btn-primary" id="qvAddToCartBtn">
                    <i class="fas fa-cart-plus"></i> Add to Cart
                </button>
            </div>
        </div>
    </div>

    <!-- ===== TOAST CONTAINER ===== -->
    <div class="toast-container" id="toastContainer"></div>

    <!-- ===== MOBILE BOTTOM NAVIGATION ===== -->
    <div class="mobile-bottom-nav">
        <a href="#products" class="bottom-nav-item active">
            <i class="fas fa-compass"></i>
            <span>Shop</span>
        </a>
        <button class="bottom-nav-item" id="mobileSearchBtn">
            <i class="fas fa-search"></i>
            <span>Search</span>
        </button>
        <button class="bottom-nav-item" id="mobileWishlistBtn">
            <i class="far fa-heart"></i>
            <span>Saved</span>
        </button>
        <button class="bottom-nav-item" id="mobileCartBtn">
            <i class="fas fa-shopping-bag"></i>
            <span>Cart</span>
        </button>
    </div>

    <!-- ===== FOOTER ===== -->
    <footer>
        <div class="container">
            <div class="footer-grid">
                <div>
                    <a href="#" class="brand">
                        <div class="brand-icon"><i class="fas fa-layer-group"></i></div>
                        <span>Nexus<span>Shop</span></span>
                    </a>
                    <p class="footer-desc">Crafted for smooth navigation, quick checkouts, and reliable customer experiences globally.</p>
                </div>
                <div class="footer-links">
                    <h4>Categories</h4>
                    <ul>
                        <li><a href="#">Audio & Gadgets</a></li>
                        <li><a href="#">Smart Devices</a></li>
                        <li><a href="#">Footwear & Apparel</a></li>
                        <li><a href="#">Laptops & Desks</a></li>
                    </ul>
                </div>
                <div class="footer-links">
                    <h4>Customer Care</h4>
                    <ul>
                        <li><a href="#">Track Order</a></li>
                        <li><a href="#">Free 30-Day Returns</a></li>
                        <li><a href="#">Help Center</a></li>
                        <li><a href="#">Contact Support</a></li>
                    </ul>
                </div>
                <div class="footer-links">
                    <h4>Payment Security</h4>
                    <p class="footer-desc" style="margin-bottom: 12px;">We use industry-standard encryption for all transactions.</p>
                    <div style="font-size: 24px; color: var(--text-muted); display:flex; gap:12px;">
                        <i class="fab fa-cc-visa"></i>
                        <i class="fab fa-cc-mastercard"></i>
                        <i class="fab fa-cc-apple-pay"></i>
                        <i class="fab fa-cc-stripe"></i>
                    </div>
                </div>
            </div>
            <div style="text-align:center; padding-top:24px; border-top:1px solid var(--border); font-size:13px; color:var(--text-light);">
                &copy; <span id="year"></span> NexusShop. Minimalist E-Commerce Interface.
            </div>
        </div>
    </footer>

    <!-- ==========================================================================
       JAVASCRIPT APP LOGIC
       ========================================================================== -->
    <script>
        // --- DATA ---
        const PRODUCTS = [
            { id: 1, title: 'iPhone 14 Pro Max 256GB', price: 1099, oldPrice: 1199, rating: 5, reviews: 128, badge: 'New', category: 'Smartphones', img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80', desc: 'Featuring Dynamic Island, Always-On display, and 48MP camera for mind-blowing detail.' },
            { id: 2, title: 'MacBook Pro 14" M3 Pro', price: 1999, oldPrice: null, rating: 4.8, reviews: 86, badge: '', category: 'Laptops', img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80', desc: 'Blazing fast Apple silicon, Liquid Retina XDR screen, and phenomenal battery life.' },
            { id: 3, title: 'Apple Watch Ultra 2', price: 349, oldPrice: 399, rating: 4.9, reviews: 214, badge: 'Sale', category: 'Accessories', img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80', desc: 'The most capable and rugged smartwatch designed for endurance and outdoor exploration.' },
            { id: 4, title: 'Nike Air Max Pulse 270', price: 150, oldPrice: null, rating: 4.5, reviews: 53, badge: '', category: 'Footwear', img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80', desc: 'Engineered street-style footwear loaded with responsive Max Air heel cushioning.' },
            { id: 5, title: 'Sony Alpha A7 IV Mirrorless', price: 2499, oldPrice: null, rating: 5, reviews: 42, badge: 'New', category: 'Gadgets', img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80', desc: 'Hybrid full-frame photo and 4K 60p video tool for creative professionals.' },
            { id: 6, title: 'Chanel Minimalist Cologne', price: 120, oldPrice: null, rating: 4.7, reviews: 189, badge: '', category: 'Accessories', img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80', desc: 'Clean, captivating fragrance combining citrus and warm aromatic accents.' },
            { id: 7, title: 'Everyday Weatherproof Rucksack', price: 79, oldPrice: 99, rating: 4.3, reviews: 67, badge: 'Sale', category: 'Accessories', img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80', desc: 'Water-resistant laptop compartment with anti-theft compartments for commuting.' },
            { id: 8, title: 'Sony WH-1000XM5 ANC', price: 399, oldPrice: null, rating: 4.9, reviews: 156, badge: '', category: 'Gadgets', img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80', desc: 'Industry-leading noise cancellation powered by dual processors and 8 microphones.' }
        ];

        // --- APP STATE ---
        let cart = [];
        let wishlist = new Set();
        let selectedCategory = 'all';
        let searchQuery = '';
        let sortBy = 'featured';
        let activeQuickViewId = null;

        // --- DOM REFERENCES ---
        const productsGrid = document.getElementById('productsGrid');
        const cartDrawer = document.getElementById('cartDrawer');
        const drawerOverlay = document.getElementById('drawerOverlay');
        const cartOpenBtn = document.getElementById('cartOpenBtn');
        const cartCloseBtn = document.getElementById('cartCloseBtn');
        const cartCountBadge = document.getElementById('cartCount');
        const cartDrawerCount = document.getElementById('cartDrawerCount');
        const cartItemsContainer = document.getElementById('cartItemsContainer');
        const cartSubtotalEl = document.getElementById('cartSubtotal');
        const cartTotalEl = document.getElementById('cartTotal');
        const wishlistCountBadge = document.getElementById('wishlistCount');
        const searchInput = document.getElementById('searchInput');
        const searchClear = document.getElementById('searchClear');
        const sortSelect = document.getElementById('sortSelect');
        const categoryPills = document.getElementById('categoryPills');
        const itemsFoundCount = document.getElementById('itemsFoundCount');
        const toastContainer = document.getElementById('toastContainer');
        const quickViewModal = document.getElementById('quickViewModal');
        const modalCloseBtn = document.getElementById('modalCloseBtn');

        // --- TOAST NOTIFICATIONS ---
        function showToast(message, type = 'info', icon = 'fa-check-circle') {
            const toast = document.createElement('div');
            toast.className = `toast ${type}`;
            toast.innerHTML = `<i class="fas ${icon}"></i> <span>${message}</span>`;
            toastContainer.appendChild(toast);

            setTimeout(() => toast.classList.add('show'), 10);
            setTimeout(() => {
                toast.classList.remove('show');
                setTimeout(() => toast.remove(), 300);
            }, 2600);
        }

        // --- RENDER PRODUCTS ---
        function renderProducts() {
            // Filter
            let filtered = PRODUCTS.filter(p => {
                const matchesCat = selectedCategory === 'all' || p.category === selectedCategory;
                const matchesSearch = p.title.toLowerCase().includes(searchQuery.toLowerCase()) || 
                                      p.category.toLowerCase().includes(searchQuery.toLowerCase());
                return matchesCat && matchesSearch;
            });

            // Sort
            if (sortBy === 'price-low') filtered.sort((a, b) => a.price - b.price);
            else if (sortBy === 'price-high') filtered.sort((a, b) => b.price - a.price);
            else if (sortBy === 'rating') filtered.sort((a, b) => b.rating - a.rating);

            itemsFoundCount.textContent = `Showing ${filtered.length} item${filtered.length === 1 ? '' : 's'}`;

            if (filtered.length === 0) {
                productsGrid.innerHTML = `
                    <div style="grid-column: 1/-1; text-align: center; padding: 60px 20px; color: var(--text-muted);">
                        <i class="fas fa-box-open" style="font-size: 40px; margin-bottom: 12px; opacity:0.5;"></i>
                        <p style="font-size: 16px; font-weight:600;">No items found matching your filters.</p>
                        <button class="btn btn-secondary" style="margin-top: 14px;" onclick="resetFilters()">Reset All Filters</button>
                    </div>`;
                return;
            }

            productsGrid.innerHTML = filtered.map(p => {
                const isFavorited = wishlist.has(p.id);
                return `
                    <article class="product-card" data-id="${p.id}">
                        <div class="img-box" onclick="openQuickView(${p.id})">
                            <img src="${p.img}" alt="${escapeHtml(p.title)}" loading="lazy">
                            <div class="product-badges">
                                ${p.badge ? `<span class="badge-pill ${p.badge.toLowerCase()}">${p.badge}</span>` : ''}
                            </div>
                            <button class="wishlist-btn ${isFavorited ? 'active' : ''}" 
                                onclick="event.stopPropagation(); toggleWishlist(${p.id}, this)"
                                aria-label="Save to Wishlist">
                                <i class="${isFavorited ? 'fas' : 'far'} fa-heart"></i>
                            </button>
                            <div class="quick-view-overlay">
                                <span class="btn btn-ghost-light" style="padding: 6px 14px; font-size: 12px;">Quick Look</span>
                            </div>
                        </div>
                        <div class="product-info">
                            <div class="product-meta">
                                <span class="product-category">${p.category}</span>
                                <span class="product-rating"><i class="fas fa-star"></i> ${p.rating}</span>
                            </div>
                            <h4 class="product-title" onclick="openQuickView(${p.id})">${escapeHtml(p.title)}</h4>
                            <div class="product-price-row">
                                <span class="product-price">$${p.price.toLocaleString()}</span>
                                ${p.oldPrice ? `<span class="product-old-price">$${p.oldPrice.toLocaleString()}</span>` : ''}
                            </div>
                            <div class="product-action">
                                <button class="add-cart-btn" onclick="addToCart(${p.id})">
                                    <i class="fas fa-plus"></i> Add to Cart
                                </button>
                            </div>
                        </div>
                    </article>
                `;
            }).join('');
        }

        // --- CART OPERATIONS ---
        function addToCart(productId) {
            const product = PRODUCTS.find(p => p.id === productId);
            if (!product) return;

            const existing = cart.find(item => item.id === productId);
            if (existing) {
                existing.qty++;
            } else {
                cart.push({ ...product, qty: 1 });
            }

            updateCartUI();
            showToast(`Added <strong>${product.title}</strong> to cart`, 'success', 'fa-check');
            triggerBadgeAnimation(cartCountBadge);
        }

        function updateCartQty(productId, delta) {
            const index = cart.findIndex(item => item.id === productId);
            if (index === -1) return;

            cart[index].qty += delta;
            if (cart[index].qty <= 0) {
                cart.splice(index, 1);
            }
            updateCartUI();
        }

        function removeFromCart(productId) {
            cart = cart.filter(item => item.id !== productId);
            updateCartUI();
        }

        function updateCartUI() {
            const totalCount = cart.reduce((sum, item) => sum + item.qty, 0);
            const subtotal = cart.reduce((sum, item) => sum + (item.price * item.qty), 0);

            cartCountBadge.textContent = totalCount;
            cartDrawerCount.textContent = totalCount;
            cartSubtotalEl.textContent = `$${subtotal.toLocaleString()}`;
            cartTotalEl.textContent = `$${subtotal.toLocaleString()}`;

            if (cart.length === 0) {
                cartItemsContainer.innerHTML = `
                    <div class="empty-cart-state">
                        <i class="fas fa-shopping-bag"></i>
                        <p style="font-weight:700; color:var(--text-main); margin-bottom:4px;">Your cart is empty</p>
                        <p style="font-size:13px;">Looks like you haven't added anything yet.</p>
                    </div>`;
                return;
            }

            cartItemsContainer.innerHTML = cart.map(item => `
                <div class="cart-item">
                    <img src="${item.img}" alt="${escapeHtml(item.title)}">
                    <div class="cart-item-details">
                        <div class="cart-item-title">${escapeHtml(item.title)}</div>
                        <div class="cart-item-price">$${(item.price * item.qty).toLocaleString()}</div>
                        <div class="cart-item-controls">
                            <button class="qty-btn" onclick="updateCartQty(${item.id}, -1)">−</button>
                            <span class="qty-display">${item.qty}</span>
                            <button class="qty-btn" onclick="updateCartQty(${item.id}, 1)">+</button>
                            <button class="remove-item-btn" onclick="removeFromCart(${item.id})" title="Remove item">
                                <i class="far fa-trash-alt"></i>
                            </button>
                        </div>
                    </div>
                </div>
            `).join('');
        }

        // --- WISHLIST OPERATIONS ---
        function toggleWishlist(productId, btnElement) {
            const product = PRODUCTS.find(p => p.id === productId);
            if (!product) return;

            if (wishlist.has(productId)) {
                wishlist.delete(productId);
                showToast(`Removed from your wishlist`, 'info', 'fa-heart-broken');
            } else {
                wishlist.add(productId);
                showToast(`Saved <strong>${product.title}</strong>`, 'info', 'fa-heart');
                triggerBadgeAnimation(wishlistCountBadge);
            }
            wishlistCountBadge.textContent = wishlist.size;
            renderProducts();
        }

        // --- QUICK VIEW MODAL ---
        function openQuickView(productId) {
            const product = PRODUCTS.find(p => p.id === productId);
            if (!product) return;
            activeQuickViewId = product.id;

            document.getElementById('qvImage').src = product.img;
            document.getElementById('qvCategory').textContent = product.category;
            document.getElementById('qvTitle').textContent = product.title;
            document.getElementById('qvDesc').textContent = product.desc;
            document.getElementById('qvPrice').textContent = `$${product.price.toLocaleString()}`;
            document.getElementById('qvOldPrice').textContent = product.oldPrice ? `$${product.oldPrice.toLocaleString()}` : '';
            document.getElementById('qvRating').innerHTML = `★★★★★ <span>(${product.reviews} customer reviews)</span>`;

            quickViewModal.classList.add('active');
        }

        function closeQuickView() {
            quickViewModal.classList.remove('active');
        }

        // --- UI HELPERS ---
        function triggerBadgeAnimation(badge) {
            badge.style.transform = 'scale(1.4)';
            setTimeout(() => badge.style.transform = 'scale(1)', 200);
        }

        function openDrawer() {
            cartDrawer.classList.add('active');
            drawerOverlay.classList.add('active');
        }

        function closeDrawer() {
            cartDrawer.classList.remove('active');
            drawerOverlay.classList.remove('active');
        }

        function escapeHtml(text) {
            return String(text).replace(/[&<>"']/g, s => ({
                '&': '&amp;', '<': '&lt;', '>': '&gt;', '"': '&quot;', "'": '&#39;'
            }[s]));
        }

        function resetFilters() {
            selectedCategory = 'all';
            searchQuery = '';
            searchInput.value = '';
            searchClear.style.display = 'none';
            document.querySelectorAll('.cat-pill').forEach(btn => btn.classList.toggle('active', btn.dataset.cat === 'all'));
            renderProducts();
        }

        // --- DEAL COUNTDOWN TIMER ---
        (function setupCountdown() {
            let totalSeconds = 14 * 3600 + 42 * 60 + 58;
            setInterval(() => {
                if (totalSeconds <= 0) return;
                totalSeconds--;
                const hrs = Math.floor(totalSeconds / 3600);
                const mins = Math.floor((totalSeconds % 3600) / 60);
                const secs = totalSeconds % 60;
                document.getElementById('dealHours').textContent = String(hrs).padStart(2, '0');
                document.getElementById('dealMins').textContent = String(mins).padStart(2, '0');
                document.getElementById('dealSecs').textContent = String(secs).padStart(2, '0');
            }, 1000);
        })();

        // --- EVENT LISTENERS ---
        // Cart Toggle
        cartOpenBtn.addEventListener('click', openDrawer);
        cartCloseBtn.addEventListener('click', closeDrawer);
        drawerOverlay.addEventListener('click', closeDrawer);

        // Mobile Nav Triggers
        document.getElementById('mobileCartBtn').addEventListener('click', openDrawer);
        document.getElementById('mobileSearchBtn').addEventListener('click', () => {
            searchInput.focus();
            window.scrollTo({ top: 0, behavior: 'smooth' });
        });
        document.getElementById('mobileWishlistBtn').addEventListener('click', () => {
            showToast(`You have ${wishlist.size} saved product(s)`, 'info', 'fa-heart');
        });

        // Search Handlers
        searchInput.addEventListener('input', (e) => {
            searchQuery = e.target.value.trim();
            searchClear.style.display = searchQuery.length ? 'block' : 'none';
            renderProducts();
        });
        searchClear.addEventListener('click', () => {
            searchInput.value = '';
            searchQuery = '';
            searchClear.style.display = 'none';
            renderProducts();
            searchInput.focus();
        });

        // Sort Handler
        sortSelect.addEventListener('change', (e) => {
            sortBy = e.target.value;
            renderProducts();
        });

        // Category Pills Handler
        categoryPills.addEventListener('click', (e) => {
            const btn = e.target.closest('.cat-pill');
            if (!btn) return;
            document.querySelectorAll('.cat-pill').forEach(p => p.classList.remove('active'));
            btn.classList.add('active');
            selectedCategory = btn.dataset.cat;
            renderProducts();
        });

        // Modal Close Handlers
        modalCloseBtn.addEventListener('click', closeQuickView);
        quickViewModal.addEventListener('click', (e) => {
            if (e.target === quickViewModal) closeQuickView();
        });
        document.getElementById('qvAddToCartBtn').addEventListener('click', () => {
            if (activeQuickViewId) addToCart(activeQuickViewId);
            closeQuickView();
        });

        // Flash Deal Button
        document.getElementById('claimDealBtn').addEventListener('click', () => {
            addToCart(2); // Adds MacBook
            openDrawer();
        });

        // Checkout Button
        document.getElementById('checkoutBtn').addEventListener('click', () => {
            if (cart.length === 0) {
                showToast('Add items to cart before checkout', 'info', 'fa-info-circle');
                return;
            }
            showToast('Redirecting to secure payment checkout...', 'success', 'fa-lock');
            setTimeout(() => {
                alert('💳 Checkout demo ready! Your items are reserved.');
            }, 800);
        });

        // Current Year in Footer
        document.getElementById('year').textContent = new Date().getFullYear();

        // Initialize App
        renderProducts();
        updateCartUI();
    </script>
</body>
</html>
