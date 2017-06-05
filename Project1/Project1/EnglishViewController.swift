//
//  EnglishViewController.swift
//  Project1
//
//  Created by  on 19/05/17.
//
//

import UIKit

class EnglishViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var pickerSound: UIPickerView!
    
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
        let dataComp1 = asData[pickerView.selectedRowInComponent(0)]
        
        let acMostrar = UIAlertController(title: "English", message: "Seleccionaste "+dataComp1+", estas seguro?", preferredStyle: .Alert)
        let acBoton = UIAlertAction(title: "Ok", style: .Default, handler: {action in self.performSegueWithIdentifier(dataComp1, sender: self)})
        let btnNe=UIAlertAction(title: "Cancelar",style: .Default,handler: nil)
        acMostrar.addAction(acBoton)
        acMostrar.addAction(btnNe)
        presentViewController(acMostrar, animated: true, completion: nil)
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return asData.count //Cantidad de datos en el componente actual
        } else {
            return asData.count
        }
    }
    
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
