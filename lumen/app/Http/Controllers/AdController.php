<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\Ad;

class AdController extends Controller
{
    public function getAllAds()
    {
        return response()->json(Ad::all());
    }

    public function getOneAd($id)
    {
        return response()->json(Ad::find($id));
    }

    public function createAd(Request $request)
    {
        $ad = new Ad;
        $ad->ad_name = $request->ad_name;
        $ad->ad_desc = $request->ad_desc;
        $ad->ad_image = $request->ad_image;
        $ad->save();

        return response()->json($ad);
    }

    public function updateAd(Request $request, $id)
    {
        $ad = Ad::find($id);
        $ad->ad_name = $request->ad_name;
        $ad->ad_desc = $request->ad_desc;
        $ad->ad_image = $request->ad_image;
        $ad->save();

        return response()->json($ad);
    }

    public function deleteAd($id)
    {
        $ad = Ad::find($id);
        $ad->delete();

        return response()->json('Ad deleted successfully!');
    }
}