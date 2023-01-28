<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\TUController;
use App\Http\Controllers\BookController;
use App\Http\Controllers\TextController;
use App\Http\Controllers\CafeArController;
use App\Http\Controllers\TextUsController;
use App\Http\Controllers\WebsiteController;
use App\Http\Controllers\AboutOneController;
use App\Http\Controllers\AboutTwoController;
use App\Http\Controllers\Admin\FQController;
use App\Http\Controllers\AboutFourController;
use App\Http\Controllers\Admin\GalController;
use App\Http\Controllers\Admin\MapController;
use App\Http\Controllers\FeatureArController;
use App\Http\Controllers\AboutThreeController;
use App\Http\Controllers\Admin\FQArController;
use App\Http\Controllers\Admin\HomeController;
use App\Http\Controllers\ContactOneController;
use App\Http\Controllers\ContactTwoController;
use App\Http\Controllers\FeatureOneController;
use App\Http\Controllers\Admin\AboutController;
use App\Http\Controllers\Admin\GalArController;
use App\Http\Controllers\Admin\TeamsController;
use App\Http\Controllers\ContactFourController;
use App\Http\Controllers\Admin\MainArController;
use App\Http\Controllers\Admin\TeamArController;
use App\Http\Controllers\ContactThreeController;
use App\Http\Controllers\Admin\AboutArController;
use App\Http\Controllers\Admin\FeatureController;
use App\Http\Controllers\Admin\ContactsController;
use App\Http\Controllers\Admin\ServicesController;
use App\Http\Controllers\Admin\TeamDescController;
use App\Http\Controllers\Admin\ContactArController;
use App\Http\Controllers\Admin\ServiceArController;
use App\Http\Controllers\Admin\CafeAndRestController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return redirect('hotel');
});

// LIZACAFE@23
Route::get('hotel1' , [WebsiteController::class , 'hotel1']);
Route::get('hotel2' , [WebsiteController::class , 'hotel2']);
Route::get('hotel3' , [WebsiteController::class , 'hotel3']);
Route::get('hotel4' , [WebsiteController::class , 'hotel4']);
Route::get('hotel5' , [WebsiteController::class , 'hotel5']);
Route::post('text/create' , [TUController::class , 'create']);
Route::get('hotelAR' , [WebsiteController::class , 'hotelAR']);
Route::resource('hotel', WebsiteController::class);
Route::group(['prefix' => 'admin' , 'middleware' => ['auth']] , function(){
    Route::resource('about', AboutController::class);
    Route::resource('cafeAndRest', CafeAndRestController::class);
    Route::resource('contacts', ContactsController::class)->middleware('auth');
    Route::resource('home', HomeController::class);
    Route::resource('services', ServicesController::class);
    Route::resource('teamDesc', TeamDescController::class);
    Route::resource('teams', TeamsController::class);
    Route::resource('map', MapController::class);
    Route::resource('feature', FeatureController::class);
    Route::get('gal/updata' , [GalController::class , 'updata']);
    Route::resource('gallery', GalController::class);
    Route::resource('fq', FQController::class);
    Route::get('clients-messege/' , [TUController::class , 'show']);
    Route::resource('book' , BookController::class );
    // Route::post('clients-messege/{id}' , [TUController::class , 'delete'])->name('CD');



    // Hotel 1
    Route::resource('feature1', FeatureOneController::class);
    Route::resource('about1', AboutOneController::class);
    Route::resource('contact1', ContactOneController::class);

    // Hotel 2
    Route::resource('about2', AboutTwoController::class);
    Route::resource('contact2', ContactTwoController::class);

    // Hotel 3
    Route::resource('about3', AboutThreeController::class);
    Route::resource('contact3', ContactThreeController::class);

    // Hotel 4
    Route::resource('about4', AboutFourController::class);
    Route::resource('contact4', ContactFourController::class);



    // Hotel Arabic
    Route::resource('main-ar', MainArController::class);
    Route::resource('about-ar', AboutArController::class);
    Route::resource('feature-ar', FeatureArController::class);
    Route::resource('service-ar', ServiceArController::class);
    Route::get('cafe&rest-ar/updata' , [CafeArController::class , 'updata']);
    Route::resource('cafe&rest-ar', CafeArController::class);
    Route::resource('team-ar', TeamArController::class);
    Route::resource('gal-ar', GalArController::class);
    Route::resource('fq-ar', FQArController::class);
    Route::resource('contact-ar', ContactArController::class);

});


Route::get('/admin/main' , function(){
    return view('dashboard.Main');
})->middleware('auth');



// Route::get('/', function () {
//     return view('welcome');
// });

// Route::get('/dashboard', function () {
//     return view('dashboard');
// })->middleware(['auth'])->name('dashboard');

require __DIR__.'/auth.php';
