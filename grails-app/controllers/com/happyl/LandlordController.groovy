package com.happyl

class LandlordController {
    def scaffold = true
    
    def index= {
        redirect(action: 'list') }
}
