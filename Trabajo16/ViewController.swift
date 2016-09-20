//
//  ViewController.swift
//  Trabajo16
//
//  Created by user118713 on 9/19/16.
//  Copyright © 2016 user118713. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var txtUser: UITextField!
    @IBOutlet weak var txtPass: UITextField!
    
    @IBOutlet weak var lbl: UILabel!
    
    
    var usuarios = CRUsuario.sharedInstance
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Creacion de usuarios
        usuarios.addUsuario(Usuario(name:"Ricardo Vera",useru: "admin", pass: "123"))
        usuarios.addUsuario(Usuario(name:"Maria Zepeda",useru: "beta", pass: "123"))
        usuarios.addUsuario(Usuario(name:"Jose Rivera",useru: "omega", pass: "432"))
        usuarios.addUsuario(Usuario(name:"Marcos Zuma",useru: "delta", pass: "432"))
        usuarios.addUsuario(Usuario(name:"Simon Vargas",useru: "alfa", pass: "567"))
        usuarios.addUsuario(Usuario(name:"Jose Lepe",useru: "iqq", pass: "567"))
        usuarios.addUsuario(Usuario(name:"Monica Ferrada",useru: "ant", pass: "777"))
        usuarios.addUsuario(Usuario(name:"Daniela rivera",useru: "ari", pass: "777"))
        usuarios.addUsuario(Usuario(name:"Silvana Reyes",useru: "tarapaca", pass: "555"))
        usuarios.addUsuario(Usuario(name:"David Palape",useru: "norte", pass: "555"))
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Borrar Cajas de texto
    
    @IBAction func limpiar(sender: AnyObject) {
        txtPass.text = ""
        txtUser.text = ""
    }
    
    @IBAction func Logearse(sender: AnyObject) {
        
        var encontrado : Bool = false
        for u in usuarios.getUsuarios(){
            
            if u.getUseru().containsString(txtUser.text!) && u.getPass().containsString(txtPass.text!) {
                // Si el usuario coincide, se llamara a la vista que contendra el listado
                encontrado = true
                break
            }
        }
        
        if encontrado{
            let storyboard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            
            let vista2 :SistemaViewController =  storyboard.instantiateViewControllerWithIdentifier("sistema") as! SistemaViewController
            
            
            self.presentViewController(vista2, animated:true, completion: nil)
            
            
        }else{
            
            // Mensaje de alerta de usuario o contrasna invalido
            
            let alert = UIAlertController(
                title: "Error",
                message:" Usuario o Contrasena incorrecta",
                preferredStyle:  UIAlertControllerStyle.Alert)
            
            let accion = UIAlertAction(title:"cerrar",
                style: UIAlertActionStyle.Default){
                    _  in alert.dismissViewControllerAnimated(true, completion: nil)
            }
            alert.addAction(accion)
            
            self.presentViewController(alert, animated:true, completion:nil)
            
            
            
            
        }
    }
}

