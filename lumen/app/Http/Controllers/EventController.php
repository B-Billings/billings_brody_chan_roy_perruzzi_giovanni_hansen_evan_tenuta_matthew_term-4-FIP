<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Event;

class EventController extends Controller
{
    public function getAllEvents()
    {
        return response()->json(Event::all());
    }

    public function getOneEvent($id)
    {
        return response()->json(Event::find($id));
    }

    public function createEvent(Request $request)
    {
        $event = new Event;
        $event->event_name = $request->event_name;
        $event->event_description = $request->event_description;
        $event->event_date = $request->event_date;
        $event->event_start_time = $request->event_start_time;
        $event->event_end_time = $request->event_end_time;
        $event->event_location = $request->event_location;
        $event->event_type = $request->event_type;
        $event->event_attendees = $request->event_attendees;
        $event->save();

        return response()->json($event);
    }

    public function updateEvent(Request $request, $id)
    {
        $event = Event::find($id);
        $event->event_name = $request->event_name;
        $event->event_description = $request->event_description;
        $event->event_date = $request->event_date;
        $event->event_start_time = $request->event_start_time;
        $event->event_end_time = $request->event_end_time;
        $event->event_location = $request->event_location;
        $event->event_type = $request->event_type;
        $event->event_attendees = $request->event_attendees;
        $event->save();

        return response()->json($event);
    }

    public function deleteEvent($id)
    {
        $event = Event::find($id);
        $event->delete();

        return response()->json('Event deleted successfully!');
    }
}