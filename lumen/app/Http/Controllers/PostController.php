<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Post;

class PostController extends Controller
{
    public function getAllPosts()
    {
        return response()->json(Post::all());
    }

    public function getOnePost($id)
    {
        return response()->json(Post::find($id));
    }

    public function createPost(Request $request)
    {
        $post = new Post;
        $post->post_title = $request->post_title;
        $post->post_body = $request->post_body;
        $post->save();

        return response()->json($post);
    }

    public function updatePost(Request $request, $id)
    {
        $post = Post::find($id);
        $post->post_title = $request->post_title;
        $post->post_body = $request->post_body;
        $post->save();

        return response()->json($post);
    }

    public function deletePost($id)
    {
        $post = Post::find($id);
        $post->delete();

        return response()->json('Post deleted successfully!');
    }
}