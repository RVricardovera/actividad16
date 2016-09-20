//
//  Trabajo16Tests.swift
//  Trabajo16Tests
//
//  Created by user118713 on 9/19/16.
//  Copyright © 2016 user118713. All rights reserved.
//

import XCTest
@testable import Trabajo16

class Trabajo16Tests: XCTestCase {
    // Creacion de instancia para prueba
    let listaUsuarios = CRUsuario.sharedInstance
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testAccesoLogin(){
    
        //obtener el listado de Usuarios y se busca un user que existe
        for u in listaUsuarios.getUsuarios(){
        
            if  u.getUseru().containsString("admin") && u.getPass().containsString("123"){
                XCTAssert(true, "Usuario existe!")
               
            }
        }
        
    
    }
    
    
    func testAddUsuario() {
        // This is an example of a functional test case.
        // Se crea y agrega un usuario a la lista del arreglo posicion 0
        let u = Usuario(name:"Testeo",useru: "test", pass: "000")
        
        listaUsuarios.addUsuario(u)
        
        // Al llamar getUsuarios, se cargaran los otros 10 usuarios a la lista.
        let busqueda = listaUsuarios.getUsuarios()
        
        // Si el usuario TEsteo se encuentran en la posicion 0, se ingreso correctamente
        XCTAssertEqual(busqueda[0].getName(), u.getName(), "Usuario Ingresado")
    }
    
         func testPerformanceUsuarios() {
          
        
            //obtener el listado de Usuarios
            let users = listaUsuarios.getUsuarios()
            
            self.measureBlock {

                //Ordenamiento de la lista usuarios por nombre de usuario (useru)
                let ordenamiento = users.sort({ $0.getUseru() < $1.getUseru()})
            
                print("TEST / Resultado ordenamiento username")
                // Impresion
                for u in ordenamiento{
                    print(u.getUseru())
                }
            
                print("")
            
            }
         }
    
}
