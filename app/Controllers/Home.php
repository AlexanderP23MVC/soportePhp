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

    public function virtual(){
        echo view('virtual');
    }

    public function equipment(){
        echo view('equipment');

    }

    public function reportequipment(){
        echo view('reportEquipment');
    }

    public function equipmentAccountants(){
        echo view('equipmentAccountants');
    }

    public function allEquipmentAccountants(){
        echo view('allEquipmentAccountants');
    }

    public function registerEquipment(){
        echo view('registerEquipment');
    }

    public function backups(){
        echo view('backups');
    }

    public function allCourse(){
        echo view('allCourses');
    }

    public function course(){
        echo view('course');
    }

    public function registerCourses(){
        echo view('registerCourses');
    }

    public function images(){
        echo view('imagesSo');
    }
}
