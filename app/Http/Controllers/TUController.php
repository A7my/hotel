<?php

namespace App\Http\Controllers;

use App\Models\TextUs;
use Illuminate\Http\Request;

class TUController extends Controller
{
    public function create(Request $request){
        $mes = new TextUs;
        $mes->name = $request->name;
        $mes->email = $request->email;
        $mes->title = $request->subject;
        $mes->text = $request->message;
        $mes->save();
        return redirect()->back();
    }

    public function show(){
        $m = TextUs::get();
        return view('dashboard.text' , compact('m'));
    }
    public function delete($id){
        // TextUs::delete($id);
        // return redirect()->back();
        echo $id;
    }
}
