<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Database\Eloquent\Builder;
use App\Posts;
use App\Tags;
use App\Category;

class BlogController extends Controller
{
    public function index(Posts $posts)
    {
        $category1 = Category::all();
        $tags1 = Tags::all();
        $featured_post = Posts::findorfail(1);
        $data = $posts->latest()->take(4)->get();
        return view('blog', compact('data', 'featured_post', 'category1', 'tags1'));
    }

    public function isi_blog($slug)
    {
        $category1 = Category::all();
        $tags1 = Tags::all();
        $data = Posts::where('slug', $slug)->get();
        return view('blog.isi_post', compact('data', 'category1', 'tags1'));
    }

    public function list_blog()
    {
        $category1 = Category::all();
        $tags1 = Tags::all();
        $categoryName = "List Post";
        $data = Posts::latest()->paginate(5);
        return view('blog.list_post', compact('data', 'category1', 'tags1', 'categoryName'));
    }
        
    public function about_us()
    {
        $category1 = Category::all();
        return view('blog.about_us', compact('category1'));
    }

    public function list_category(Category $category)
    {
        $category1 = Category::all();
        $tags1 = Tags::all();
        $categoryName = $category->name. " Post";
        $data = $category->posts()->paginate(5);
        return view('blog.list_post', compact('data', 'category1', 'tags1', 'categoryName'));
    }

    public function list_tag(Tags $tag)
    {
        $category1 = Category::all();
        $tags1 = Tags::all();
        $categoryName = "Tag ".$tag->name;
        $data = $tag->posts()->paginate(5);
        return view('blog.list_post', compact('data', 'category1', 'tags1', 'categoryName'));
    }

    public function cari(request $request)
    {
        $category1 = Category::all();
        $tags1 = Tags::all();
        $cari = $request->input('q');
        $categoryName = 'Hasil Pencarian Post '.'"'.$cari.'"';
        $data = Posts::where('judul', $cari)
                        ->orWhere('judul','like','%'.$cari.'%')
                        ->orWhere('content','like','%'.$cari.'%')
                        ->orWhereHas('tags', function (Builder $query) use($cari){
                            $query->where('name', 'like', '%'.$cari.'%');
                        })
                        ->orWhereHas('category', function (Builder $query) use($cari){
                            $query->where('name', 'like', '%'.$cari.'%');
                        })
                        ->paginate(5);
        return view('blog.list_post', compact('data', 'category1', 'tags1', 'categoryName'));
    }
}