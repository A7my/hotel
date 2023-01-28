<?php

namespace App\Http\Controllers\Admin;

use App\Models\TeamAr;
use App\Models\TeamDesc;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class TeamArController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $team = TeamAr::get();
        $t = TeamDesc::find(3);
        return view('dashboard.arabic.team' , compact('team' , 't'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('dashboard.arabic.teamAdd');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            't1' => 'required',
            't2' => 'required',
            't3' => 'required|url',
            't4' => 'required|url',
            't5' => 'required|url',
            't6' => 'required|url',
            'img' => 'required',

        ]);
        $image = $request->file('img')->getClientOriginalName();
        $imagePath = $request->file('img')->storeAs('doctors' , $image , 'img1');
        $m = new TeamAr;
        $m->name = $request->t1;
        $m->job = $request->t2;
        $m->Facebook_url = $request->t3;
        $m->Twitter_url = $request->t4;
        $m->LinkedIn_url = $request->t5;
        $m->Insta_url = $request->t6;
        $m->image = $image;
        $m->save();
        return redirect('admin/team-ar');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Request $request)
    {

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $member = TeamAr::findorfail($id);
        return view('dashboard.arabic.teamEdit' , compact('member'));
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
        $request->validate([
            't1' => 'required',
            't2' => 'required',
            't3' => 'required|url',
            't4' => 'required|url',
            't5' => 'required|url',
            't6' => 'required|url',
            'img' => 'required',

        ]);
        if(isset($request->img)){

            $image = $request->file('img')->getClientOriginalName();
            $imagePath = $request->file('img')->storeAs('doctors' , $image , 'img1');
            $m = TeamAr::findorfail($id);
            $m->image = $image;
            $m->save();
        }
        $m = TeamAr::findorfail($id);
        $m->name = $request->t1;
        $m->job = $request->t2;
        $m->Facebook_url = $request->t3;
        $m->Twitter_url = $request->t4;
        $m->LinkedIn_url = $request->t5;
        $m->Insta_url = $request->t6;
        $m->save();
        return redirect('admin/team-ar');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $member = TeamAr::destroy($id);
        return redirect('admin/team-ar');
    }
}
