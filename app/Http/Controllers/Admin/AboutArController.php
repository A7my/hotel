<?php

namespace App\Http\Controllers\Admin;

use App\Models\About;
use App\Models\AboutAr;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class AboutArController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $about = AboutAr::find(1);
        return view('dashboard.arabic.about' , compact('about'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {

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
            $image = $request->file('image')->getClientOriginalName();
            $imagePath = $request->file('image')->storeAs('img' , $image , 'img2');
            $about = AboutAr::findorfail(1);
            $about->image = $image;
            $about->save();


        }

        $about = AboutAr::findorfail(1);
        $about->nameOfHotel = $request->name;
        $about->bio = $request->bio;
        $about->Description_1 = $request->d1;
        $about->Excellence_description = $request->d4;
        $about->Service_description = $request->d5;
        $about->Teamwork_description = $request->d6;
        $about->success_description = $request->d7;
        $about->save();
        return redirect('admin/about-ar');
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
