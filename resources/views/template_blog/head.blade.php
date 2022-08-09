<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Font -->
    <link href="https://fonts.googleapis.com/css2?family=Viga&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
    
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <!-- My CSS -->
    <link rel="stylesheet" href="{{ asset('public/css/mystyle3.css') }}">

    <link rel="icon" href="{{ asset('public/frontend/img/logo.png') }}" type="image/ico">
    <title>Komputer 101</title>
</head>

<body>
    <!-- Search Modal -->
    <div class="modal fade" tabindex="-1" role="dialog" id="searchModal" style="padding-left:17px;">
        <div class="modal-dialog search-modal" role="document">
            <div class="modal-content">
                <div class="modal-body">
                    <form action="{{ route('blog.cari') }}" method="GET">
                            <div class="row align-items-center no-gutters">
                                <div class="col-sm-9">
                                    <input type="search" id="input-cari" name="q" placeholder="Masukkan kata kunci disini" aria-label="Masukkan kata kunci disini" class="form-control form-control-lg">
                                </div>
                                <div class="col-sm-3">
                                    <button type="submit" class="btn btn-primary">
                                        <i class="fas fa-search"></i> Cari Post
                                    </button>
                                </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- Akhir Search Modal -->
    
    <!-- Navbar -->
    <nav class="navbar sticky-top navbar-expand-lg navbar-light bg-light">
        <div class="container">
            <a class="navbar-brand" href="{{ route('public') }}">Komputer 101</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                <div class="navbar-nav ml-auto">
                    <a class="nav-link active" href="{{ route('public') }}">Home<span class="sr-only"></span></a>
                    <a class="nav-link active" id="tombol-cari" data-toggle="modal" data-target="#searchModal" href="">Cari<span class="sr-only"></span></a>
                    <a class="nav-link active" href="{{ route('blog.list') }}">List Post<span class="sr-only"></span></a>
                    <a class="nav-link active" href="{{ route('blog.about_us') }}">About Us<span class="sr-only"></span></a>
                </div>
            </div>
        </div>
    </nav>
    <!-- Akhir Navbar -->
    <!-- Jumbotron -->
    <div class="jumbotron jumbotron-fluid">
        <div class="container">
            <h1 class="jumbotron-text">Take <span>Care</span> of Your Personal<span> Computer</span></h1>
        </div>
    </div>
    <!-- Akhir Jumbotron -->

    <!-- Container -->
    <div class="container">
        <!-- Panel -->
        <div class="row justify-content-center">
            <div class="col-10 info-panel">
                <div class="row">
                    <div class="col-lg">
                        <a href="{{ url('list-category/news') }}"><img src="{{ asset('public/frontend/img/employee.png') }}" alt="employee" class="float-left">
                            <h4>News</h4>
                            <p>Berita tentang perkembangan teknologi komputer terkini</p>
                        </a>
                    </div>
                    <div class="col-lg">
                        <a href="{{ url('list-category/maintenance') }}"><img src="{{ asset('public/frontend/img/maintenance1.png') }}" alt="hires" class="float-left">
                            <h4>Maintenance</h4>
                            <p>Tips dan trik merawat komputer dengan baik dan benar</p>
                        </a>
                    </div>
                    <div class="col-lg">
                        <a href="{{ url('list-category/troubleshooting') }}"><img src="{{ asset('public/frontend/img/troubleshooting2.png') }}" alt="security" class="float-left">
                            <h4>Troubleshooting</h4>
                            <p>Cara untuk memperbaiki kerusakan umum pada komputer</p>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Akhir Panel -->
    </div>
    <!-- Akhir Container -->