<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Subscriber;

class SubscriberController extends Controller
{
    public function getAllSubscribers()
    {
        return response()->json(Subscriber::all());
    }

    public function getOneSubscriber($id)
    {
        return response()->json(Subscriber::find($id));
    }

    public function createSubscriber(Request $request)
    {
        $subscriber = new Subscriber;
        $subscriber->subscriber_name = $request->subscriber_name;
        $subscriber->subscriber_email = $request->subscriber_email;
        $subscriber->save();

        return response()->json($subscriber);
    }

    public function updateSubscriber(Request $request, $id)
    {
        $subscriber = Subscriber::find($id);
        $subscriber->subscriber_name = $request->subscriber_name;
        $subscriber->subscriber_email = $request->subscriber_email;
        $subscriber->save();

        return response()->json($subscriber);
    }

    public function deleteSubscriber($id)
    {
        $subscriber = Subscriber::find($id);
        $subscriber->delete();

        return response()->json('Subscriber deleted successfully!');
    }
}