package com.happyl

class PropertyController {

    def scaffold = true
    def index={ 
       redirect(action: 'list') }
}
