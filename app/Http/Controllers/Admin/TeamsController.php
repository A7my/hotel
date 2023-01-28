<?php

namespace App\Http\Controllers\Admin;

use App\Models\Teams;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class TeamsController extends Controller
{

    public function index()
    {
        $team = Teams::get();
        return view('dashboard.teams' , compact('team'));
    }

    public function create()
    {
        return view('dashboard.teamAdd');
    }


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
        $m = new Teams;
        $m->name = $request->t1;
        $m->job = $request->t2;
        $m->Facebook_url = $request->t3;
        $m->Twitter_url = $request->t4;
        $m->LinkedIn_url = $request->t5;
        $m->Insta_url = $request->t6;
        $m->image = $image;
        $m->save();
        return redirect('admin/teams');

    }


    public function show($id)
    {
        //
    }


    public function edit($id)
    {
        $member = Teams::findorfail($id);
        return view('dashboard.teamEdit' , compact('member'));
    }

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
            $m = Teams::findorfail($id);
            $m->image = $image;
            $m->save();
        }
        $m = Teams::findorfail($id);
        $m->name = $request->t1;
        $m->job = $request->t2;
        $m->Facebook_url = $request->t3;
        $m->Twitter_url = $request->t4;
        $m->LinkedIn_url = $request->t5;
        $m->Insta_url = $request->t6;
        $m->save();
        return redirect('admin/teams');
    }
public function destroy($id)
    {
        $member = Teams::destroy($id);
        return redirect('admin/teams');
    }
}
