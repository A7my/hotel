<?php

namespace App\Http\Controllers\Admin;

use App\Models\MainAr;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class MainArController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $main = MainAr::find(1);
        return view('dashboard.arabic.main' , compact('main'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        if(isset($request->image)){
            $image = "slidy.jpg";
            $imagePath = $request->file('image')->storeAs('slide' , $image , 'img1');
            $main = MainAr::findorfail(1);
            $main->image = $image;
            $main->save();
        }

        $main = MainAr::findorfail(1);
        $main->hotel_name = $request->name;
        $main->description = $request->bio;
        $main->save();
        return redirect('admin/main-ar');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
