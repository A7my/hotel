<?php

namespace App\Http\Controllers;

use App\Models\FQ;
use App\Models\Gal;
use App\Models\Map;
use App\Models\FQar;
use App\Models\Home;
use App\Models\About;
use App\Models\GalAr;
use App\Models\Teams;
use App\Models\CafeAr;
use App\Models\MainAr;
use App\Models\TeamAr;
use App\Models\AboutAr;
use App\Models\Feature;
use App\Models\Contacts;
use App\Models\Services;
use App\Models\TeamDesc;
use App\Models\FeatureAr;
use App\Models\ServiceAr;
use App\Models\CafeAndRest;
use Illuminate\Http\Request;
use App\Models\Contacts_urls;

class WebsiteController extends Controller
{



    public function index()
    {

        $home = Home::first();
        $about =  About::first();
        $cafeAndRest =  CafeAndRest::get();
        $b = CafeAndRest::find(1);
        $l = CafeAndRest::find(2);
        $d = CafeAndRest::find(3);
        $c = CafeAndRest::find(4);
        $cafeAndRest1 =  CafeAndRest::find(1);
        $services = Services::first();
        $teamDesc = TeamDesc::first();
        $teams = Teams::get();
        $map = Map::find(2);
        $feat = Feature::first();
        $gal = Gal::first();
        $fq = FQ::first();
        $Contacts =Contacts::first();
        $Contacts2 =Contacts::find(2);
        $Contacts_urls = Contacts_urls::find(1);


        return view('website.hotel' ,compact('about','map', 'Contacts_urls', 'Contacts2', 'fq' , 'gal', 'feat','b', 'l', 'd', 'c' , 'cafeAndRest1', 'cafeAndRest' , 'Contacts' , 'home' , 'services' , 'teamDesc' , 'teams'));
    }

