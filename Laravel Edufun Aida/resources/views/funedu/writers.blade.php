@extends('layout.master')

@section('konten')

<h2 class="p-2 ms-3 mt-5 text-start justify-center">Our Writers:</h2>

<div class="row mb-5 mt-5">
    @foreach($writers as $writer)
    <div class="col-6 text-center fs-5 d-flex flex-column align-items-center">
        <a href="{{ route('funedu.writerArticle', ['id' => $writer->id]) }}">
            <div class="image-container bg-white rounded-circle d-flex align-items-center justify-content-center" style="width: 220px; height: 220px; padding: 10px;">
                <img src="{{ asset($writer->writer_image) }}" alt="{{ $writer->name }}" class="rounded-circle image-fluid" style="object-fit: cover; height: 200px; width: 200px;">
            </div>
        </a>
        <p class="fw-bold mt-2" style="white-space: nowrap; overflow: hidden; text-overflow: ellipsis;">{{ $writer->name }}</p>
        <p class="text-muted" style="white-space: nowrap; overflow: hidden; text-overflow: ellipsis; max-width: 200px;">{{ $writer->bio }}</p>
    </div>
    @endforeach
</div>

@endsection
