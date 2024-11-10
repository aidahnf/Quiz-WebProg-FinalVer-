<?php

namespace App\Http\Controllers;

use App\Models\Writer;
use Illuminate\Http\Request;

class WriterController extends Controller 
{
    public function index()
    {

        $writers = Writer::all();
        return view('funedu.writers', compact('writers')); 
    }

    public function show($id)
    {
        $writer = Writer::findOrFail($id);
        
        return view('funedu.writerArticle', compact('writer')); 
    }
}
