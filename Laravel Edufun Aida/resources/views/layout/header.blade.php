<style>
    .navbar .nav-link.active {
        color: rgb(24, 135, 102) !important; /* Warna untuk link aktif */
    }

    .navbar .dropdown-toggle.active {
        color: rgb(24, 135, 102) !important; /* Warna untuk dropdown aktif */
    }

    .dropdown-item.active {
        background-color: rgba(24, 135, 102, 0.1); /* Latar belakang untuk item aktif */
        color: rgb(24, 135, 102) !important; /* Warna teks untuk item aktif */
    }

    .flex-grow {
        flex: 1;
    }
    </style>
    
<div class="row">
    <div class="col-6 bg-light d-flex align-items-center">
        <img src="{{ asset('img/logo.png') }}" class="img-fluid" alt="..." width="120" height="auto">
    </div>
    <div class="col-6 d-flex align-items-center bg-light">
        <nav class="navbar navbar-expand-sm navbar-light fw-bolder text-dark">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item me-5">
                    <a class="nav-link {{ request()->routeIs('funedu.home') ? 'active' : '' }}" href="{{ route('funedu.home') }}">Home</a>
                </li>
                <li class="nav-item dropdown me-5">
                    <a class="nav-link dropdown-toggle {{ request()->is('funedu/category*') ? 'active' : '' }}" 
                       data-bs-toggle="dropdown" 
                       href="#" 
                       role="button" 
                       aria-expanded="false">
                        Category
                    </a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item {{ request()->routeIs('funedu.catmulmed') ? 'active' : '' }}" href="{{ route('funedu.catmulmed') }}">Interactive Multimedia</a></li>
                        <li><a class="dropdown-item {{ request()->routeIs('funedu.catsofteng') ? 'active' : '' }}" href="{{ route('funedu.catsofteng') }}">Software Engineering</a></li>
                    </ul>
                </li>                
                <li class="nav-item me-5">
                    <a class="nav-link {{ request()->routeIs('funedu.writers') ? 'active' : '' }}" href="{{ route('funedu.writers') }}">Writers</a>
                </li>
                <li class="nav-item me-5">
                    <a class="nav-link {{ request()->routeIs('funedu.aboutus') ? 'active' : '' }}" href="{{ route('funedu.aboutus') }}">About Us</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link {{ request()->routeIs('funedu.popular') ? 'active' : '' }}" href="{{ route('funedu.popular') }}">Popular</a>
                </li>
            </ul>
        </nav>
    </div>
</div>

    