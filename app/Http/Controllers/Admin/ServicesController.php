<?php

namespace App\Http\Controllers\Admin;

use App\Models\Services;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class ServicesController extends Controller
{

    public function index()
    {
        $services = Services::first();
        return view('dashboard.services' , compact('services'));
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
        //
    }


    public function update(Request $request, $id)
    {
        $services = Services::findorfail(1);
        $services->bio = $request->bio;
        $services->restaurants_description = $request->rd;
        $services->parking_description = $request->pd;
        $services->BusinessCenter_description = $request->bcd;
        $services->FreeShuttleService_description = $request->fsd;
        $services->InternetAcess_description = $request->iad;
        $services->save();
        return redirect('admin/services');
    }


    public function destroy($id)
    {
        //
    }
}
