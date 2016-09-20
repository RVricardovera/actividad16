//
//  CRUsuario.swift
//  Trabajo16
//
//  Created by user118713 on 9/19/16.
//  Copyright © 2016 user118713. All rights reserved.
//

import Foundation

public class CRUsuario {
    
    class var sharedInstance: CRUsuario{
        struct Static {
            static var instance: CRUsuario?
            static var token: dispatch_once_t = 0
            
        }
        
        dispatch_once(&Static.token) {
            Static.instance = CRUsuario()
        }
        
        return Static.instance!
    }
    
    
    private var modelUpdated = false
    private var listaUsers = [Usuario]()
    
    //metodo que devuelve un listado de usuarios
    func getUsuarios()->Array<Usuario>{
        var usuarios = [Usuario]()
        //Se agregaron 10 usuarios segun lo indica el ejercicio
        listaUsers.append(Usuario(name:"Ricardo Vera",useru: "admin", pass: "123"))
        listaUsers.append(Usuario(name:"Maria Zepeda",useru: "beta", pass: "123"))
        listaUsers.append(Usuario(name:"Jose Rivera",useru: "omega", pass: "432"))
        listaUsers.append(Usuario(name:"Marcos Zuma",useru: "delta", pass: "432"))
        listaUsers.append(Usuario(name:"Simon Vargas",useru: "alfa", pass: "567"))
        listaUsers.append(Usuario(name:"Jose Lepe",useru: "iqq", pass: "567"))
        listaUsers.append(Usuario(name:"Monica Ferrada",useru: "ant", pass: "777"))
        listaUsers.append(Usuario(name:"Daniela rivera",useru: "ari", pass: "777"))
        listaUsers.append(Usuario(name:"Silvana Reyes",useru: "tarapaca", pass: "555"))
        listaUsers.append(Usuario(name:"David Palape",useru: "norte", pass: "555"))
        
        for aUsuarios in listaUsers
        {
            
            usuarios .append(aUsuarios)
            
        }
        return usuarios
    }
    
    
    //Agregar un usuario en la lista
    func addUsuario(user: Usuario){
        listaUsers.append(user)
    }
    
    
    func hasChanged() -> Bool{
        if modelUpdated{
            modelUpdated = false
            return true
        }
        return false
    }
}