//
//  ListItemClientes.swift
//  actividad6
//
//  Created by user117438 on 8/17/16.
//  Copyright © 2016 user117438. All rights reserved.
//

import UIKit

class ListItemClientes: UITableViewCell {
    
     // label asociados al table view cell
    
    @IBOutlet var lblRut: UILabel!
    @IBOutlet var lblNombre: UILabel!
    @IBOutlet var lblDireccion: UILabel!
    @IBOutlet var lblTelefono: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
