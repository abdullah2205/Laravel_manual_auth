<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use Auth;

class AuthController extends Controller
{
    public function getLogin()
    {
        return view('login');
    }

    public function postLogin(Request $request)
    {
        $this->validate($request, [
            'password' => 'min:6'
        ]);

        if(!Auth::attempt(['email' => $request->email, 'password' => $request->password]))
        {
            return redirect()->back();
        }
        
        return redirect()->route('home');
    }

    public function getRegister()
    {
        return view('register');
    }

    public function postRegister(Request $request)
    {
        $this->validate($request, [
            'name' => 'required|min:4',
            'email' => 'required|email|unique:users',
            'password' => 'required|min:6|confirmed'
        ]);

        $user = User::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => bcrypt($request->password)
        ]);

        //dd($user);

        Auth::loginUsingId($user->id);
        //bisa dengan helper
        //auth()->loginUsingId($user->id);

        return redirect()->route('home');
    }

    public function logout()
    {
        Auth::logout();

        return redirect()->route('login');
    }
}
