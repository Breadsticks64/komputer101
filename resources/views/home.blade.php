@extends('template_backend.home')
@section('sub-judul', 'Dashboard')
@section('content')
<div class="row">
  <div class="col-md-8">
    <div class="card-deck">
        <div class="card shadow-sm">
          <div class="card-body">
            <h5 class="card-title h5">Jumlah Post</h5>
            <p class="h2 font-weight-bold">{{ $postsCount }}</p>
          </div>
        </div>
        
        <div class="card shadow-sm">
          <div class="card-body">
            <h5 class="card-title h5">Jumlah Kategori</h5>
            <p class="h2 font-weight-bold">{{ $categoryCount }}</p>
          </div>
        </div>
        <div class="card shadow-sm">
          <div class="card-body">
            <h5 class="card-title h5">Jumlah Tag</h5>
            <p class="h2 font-weight-bold">{{ $tagsCount }}</p>
          </div>
        </div>
      </div>
    </div>
</div>
@endsection