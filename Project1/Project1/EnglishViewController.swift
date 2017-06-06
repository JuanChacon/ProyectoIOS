//
//  EnglishViewController.swift
//  Project1
//
//  Created by  on 19/05/17.
//
//

import UIKit

class EnglishViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    
    // Declaracion de un outlet de tipo pickerview.
    @IBOutlet weak var pickerSound: UIPickerView!
    
    // Declaracion de un boton.
    @IBAction func btnCont(sender: UIButton) {
    }
    
    let asData = ["Alphabet", "Numbers", "Colors"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
        // Metodo titleForRow este metodo funciona para tomar el valor entero de la fila que se selecciona en el picker view, se regresa un valor entero por cada fila.
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return asData[row] //Fila que se debe refrescar (mostrar el texto)
        } else {
            return asData[row]
        }
    }
    
     //funcion numberOfComponentsInPickerView, regresa el numero de componentes que contendran los arreglos
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1 //Numero de componentes que contendran a los arreglos
    }
    
    // funcion didSelectRow, este metodo es para obtener el nombre del componente en la posicion que se obtenga del row.
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let dataComp1 = asData[pickerView.selectedRowInComponent(0)]
        
        
        // Se declaran dos variables para mostrar un UIAlertcontroller, con el mensaje "Are you Sure?", se desplegaran dos opciones una con la leyenda ok, si se preciona esta boton, se mandara a la interfaz establecida, si preciona el boton de cancel se quedara en la interfaz actual.
        let acMostrar = UIAlertController(title: "English", message: "You Selected "+dataComp1+", Are You Sure?", preferredStyle: .Alert)
        let acBoton = UIAlertAction(title: "Ok", style: .Default, handler: {action in self.performSegueWithIdentifier(dataComp1, sender: self)})
        let btnNe=UIAlertAction(title: "Cancel",style: .Default,handler: nil)
        acMostrar.addAction(acBoton)
        acMostrar.addAction(btnNe)
        presentViewController(acMostrar, animated: true, completion: nil)
    }
    // Metodo titleForRow este metodo funciona para tomar el valor entero de la fila que se selecciona en el picker view, se regresa un valor entero por cada fila.
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return asData.count //Cantidad de datos en el componente actual
        } else {
            return asData.count
        }
    }
    
    // funcion prepareForSegue, este metodo es para mandar  a una determinada interfaz dependiendo del componente seleccionado, esto por medio del nombre del segue.
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "Alphabet" {
            //let miViewController = segue.destinationViewController as! GuitarraViewController
        }
        else if segue.identifier == "Numbers" {
            //let miViewController = segue.destinationViewController as! BateriaViewController
        }
        else if segue.identifier == "Colors" {
            //let miViewController = segue.destinationViewController as! PianoViewController
        }
    }

}
