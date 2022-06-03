<header class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow">
    {{-- <div class="col-md-3 col-lg-2 me-0">
        <a class="navbar-brand px-3" href="/dashboard">
            WPU Blog
        </a>
        <a class="navbar-brand ms-3" href="/">Visit Site</a>
    </div> --}}
    <div class="navbar-brand col-md-3 col-lg-2 ms-auto px-3">
        <div class="nav-item dropdown">
            <a class="nav-link title-dashboard dropdown-toggle text-white" href="/dashboard" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                WPU Blog
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                <div>
                    <a class="dropdown-item" href="/">
                        <i class="bi bi-layout-text-sidebar-reverse"></i>
                        View Site
                    </a>
                </div>
            </div>
        </div>
    </div>
    <button class="navbar-toggler position-absolute d-md-none collapsed" type="button" data-bs-toggle="collapse"
        data-bs-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false"
        aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <input class="form-control form-control-dark w-100" type="text" placeholder="Search" aria-label="Search">
    <div class="navbar-nav">
        <div class="nav-item text-nowrap">
            {{-- <a class="nav-link px-3" href="#">Sign out</a> --}}
            <form action="/logout" method="post">
                @csrf
                <button type="submit" class="nav-link px-3 bg-dark border-0 ">
                    {{-- <i class="bi bi-box-arrow-in-left"></i> --}}
                    Logout<span data-feather="log-out"></span>
                </button>
            </form>
        </div>
    </div>
</header>
