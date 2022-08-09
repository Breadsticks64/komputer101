@extends('template_backend.home')
@section('sub-judul', 'Kategori')
@section('content')

@if(Session::has('success'))
<div class="alert alert-success" role="alert">
    {{ Session('success') }}
</div>

@endif

<a href="{{ route('category.create') }}" class="btn btn-info btn-sm">Tambah Kategori </a><br><br>

<table class="table table-striped table-hoves table-sm table-bordered">
    <thead>
        <tr>
            <th style="width:5%;">No</th>
            <th style="width:40%;">Nama Kategori</th>
            <th>Action</th>
        </tr>
    </thead>
    <tbody>
        @foreach ($category as $result => $hasil)
        <tr>
            <td>{{ $result + $category->firstitem() }}</td>
            <td>{{ $hasil-> name }}</td>
            <td>
                <form action="{{ route('category.destroy', $hasil->id) }}" method="POST">
                    @csrf
                    @method('delete')
                    <a href="{{ route('category.edit', $hasil->id ) }}" class="btn btn-primary btn-sm">Edit</a>
                    <!--<button type="submit" class="btn btn-danger btn-sm">Delete</button>-->
                    <button type="button" class="btn btn-danger btn-sm" data-toggle="modal" data-target="#hapusCategory{{ $hasil->id }}">Delete</button>
                    <div class="modal fade" tabindex="-1" role="dialog" id="hapusCategory{{ $hasil->id }}">
                        <div class="modal-dialog" role="document">
                          <div class="modal-content">
                            <div class="modal-header">
                              <h5 class="modal-title">Hapus Kategori</h5>
                              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                              </button>
                            </div>
                            <div class="modal-body">
                              <p>Apakah anda yakin ingin menghapus kategori {{ $hasil-> name }}?</p>
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
{{ $category->links() }}

@endsection