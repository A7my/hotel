<?php

namespace App\Http\Controllers;

use App\Models\Map;
use App\Models\Contacts;
use Illuminate\Http\Request;
use App\Models\Contacts_urls;


class ContactTwoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $c1 = Contacts::find(5);
        $c2 = Contacts::find(6);
        $cus = Contacts_urls::find(3);
        $map = Map::find(4);
        return view('dashboard.hotel1.contact' , compact('c1' , 'c2' , 'cus' , 'map'));
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
        $c1 = Contacts::findorfail(5);
        $c1->description = $request->d;
        $c1->address = $request->address;
        $c1->email = $request->c1e;
        $c1->phone = $request->c1p;
        $c1->save();

        $c2 = Contacts::findorfail(6);
        $c2->email = $request->c2e;
        $c2->phone = $request->c2p;
        $c2->save();

        $map = Map::findorfail(4);
        $map->url = $request->url;
        $map->save();

        $cus = Contacts_urls::findorfail(3);
        $cus->facebook = $request->f;
        $cus->twitter = $request->t;
        $cus->insta = $request->i;
        $cus->linkedin = $request->l;
        $cus->skype = $request->s;
        $cus->save();

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
