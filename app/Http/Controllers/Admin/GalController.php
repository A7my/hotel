<?php

namespace App\Http\Controllers\Admin;

use App\Models\Gal;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class GalController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $gal = Gal::first();
        return view('dashboard.gal' , compact('gal'));
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
        echo "asdfs";

    }
    public function updata(Request $request)
    {
        if(isset($request->image1)){
            $image1 = 'gallery-1.jpg';
            $imagePath1 = $request->file('image1')->storeAs('gallery' , $image1 , 'img4');

        }
        if(isset($request->image2)){
            $image2 = 'gallery-2.jpg';
            $imagePath2 = $request->file('image2')->storeAs('gallery' , $image2 , 'img4');
        }
        if(isset($request->image3)){
            $image3 = 'gallery-3.jpg';
            $imagePath3 = $request->file('image3')->storeAs('gallery' , $image3, 'img4');
        }
        if(isset($request->image4)){
            $image4 = 'gallery-4.jpg';
            $imagePath4 = $request->file('image4')->storeAs('gallery' , $image4 , 'img4');
        }
        if(isset($request->image5)){
            $image5 = 'gallery-5.jpg';
            $imagePath5 = $request->file('image5')->storeAs('gallery' , $image5 , 'img4');
        }

        return redirect()->back();

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
