@extends('layout.app')

@section('title', 'Daftar Mobil')

@section('content')
<a href="{{ route('car.create') }}" class="btn btn-primary mb-3">Tambah Mobil</a>

@if(session('message'))
    <div class="alert alert-success">
        {{ session('message') }}
    </div>
@endif

<table class="table table-bordered">
    <thead>
        <tr>
            <th>Model</th>
            <th>Merk</th>
            <th>Warna</th>
            <th>Tahun</th>
            <th>Harga</th>
            <th>Gambar</th>
            <th>Aksi</th>
        </tr>
    </thead>
    <tbody>
        @foreach($cars as $car)
            <tr>
                <td>{{ $car->model }}</td>
                <td>{{ $car->merk->name }}</td>
                <td>{{ $car->color }}</td>
                <td>{{ $car->year }}</td>
                <td>{{ $car->price }}</td>
                <td><img src="{{ asset('storage/' . $car->image) }}" width="100"></td>
                <td>
                    <a href="{{ route('car.edit', $car->id) }}" class="btn btn-warning btn-sm">Edit</a>
                    <form action="{{ route('car.destroy', $car->id) }}" method="POST" style="display:inline;">
                        @csrf
                        @method('DELETE')
                        <button type="submit" class="btn btn-danger btn-sm">Hapus</button>
                    </form>
                </td>
            </tr>
        @endforeach
    </tbody>
</table>
@endsection
