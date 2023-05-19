<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class AuthController extends Controller
{
    public function register(Request $request)
    {
        $validate = Validator::make($request->all(), [
            'first_name' => 'required',
            'last_name' => 'required',
            'email' => 'required|unique:users|max:255',
            'password' => 'required',
            'confirm_password' => 'required|same:password'
        ]);
        if($validate->fails()){
            return response()->json([
                'errors' => $validate->errors()
            ], 400);
        }
        $data = $request->all();
        $data['password'] = Hash::make($request->password);
        $user = User::create($data);
        return response()->json([
            'message' => 'User created successfully',
            'user' => $user
        ], 200);
    }

    public  function login(Request $request)
    {
        $validate = Validator::make($request->all(), [
            'email' => 'required',
            'password' => 'required'
        ]);
        if($validate->fails()){
            return response()->json([
                'errors' => $validate->errors()
            ], 400);
        }
        $user = User::where('email', $request->email)->first();
        if(!$user)
        {
            return response()->json([
                'message' => 'User not found'
            ], 404);
        }
        if (Auth::attempt(['email' => $request->email, 'password' => $request->password])) {
            $user = Auth::user();
            $token = $user->createToken('token')-> accessToken;
            return response()->json([
                'message' => 'User logged in successfully',
                'token' => $token,
                'user' => $user
            ], 200);
        }
        else
        {
            return response()->json([
                'status'    => '401',
                'message' => 'Invalid credentials'
            ], 401);
        }
    }

    public function logout($id)
    {
        $user = User::find($id);
        if(!$user)
        {
            return response()->json([
                'status'    => '404',
                'message' => 'User not found'
            ], 404);
        }
        $user->tokens()->delete();
        Auth::logout();
        return response()->json([
            'status'    => '200',
            'message' => 'User logged out successfully'
        ], 200);
    }
}
