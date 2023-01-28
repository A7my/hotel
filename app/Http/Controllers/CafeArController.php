<?php

namespace App\Http\Controllers;

use App\Models\CafeAr;
use Illuminate\Http\Request;

class CafeArController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $cafe = CafeAr::first();
        $b = CafeAr::find(1);
        $l = CafeAr::find(2);
        $d = CafeAr::find(3);
        $c = CafeAr::find(4);
        return view('dashboard.arabic.cafeAndRest' , compact('cafe' , 'b' , 'l' , 'd' , 'c'));
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

    }

    public function updata(Request $request){
        if(isset($request->image1)){
            $image1 = $request->file('image1')->getClientOriginalName();
            $imagePath1 = $request->file('image1')->storeAs('img' , $image1 , 'img2');
            $img1 = CafeAr::findorfail(1);
            $img1->image = $image1;
            $img1->save();
        }




        if(isset($request->image2)){
        $image2 = $request->file('image2')->getClientOriginalName();
        $imagePath2 = $request->file('image2')->storeAs('img' , $image2 , 'img2');
        $img2 = CafeAr::findorfail(2);
        $img2->image = $image2;
        $img2->save();
        };

        if(isset($request->image3)){
        $image3 = $request->file('image3')->getClientOriginalName();
        $imagePath3 = $request->file('image3')->storeAs('img' , $image3 , 'img2');
        $img3 = CafeAr::findorfail(3);
        $img3->image = $image3;
        $img3->save();
        }

        if(isset($request->image4)){
            $image4 = $request->file('image4')->getClientOriginalName();
            $imagePath4 = $request->file('image4')->storeAs('img' , $image4 , 'img2');
            $img4 = CafeAr::findorfail(4);
            $img4->image = $image4;
            $img4->save();
        }


        $b = CafeAr::findorfail(1);
        // $b->meal = $request->meal1;
        $b->description1 = $request->bd1;
        $b->description2 = $request->bd2;
        $b->save();

        $l = CafeAr::findorfail(2);
        // $l->meal = $request->meal2;
        $b->description1 = $request->ld1;
        $b->description2 = $request->ld2;
        $l->save();

        $d = CafeAr::findorfail(3);
        // $d->meal = $request->meal3;
        $d->description1 = $request->dd1;
        $d->description2 = $request->dd2;
        $d->save();

        $c = CafeAr::findorfail(4);
        // $c->meal = $request->meal4;
        $c->description1 = $request->cd1;
        $c->description2 = $request->cd2;
        $c->save();




        return redirect('admin/cafe&rest-ar');
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
