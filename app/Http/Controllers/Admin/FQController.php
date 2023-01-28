<?php

namespace App\Http\Controllers\Admin;

use App\Models\FQ;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class FQController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $fq = FQ::first();
        return view('dashboard.fq' , compact('fq'));
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
        $fq = FQ::findorfail(1);
        $fq->description = $request->d;
        $fq->q1 = $request->q1;
        $fq->q2 = $request->q2;
        $fq->q3 = $request->q3;
        $fq->q4 = $request->q4;
        $fq->q5 = $request->q5;
        $fq->a1 = $request->a1;
        $fq->a2 = $request->a2;
        $fq->a3 = $request->a3;
        $fq->a4 = $request->a4;
        $fq->a5 = $request->a5;
        $fq->save();
        return redirect('admin/fq');
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
