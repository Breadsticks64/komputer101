@extends('template_blog.content')
@section('isi')
@foreach($data as $isi_post)

<div class="container">
    <div class="row justify-content-center align-items-center">
        <div class="col-10 isi-post-style">
            <p class="judul-post">{{ $isi_post->judul }}</p>
            <br><br>
            <img class="mx-auto d-block gambar-post" src="{{ asset($isi_post->gambar) }}" alt="Gambar post">
            <br><br>
            <p>{!! $isi_post->content !!}</p>
            <br>
            <hr>
            <div class="container">
            <div class="row">
                @foreach($isi_post->tags as $tag)
                <a href="{{ route('blog.tag',$tag->slug)}}" class="badge badge-info tag mt-2 mr-2">{{ $tag->name }}</a>
                @endforeach
            </div>
        </div>
            <p class="card-text"><small class="text-muted">{{ $isi_post->created_at->translatedformat('l, j F Y') }}</small></p>
        </div>
    </div>
</div>

@endforeach
@endsection