//
//  ViewController.swift
//  Project1
//
//  Created by  on 31/03/17.
//
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var pickerSound: UIPickerView!
    
    @IBAction func btnCont(sender: UIButton) {
        let dataComp1 = asData[pickerSound.selectedRowInComponent(0)]
        
        let acMostrar = UIAlertController(title: "SOUNDS", message: "Seleccionaste "+dataComp1+", estas seguro?", preferredStyle: .Alert)
        let acBoton = UIAlertAction(title: "Ok", style: .Default, handler: {action in self.performSegueWithIdentifier(dataComp1, sender: self)})
        let btnNe=UIAlertAction(title: "Cancelar",style: .Default,handler: nil)
        acMostrar.addAction(acBoton)
        acMostrar.addAction(btnNe)
        presentViewController(acMostrar, animated: true, completion: nil)
    }
    
    let asData = ["Guitarra", "Bateria", "Flauta", "Bajo", "Piano"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return asData[row] //Fila que se debe refrescar (mostrar el texto)
        } else {
            return asData[row]
        }
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1 //Numero de componentes que contendran a los arreglos
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return asData.count //Cantidad de datos en el componente actual
        } else {
            return asData.count
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "Guitarra" {
            let miViewController = segue.destinationViewController as! GuitarraViewController
            miViewController.sTexto = "BIENVENIDO!!!"
            miViewController.sNomImg = "guitarra"
        }
        else if segue.identifier == "Bateria" {
            let miViewController = segue.destinationViewController as! BateriaViewController
            miViewController.sTexto = "Aprende a tocar la batería"
            miViewController.sNomImg = "bate"
        }
        else if segue.identifier == "Piano" {
            let miViewController = segue.destinationViewController as! PianoViewController
            miViewController.sTexto = "BIENVENIDO!!!"
            miViewController.sNomImg = "piano-1"
        }
    }


}

