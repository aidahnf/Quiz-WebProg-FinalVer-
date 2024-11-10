<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Category;

class categorySeeder extends Seeder
{
    
    public function run(): void
    {
        Category::create([
            'name' => 'Interactive Multimedia',
        ]);


        Category::create([
            'name' => 'Software Engineering',
        ]);

    }
}
