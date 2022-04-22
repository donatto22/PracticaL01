//
//  ViewController.swift
//  PracticaL01
//
//  Created by Donatto on 21/04/22.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    let diasSemana = ["Lunes", "Martes", "Miercoles", "Jueves",
                      "Viernes", "Sabado", "Domingo"]
    
    @IBOutlet weak var sgEstado: UISegmentedControl!
    
    @IBOutlet weak var txtEdad: UITextField!
    private var diaSeleccionado : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        diaSeleccionado = self.diasSemana[0]
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return diasSemana.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        return diasSemana[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        diaSeleccionado = diasSemana[row]
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.destination {
        case is DetalleController:
            let destino = segue.destination as! DetalleController
            let estadoIndex = sgEstado.selectedSegmentIndex
            let edad = txtEdad.text
            
            var estado = ""
            if estadoIndex == 0 {
                estado = "Estudiante"
            }
            else if estadoIndex == 1 {
                estado = "Trabajo"
            }
            else {
                estado = "Ambos"
            }
            
            destino.estado = estado
            destino.diaSemana = diaSeleccionado
            destino.edad = edad
            
            
        default: break
        }
    }
}
