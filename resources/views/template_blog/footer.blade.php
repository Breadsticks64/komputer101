<!-- Footer -->
<footer class="footer page-footer font-small white text-light bg-dark pt-4">
    <div class="container-fluid text-center text-md-left">
        <div class="row justify-content-around">
            <div class="col-md-3 mb-md-0 mb-3">
                <h5 class="text-uppercase">Komputer 101</h5>
                <ul class="list-unstyled">
                    <li>
                        <a class="text-light" href="{{ route('public') }}">Home<span class="sr-only"></span></a>
                    </li>
                    <li>
                        <a class="text-light" id="tombol-cari-2" data-toggle="modal" data-target="#searchModal" href="">Cari<span class="sr-only"></span></a>
                    </li>
                    <li>
                        <a class="text-light" href="{{ route('blog.list') }}">List Post<span class="sr-only"></span></a>
                    </li>
                    <li>
                        <a class="text-light" href="{{ route('blog.about_us') }}">About Us<span class="sr-only"></span></a>
                    </li>
                </ul>
            </div>
            <div class="col-md-3 mb-md-0 mb-3">
                <h5 class="text-uppercase">Kategori</h5>
                <ul class="list-unstyled">
                    @foreach($category1 as $hasil)
                    <li>
                      <a href="{{ route('blog.category',$hasil->slug)}}" class="text-light">{{ $hasil->name }}</a>
                    </li>
                    @endforeach
                  </ul>
            </div>
            <div class="col-md-3 mb-md-0 mb-3">
                <h5 class="text-uppercase">Hubungi Kami</h5>
                <ul class="list-unstyled">
                    <li>
                        <i class="fas fa-envelope fa-fw"></i>
                        <a href="mailto:support@komputer101.com" class="text-light">support@komputer101.com</a>
                    </li>
                    <li>
                        <i class="fas fa-phone"></i> +6281258403759
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <hr class="clearfix w-100 d-md-none">
    <div class="footer-copyright text-center py-2">Copyright © 2022 
        <a href="{{ route('public') }}" class="text-light">Komputer 101</a>. All Rights Reserved.
    </div>
</footer>
<!-- Footer -->

<!-- Javascript Libraries -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
<script src="{{ asset('public/js/myscript.js') }}"></script>
</body>
</html>