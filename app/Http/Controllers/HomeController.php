<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Posts;
use App\Category;
use App\Tags;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {   
        $postsCount = Posts::count();
        $categoryCount = Category::count();
        $tagsCount = Tags::count();
        return view('home', compact('postsCount', 'categoryCount', 'tagsCount'));
    }
}
