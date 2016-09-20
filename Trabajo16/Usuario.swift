//
//  Usuario.swift
//  Trabajo16
//
//  Created by user118713 on 9/19/16.
//  Copyright © 2016 user118713. All rights reserved.
//

import Foundation

public class Usuario{

    private var name: String
    private var useru: String
    private var pass: String
    
    public init (name:String, useru: String, pass: String){
        self.name = name
        self.pass = pass
        self.useru = useru
    }
    
    // Accesadores
    public  func getName()-> String{
        return name
    }
    
    public func getUseru()-> String{
        return useru
    }
    
    public func getPass()-> String{
        return pass
    }
    
}