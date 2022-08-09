@extends('template_blog.content')
@section('isi')

<h4 class="recent">{{ $categoryName }}</h4>
@if($data->isEmpty())
    <h5 class="text-center text-secondary recent">Tidak Ada Hasil</h5>
@endif

@foreach($data as $post_terbaru)
<?php $content = substr($post_terbaru->content, 0, 170); ?>
<div class="row konten">
  <div class="col-lg-6">
    <a href="{{ route('blog.isi', $post_terbaru->slug) }}"><img src="{{ asset($post_terbaru->gambar) }}" alt="image1" class="img-fluid mx-auto d-block"></a>
  </div>
  <div class="col-lg-6">
    <div class="card border-0">
      <div class="card-body">
        <a href="{{ route('blog.isi', $post_terbaru->slug) }}">
          <h4 class="card-title">{{ $post_terbaru->judul }}</h4>
        </a>
        <a href="{{ route('blog.category',$post_terbaru->category->slug)}}">
          <h6 class="card-subtitle mb-2 text-muted">{{ $post_terbaru->category->name }}</h6>
        </a>
        <p class="card-text">{!! $content !!} <a href="{{ route('blog.isi', $post_terbaru->slug) }}">...Baca Lebih Lanjut</a></p>

        Tag : @foreach($post_terbaru->tags as $tag) <a href="{{ route('blog.tag',$tag->slug)}}"><span class="badge badge-info">{{ $tag->name }}</span></a>
        @endforeach
        <h6>{{ $post_terbaru->created_at->translatedformat('l, j F Y') }}</h6>
      </div>
    </div>
  </div>
</div>
@endforeach

<div class="container">
    <div class="row justify-content-center align-items-center">
        <div class="col-md-4 mt-5 d-flex justify-content-center">
        {{ $data->links() }}
        </div>
    </div>
</div>
@endsection