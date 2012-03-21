package com.happyl

class TenantController {
    def scaffold = true
    def index= {
        redirect(action: 'list') }
}
