<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Volunteer;

class VolunteerController extends Controller
{
    public function getAllVolunteers()
    {
        return response()->json(Volunteer::all());
    }

    public function getOneVolunteer($id)
    {
        return response()->json(Volunteer::find($id));
    }

    public function createVolunteer(Request $request)
    {
        $volunteer = new Volunteer;
        $volunteer->volunteers_first_name = $request->volunteers_first_name;
        $volunteer->volunteers_last_name = $request->volunteers_last_name;
        $volunteer->volunteers_email = $request->volunteers_email;
        $volunteer->volunteers_phone_number = $request->volunteers_phone_number;
        $volunteer->volunteers_address = $request->volunteers_address;
        $volunteer->volunteers_city = $request->volunteers_city;
        $volunteer->volunteers_state = $request->volunteers_state;
        $volunteer->volunteers_zip_code = $request->volunteers_zip_code;
        $volunteer->volunteers_interests = $request->volunteers_interests;
        $volunteer->volunteers_availability = $request->volunteers_availability;
        $volunteer->save();

        return response()->json($volunteer);
    }

    public function updateVolunteer(Request $request, $id)
    {
        $volunteer = Volunteer::find($id);
        $volunteer->volunteers_first_name = $request->volunteers_first_name;
        $volunteer->volunteers_last_name = $request->volunteers_last_name;
        $volunteer->volunteers_email = $request->volunteers_email;
        $volunteer->volunteers_phone_number = $request->volunteers_phone_number;
        $volunteer->volunteers_address = $request->volunteers_address;
        $volunteer->volunteers_city = $request->volunteers_city;
        $volunteer->volunteers_state = $request->volunteers_state;
        $volunteer->volunteers_zip_code = $request->volunteers_zip_code;
        $volunteer->volunteers_interests = $request->volunteers_interests;
        $volunteer->volunteers_availability = $request->volunteers_availability;
        $volunteer->save();

        return response()->json($volunteer);
    }

     public function deleteVolunteer($id)
    {
        $volunteer = Volunteer::find($id);
        $volunteer->delete();

        return response()->json('Volunteer deleted successfully!');
    }
}