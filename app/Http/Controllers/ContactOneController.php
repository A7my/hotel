<?php

namespace App\Http\Controllers;

use App\Models\Map;
use App\Models\Contacts;
use Illuminate\Http\Request;
use App\Models\Contacts_urls;

class ContactOneController extends Controller
{

    public function index()
    {
        $c1 = Contacts::find(3);
        $c2 = Contacts::find(4);
        $cus = Contacts_urls::find(2);
        $map = Map::find(3);
        return view('dashboard.hotel1.contact' , compact('c1' , 'c2' , 'cus' , 'map'));
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
        $c1 = Contacts::findorfail(3);
        $c1->description = $request->d;
        $c1->address = $request->address;
        $c1->email = $request->c1e;
        $c1->phone = $request->c1p;
        $c1->save();

        $c2 = Contacts::findorfail(4);
        $c2->email = $request->c2e;
        $c2->phone = $request->c2p;
        $c2->save();

        $map = Map::findorfail(3);
        $map->url = $request->url;
        $map->save();

        $cus = Contacts_urls::findorfail(2);
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
