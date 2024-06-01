<?php

namespace App\Controllers;

class Home extends BaseController
{
    public function index(): string
    {
        return view('welcome_message');
    }

    public function login(){
        echo view('login');
    }

    public function toregister(){
        echo view('register');
    }

    public function home(){
        echo view('home');
    }

    public function aplications(){
        echo view('aplications');
    }
    
    public function configAplications(){
        echo view('configAplications');
    }

    public function registerAplications(){
        echo view('registerAplications');
    }

}
