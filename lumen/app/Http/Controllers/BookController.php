<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\Book;



class BookController extends Controller
{
public function getAllBooks(){
    return response()->json(Book::join('authors', 'authors.id', '=', 'authors.id')->select('title','published_date','name')->get());
}

public function getOneBook($id){
    return response()->json(Book::find($id));
    }

public function createBook($id){
    return response()->json();
    }
public function updateBook($id){
    return response()->json();
    }
public function deleteBook($id){
    return response()->json();
    }
}