    public function hotel1(){
        $home = Home::first();
        $about =  About::first();
        $cafeAndRest =  CafeAndRest::get();
        $b = CafeAndRest::find(1);
        $l = CafeAndRest::find(2);
        $d = CafeAndRest::find(3);
        $c = CafeAndRest::find(4);
        $cafeAndRest1 =  CafeAndRest::find(1);
        $services = Services::first();
        $teamDesc = TeamDesc::first();
        $teams = Teams::get();
        $map = Map::first();
        $feat = Feature::first();
        $gal = Gal::first();
        $fq = FQ::first();
        $Contacts =Contacts::first();
        $Contacts2 =Contacts::find(2);
        $Contacts_urls = Contacts_urls::find(1);

        $about1 = About::find(3);
        $feat1 = Feature::find(3);
        $contacts1 = Contacts::find(3);
        $contacts4 = Contacts::find(4);
        $Contacts_urls1 = Contacts_urls::find(2);
        $map1 = Map::find(3);

        return view('website.hotel1' ,compact('about','map1','contacts4' ,'contacts1','Contacts_urls1' , 'feat1', 'about1','map', 'Contacts_urls', 'Contacts2', 'fq' , 'gal', 'feat','b', 'l', 'd', 'c' , 'cafeAndRest1', 'cafeAndRest' , 'Contacts' , 'home' , 'services' , 'teamDesc' , 'teams'));

    }
    public function hotel2(){
        $home = Home::first();
        $about =  About::first();
        $cafeAndRest =  CafeAndRest::get();
        $b = CafeAndRest::find(1);
        $l = CafeAndRest::find(2);
        $d = CafeAndRest::find(3);
        $c = CafeAndRest::find(4);
        $cafeAndRest1 =  CafeAndRest::find(1);
        $services = Services::first();
        $teamDesc = TeamDesc::first();
        $teams = Teams::get();
        $map = Map::first();
        $feat = Feature::first();
        $gal = Gal::first();
        $fq = FQ::first();
        $Contacts =Contacts::first();
        $Contacts2 =Contacts::find(2);
        $Contacts_urls = Contacts_urls::find(1);
        $feat1 = Feature::find(3);


        $about1 = About::find(4);
        $contacts1 = Contacts::find(5);
        $contacts4 = Contacts::find(6);
        $Contacts_urls1 = Contacts_urls::find(3);
        $map1 = Map::find(4);

        return view('website.hotel2' ,compact('about','map1','contacts4' ,'contacts1','Contacts_urls1' , 'feat1', 'about1','map', 'Contacts_urls', 'Contacts2', 'fq' , 'gal', 'feat','b', 'l', 'd', 'c' , 'cafeAndRest1', 'cafeAndRest' , 'Contacts' , 'home' , 'services' , 'teamDesc' , 'teams'));

    }
    public function hotel3(){
        $home = Home::first();
        $about =  About::first();
        $cafeAndRest =  CafeAndRest::get();
        $b = CafeAndRest::find(1);
        $l = CafeAndRest::find(2);
        $d = CafeAndRest::find(3);
        $c = CafeAndRest::find(4);
        $cafeAndRest1 =  CafeAndRest::find(1);
        $services = Services::first();
        $teamDesc = TeamDesc::first();
        $teams = Teams::get();
        $map = Map::first();
        $feat = Feature::first();
        $gal = Gal::first();
        $fq = FQ::first();
        $Contacts =Contacts::first();
        $Contacts2 =Contacts::find(2);
        $Contacts_urls = Contacts_urls::find(1);
        $feat1 = Feature::find(3);

        $about1 = About::find(5);
        $contacts1 = Contacts::find(7);
        $contacts4 = Contacts::find(8);
        $Contacts_urls1 = Contacts_urls::find(4);
        $map1 = Map::find(5);

        return view('website.hotel3' ,compact('about','map1','contacts4' ,'contacts1','Contacts_urls1' , 'feat1', 'about1','map', 'Contacts_urls', 'Contacts2', 'fq' , 'gal', 'feat','b', 'l', 'd', 'c' , 'cafeAndRest1', 'cafeAndRest' , 'Contacts' , 'home' , 'services' , 'teamDesc' , 'teams'));

    }
    public function hotel4(){

        $home = Home::first();
        $about =  About::first();
        $cafeAndRest =  CafeAndRest::get();
        $b = CafeAndRest::find(1);
        $l = CafeAndRest::find(2);
        $d = CafeAndRest::find(3);
        $c = CafeAndRest::find(4);
        $cafeAndRest1 =  CafeAndRest::find(1);
        $services = Services::first();
        $teamDesc = TeamDesc::first();
        $teams = Teams::get();
        $map = Map::first();
        $feat = Feature::first();
        $gal = Gal::first();
        $fq = FQ::first();
        $Contacts =Contacts::first();
        $Contacts2 =Contacts::find(2);
        $Contacts_urls = Contacts_urls::find(1);

        $about1 = About::find(6);
        $feat1 = Feature::find(6);
        $contacts1 = Contacts::find(9);
        $contacts4 = Contacts::find(10);
        $Contacts_urls1 = Contacts_urls::find(5);
        $map1 = Map::find(6);

        return view('website.hotel4' ,compact('about','map1','contacts4' ,'contacts1','Contacts_urls1' , 'feat1', 'about1','map', 'Contacts_urls', 'Contacts2', 'fq' , 'gal', 'feat','b', 'l', 'd', 'c' , 'cafeAndRest1', 'cafeAndRest' , 'Contacts' , 'home' , 'services' , 'teamDesc' , 'teams'));

    }
    public function hotelAR(){
        $main = MainAr::find(1);
        $about = AboutAr::find(1);
        $feat = FeatureAr::find(1);
        $services = ServiceAr::find(1);
        $meal1 = CafeAr::find(1);
        $meal2 = CafeAr::find(2);
        $meal3 = CafeAr::find(3);
        $meal4 = CafeAr::find(4);
        $teamDesc = TeamDesc::find(3);
        $team = TeamAr::get();
        $gal = GalAr::find(1);
        $fq = FQar::find(1);
        $contacts1 = Contacts::find(11);
        $contacts4 = Contacts::find(12);
        $Contacts_urls1 = Contacts_urls::find(6);
        $map1 = Map::find(7);


        return view('website.hotelAR' , compact('main' ,'gal', 'contacts1' , 'contacts4' , 'map1' , 'Contacts_urls1' ,'fq', 'team' ,'teamDesc','about' , 'feat' , 'services' , 'meal1' , 'meal2' , 'meal3' , 'meal4'));
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
        //
    }

    public function destroy($id)
    {
        //
    }
}
