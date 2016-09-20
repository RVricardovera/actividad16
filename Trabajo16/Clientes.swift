//
//  Clientes.swift
//  Trabajo16
//
//  Created by user118713 on 9/19/16.
//  Copyright © 2016 user118713. All rights reserved.
//

import Foundation

class Clientes{
    
    private var rut: String
    private var nombre: String
    private var direccion: String
    private var telefono: String
    
    // Inicializacion de variable
    
    init (rut: String, nombre:String, direccion: String, telefono: String){
        self.rut = rut
        self.nombre = nombre
        self.direccion = direccion
        self.telefono = telefono
    }
    
    
    // accesadores
    
    func getRut()-> String{
        return rut
    }
    
    func getNombre()-> String{
        return nombre
    }
    
    func getDireccion()-> String{
        return direccion
    }
    
    func getTelefono()-> String{
        return telefono
    }
}