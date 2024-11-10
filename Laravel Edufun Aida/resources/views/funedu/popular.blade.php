@extends('layout.master')

@section('konten')

<h2 class="p-2 ms-3 mt-5 text-start">Popular Articles:</h2>

<div class="row mb-5 mt-5">
    @foreach($articles as $article)
        <div class="col-12 mb-4">
            <!-- Gunakan d-flex untuk tata letak horizontal -->
            <div class="d-flex align-items-start">
                <div class="col-3 ms-5" style="overflow: hidden; border-radius: 10px;">
                    <img src="{{ $article->article_image }}" class="img-fluid rounded-4 mb-5" alt="Article Image" width="300" style="height: auto; border-radius: 10px;">
                </div>
                <div class="col-8 d-flex flex-column">
                    <h2 class="text-left">{{ $article->title }}</h2>
                    <h6>{{ \Carbon\Carbon::parse($article->post_date)->format('d F Y') }} | by: {{ $article->writer->name }}</h6>
                    <p>{{ \Illuminate\Support\Str::limit($article->content, 150) }}</p>
                    <div class="mt-auto d-flex justify-content-end">
                        <a href="{{ route('funedu.detail', ['category' => $article->category->name, 'title' => $article->title]) }}" class="btn" style="background-color: midnightblue; color: white; border-radius: 50px; align-self: end;">Read more...</a>
                    </div>
                </div>
            </div>
        </div>
    @endforeach
</div>


<!-- Menambahkan tautan pagination di tengah -->
<div class="row">
    <div class="col-12 d-flex justify-content-center">
        {{ $articles->links() }} 
    </div>
</div>

@endsection
