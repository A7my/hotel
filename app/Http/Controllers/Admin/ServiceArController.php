<?php

namespace App\Http\Controllers\Admin;

use App\Models\ServiceAr;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class ServiceArController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $services = ServiceAr::find(1);
        return view('dashboard.arabic.service' , compact('services'));
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


    public function update(Request $request, $id)
    {
        $services = ServiceAr::findorfail(1);
        $services->bio = $request->bio;
        $services->restaurants_description = $request->rd;
        $services->RoomService_description = $request->room_d;
        $services->parking_description = $request->pd;
        $services->BusinessCenter_description = $request->bcd;
        $services->FreeShuttleService_description = $request->fsd;
        $services->InternetAcess_description = $request->iad;
        $services->save();
        return redirect('admin/service-ar');
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
