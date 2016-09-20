//
//  SistemaViewController.swift
//  Trabajo16
//
//  Created by user118713 on 9/19/16.
//  Copyright © 2016 user118713. All rights reserved.
//

import UIKit

class SistemaViewController: UIViewController ,UITableViewDelegate, UITableViewDataSource{
    
    
    // Referencia al tableView
    @IBOutlet var lvClientes: UITableView!
    
    // Lista de clientes
    var itemsClientes = Array<Clientes>()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Creacion de clientes
        var cli: Clientes = Clientes(rut: "111",nombre: "juan",direccion: "AV Iquique",telefono: "565665")
        self.itemsClientes.append(cli)
        
        cli = Clientes(rut: "222",nombre: "Maria",direccion: "Av Arica",telefono: "893893")
        self.itemsClientes.append(cli)
        
        
        cli = Clientes(rut: "333",nombre: "Alberto",direccion: "Av Anfogasta",telefono: "2342")
        self.itemsClientes.append(cli)
        
        // asociando nuestro tableview con las interfaces
        self.lvClientes.delegate = self
        self.lvClientes.dataSource = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // filas que mostrara por seccion
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.itemsClientes.count;
    }
    // medodo que asociara el registro de cliente con una fila de la tabla
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let celda:ListItemClientes = self.lvClientes.dequeueReusableCellWithIdentifier("celda") as! ListItemClientes
        celda.lblNombre.text =  self.itemsClientes[indexPath.row].getNombre()
        celda.lblDireccion.text = self.itemsClientes[indexPath.row].getDireccion()
        celda.lblTelefono.text = self.itemsClientes[indexPath.row].getTelefono()
        
        return celda;
    }    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigatio
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    
    //regresar al login
    
    @IBAction func volver(sender: AnyObject) {
        let storyboard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        let vista2 : ViewController =  storyboard.instantiateViewControllerWithIdentifier("login") as! ViewController
        
        
        self.presentViewController(vista2, animated:true, completion: nil)
    }
    
}
