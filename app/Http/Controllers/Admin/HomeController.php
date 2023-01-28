<?php

namespace App\Http\Controllers\Admin;

use App\Models\Home;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class HomeController extends Controller
{

    public function index()
    {
        $home = Home::first();
        return view('dashboard.home' , compact('home'));
    }


    public function create()
    {
        //
    }


    public function store(Request $request)
    {
        //
    }


    public function show($id)
    {
        //
    }

    public function edit($id)
    {

    }

    public function update(Request $request, $id)
    {
        if(isset($request->image)){
            $image = $request->file('image')->getClientOriginalName();
            $imagePath = $request->file('image')->storeAs('slide' , $image , 'img1');
            $home = Home::findorfail(1);
            $home->image = $image;
            $home->save();
        }

        $home = Home::findorfail(1);
        $home->title = $request->title;
        $home->bio = $request->bio;
        $home->save();
        return redirect('admin/home');
    }

    public function destroy($id)
    {
        //
    }
}
