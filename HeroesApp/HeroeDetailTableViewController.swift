//
//  HeroeDetailTableViewController.swift
//  HeroesApp
//
//  Created by Fran Malo on 23/3/24.
//

import UIKit

class HeroeDetailTableViewController: UITableViewController {
    
    
    @IBOutlet weak var nombreReal: UILabel!
    @IBOutlet weak var alias: UILabel!
    @IBOutlet weak var edad: UILabel!
    
    @IBOutlet weak var Descripcion: UILabel!
    
    @IBOutlet weak var imagen: UIImageView!
    
    var selectedHeroe: Heroe?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nombreReal.text = selectedHeroe?.nombreReal
        alias.text = selectedHeroe?.apodo

        /*
        edad.text = "\(2024 - (selectedHeroe?.edad ?? 2024))"
        */
        imagen.image = UIImage(named: (selectedHeroe?.imagen)!)
        
        Descripcion.text = selectedHeroe?.descripcionHistoria
        Descripcion.adjustsFontSizeToFitWidth = true
        Descripcion.textColor = UIColor.secondaryLabel

        
    }
    
}
