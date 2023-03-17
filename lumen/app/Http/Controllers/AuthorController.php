<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Author;

class AuthorController extends Controller
{
    public function getAllAuthors()
    {
        return response()->json(Author::all());
    }

    public function getOneAuthor($id)
    {
        return response()->json(Author::find($id));
    }

    public function createAuthor(Request $request)
    {
        $author = new Author;
        $author->authors_name = $request->authors_name;
        $author->authors_email = $request->authors_email;
        $author->save();

        return response()->json($author);
    }

    public function updateAuthor(Request $request, $id)
    {
        $author = Author::find($id);
        $author->authors_name = $request->authors_name;
        $author->authors_email = $request->authors_email;
        $author->save();

        return response()->json($author);
    }

    public function deleteAuthor($id)
    {
        $author = Author::find($id);
        $author->delete();

        return response()->json('Author deleted successfully!');
    }
}