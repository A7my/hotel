<?php

namespace App\Http\Controllers\Admin;

use App\Models\GalAr;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class GalArController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $gal = GalAr::find(1);
        return view('dashboard.arabic.gal' , compact('gal'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        if(isset($request->image1)){
            $image1 = 'img1.jpg';
            $imageStore1 = $request->file('image1')->storeAs('gallery', $image1 , 'img4');
            $img1 = GalAr::find(1);
            $img1->image1 = $image1;
            $img1->save();
        }
        if(isset($request->image2)){
            $image2 = 'img2.jpg';
            $imageStore2 = $request->file('image2')->storeAs('gallery', $image2 , 'img4');
            $img2 = GalAr::find(1);
            $img2->image2 = $image2;
            $img2->save();
        }
        if(isset($request->image3)){
            $image3 = 'img3.jpg';
            $imageStore3 = $request->file('image3')->storeAs('gallery', $image3 , 'img4');
            $img3 = GalAr::find(1);
            $img3->image3 = $image3;
            $img3->save();
        }
        if(isset($request->image4)){
            $image4 = 'img4.jpg';
            $imageStore4 = $request->file('image4')->storeAs('gallery', $image4 , 'img4');
            $img4 = GalAr::find(1);
            $img4->image4 = $image4;
            $img4->save();
        }
        if(isset($request->image5)){
            $image5 = 'img5.jpg';
            $imageStore5 = $request->file('image5')->storeAs('gallery', $image5 , 'img4');
            $img5 = GalAr::find(1);
            $img5->image5 = $image5;
            $img5->save();
        }
        $gal = GalAr::find(1);
        $gal->description = $request->description;
        $gal->save();
        return redirect()->back();
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
        echo "asdf";
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
