<?php

namespace App\Http\Controllers;

use App\Models\Profiles;

class ProfilesController extends Controller
{
    public function index()
    {
        $profiles = Profiles::first();

        return view('profiles', compact('profiles'));
    }
}
