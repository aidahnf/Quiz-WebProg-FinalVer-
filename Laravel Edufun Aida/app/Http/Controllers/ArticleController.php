<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Article;
use App\Models\Category;
use App\Models\Writer;

class ArticleController extends Controller
{
    /**
     * Menampilkan artikel di homepage.
     */
    public function home()
    {
        $articles = Article::with(['writer', 'category'])->latest()->take(2)->get();
        return view('funedu.home', compact('articles'));
    }

    /**
     * Menampilkan semua artikel dalam kategori Interactive Multimedia.
     */
    public function Mulmed()
    {
        $category = Category::where('name', 'Interactive Multimedia')->firstOrFail();
        $articles = Article::where('category_id', $category->id)->get();
        return view('funedu.catmulmed', compact('articles', 'category'));
    }
    

    /**
     * Menampilkan semua artikel dalam kategori Software Engineering.
     */
    public function Softeng()
    {
        $category = Category::where('name', 'Software Engineering')->firstOrFail();
        $articles = Article::where('category_id', $category->id)->get();
        return view('funedu.catsofteng', compact('articles', 'category'));
    }

    /**
     * Menampilkan artikel berdasarkan kategori dan judul untuk halaman detail.
     */
    public function show($category, $title)
    {
        $article = Article::where('title', $title)->with('writer')->firstOrFail();
        return view('funedu.detail', compact('article'));
    }

    /**
     * Menampilkan artikel di halaman Popular berdasarkan urutan views terbanyak.
     */
    public function popular()
    {
        $articles = Article::orderBy('views', 'desc')->paginate(3);
        return view('funedu.popular', compact('articles'));
    }


}
