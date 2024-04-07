<?php

use App\Http\Controllers\HomeController;
use App\Http\Controllers\StudentsController;
use App\Http\Controllers\ContactController;

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});
 
Route::get('/register' ,[HomeController::class ,'register']);

Route::post('/user/save',[HomeController::class ,'save'])->name('user.save');

Route::post('/user/addition',[HomeController::class ,'addition'])->name('user.addition');

Route::post('/students/add',[StudentsController::class,'save'])->name('students.add');

Route::get('/listing',[StudentsController::class,'list']);

Route::get('/delete/{id}',[StudentsController::class,'delete']);

Route::get('/edit/{id}',[StudentsController::class,'edit'])->name('edit');

Route::post('/update',[StudentsController::class,'update'])->name('student.update');

Route::get('/login',[StudentsController::class,'login'])->name('student.login');

Route::get('/user/login',[StudentsController::class,'user_login'])->name('user.login');

Route::get('/dashboard',[StudentsController::class,'dashboard']);

Route::post('/home',[ContactController::class,'home'])->name('users.home');

Route::get('/contact/list',[ContactController::class,'contact_list']);

Route::get('/delete/contact/{id}',[ContactController::class,'delete_contact']);

Route::get('/edit/contact/{id}',[ContactController::class,'edit_contact']);

Route::post('/contact/update',[ContactController::class,'contact_update'])->name('contact.update');

Route::get('/logout',[StudentsController::class,'logout']);

