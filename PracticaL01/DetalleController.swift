//
//  DetalleController.swift
//  PracticaL01
//
//  Created by Donatto on 21/04/22.
//

import UIKit

class DetalleController: UIViewController {

    @IBOutlet weak var lblDiaSemana: UILabel!
    @IBOutlet weak var lblEstado: UILabel!
    @IBOutlet weak var lblEdad: UILabel!
    
    var diaSemana : String!, estado : String!, edad : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        lblEstado.text = estado
        lblDiaSemana.text = diaSemana
        lblEdad.text = edad
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
