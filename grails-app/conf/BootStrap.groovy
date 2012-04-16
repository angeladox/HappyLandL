package com.happyl


class BootStrap {
    def springSecurityService
    
    def init = { servletContext ->
        
       def springSecurityCore
        def userRole = SecRole.findByAuthority('ROLE_USER') ?: new SecRole(authority: 'ROLE_USER').save(failOnError: true)
        def adminRole = SecRole.findByAuthority('ROLE_USER') ?: new SecRole(authority: 'ROLE_USER').save(failOnError: true)
        def adminUser = SecUser.findByUsername('admin') ?: new SecUser(
                    username: 'admin',
                    password: 'password',
                    enabled: true).save()

                if (!adminUser.authorities.contains(adminRole)) {
                    SecUserSecRole.create adminUser, adminRole
    }}
    def destroy = {
    }
}
