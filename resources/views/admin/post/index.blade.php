@extends('template_backend.home')
@section('sub-judul', 'Post')
@section('content')

@if(Session::has('success'))
<div class="alert alert-success" role="alert">
    {{ Session('success') }}
</div>

@endif

<a href="{{ route('post.create') }}" class="btn btn-info btn-sm">Tambah Post </a><br><br>

<table class="table table-striped table-hoves table-sm table-bordered">
    <thead>
        <tr>
            <th style="width:5%;">No</th>
            <th style="width:35%;">Nama Post</th>
            <th>Kategori</th>
            <th>Tag</th>
            <th>Creator</td>
            <th>Thumbnail</th>
            <th style="width:15%;">Action</th>
        </tr>
    </thead>
    <tbody>
        @foreach ($post as $result => $hasil)
        <tr>
            <td>{{ $result + $post->firstitem() }}</td>
            <td>{{ $hasil-> judul }}</td>
            <td>{{ $hasil-> category->name }}</td>
            <td>@foreach($hasil->tags as $tag)
                
                    <h6 class="badge badge-pill badge-info">{{ $tag->name }}</h6>
                
                @endforeach
            </td>
            <td>{{ $hasil->users->name }}</td>
            <td><img src="{{ asset($hasil->gambar) }}" alt="gambar" class="img-fluid" style="width:100px"></td>
            <td>
                <form action="{{ route('post.destroy', $hasil->id) }}" method="POST">
                    @csrf
                    @method('delete')
                    <a href="{{ route('post.edit', $hasil->id ) }}" class="btn btn-primary btn-sm">Edit</a>
                    <!--<button type="submit" class="btn btn-danger btn-sm">Delete</button>-->
                    <button type="button" class="btn btn-danger btn-sm" data-toggle="modal" data-target="#hapusPost{{ $hasil->id }}">Delete</button>
                    <div class="modal fade" tabindex="-1" role="dialog" id="hapusPost{{ $hasil->id }}">
                        <div class="modal-dialog" role="document">
                          <div class="modal-content">
                            <div class="modal-header">
                              <h5 class="modal-title">Hapus Post</h5>
                              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                              </button>
                            </div>
                            <div class="modal-body">
                              <p>Apakah anda yakin ingin menghapus post {{ $hasil-> judul }}?</p>
                            </div>
                            <div class="modal-footer bg-whitesmoke br">
                              <button type="submit" class="btn btn-danger">Ya</button>
                              <button type="button" class="btn btn-primary" data-dismiss="modal">Tidak</button>
                            </div>
                          </div>
                        </div>
                    </div>
                </form>
            </td>
        </tr>
        @endforeach

    </tbody>
</table>
{{ $post->links() }}

@endsection