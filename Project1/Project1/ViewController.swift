//
//  ViewController.swift
//  Project1
//
//  Created by  on 31/03/17.
// Created By Team ApplePie
// Members of the team: 
// Juan Humberto Chacon Holguin
// Francisco Ramon Castillo Mendoza
// Adrian Eduardo Barrios Lopez
// Brandon Aguirre Trejo
//
//<Asignature: PLATAFORMA I IOS>

//<>


//Se importaron los sonidos necesarios para reproducir lo que es: Tonos de una guitarra acustica, Bateria, Piano acustico, esto para la parte de los sonidos de instrumentos.
// Se importaron los sonidos necesarios para reproducir lo que es: Tonos del abecedario en ingles, numeros en ingles y los colores.
// Se importaron las imagenes necesarias para poder mostrar graficamente las interfaces, esto es con imagenes representativas de lo que se esta hablando.

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    //Declaracion de un outlet de tipo PickerView
    @IBOutlet weak var pickerSound: UIPickerView!
    
    //Declaracion de un boton con un action para mostrar si la informacion que se selecciono es correcta, se mostrara un mensaje con la leyenda "You selected más el nombre del componente que selecciono el usuario, enseguida el usuario seleccionara algun boton: Ok o cancelar" si escoge Ok se desplegara la vista que el usuario selecciono, si selecciona cancel, no se mostrara nada, esto es se quedara en la misma interfaz.
    @IBAction func btnCont(sender: UIButton) {
        let dataComp1 = asData[pickerSound.selectedRowInComponent(0)]
        
        let acMostrar = UIAlertController(title: "SOUNDS", message: "You Selected "+dataComp1+", Are you sure?", preferredStyle: .Alert)
        let acBoton = UIAlertAction(title: "Ok", style: .Default, handler: {action in self.performSegueWithIdentifier(dataComp1, sender: self)})
        let btnNe=UIAlertAction(title: "Cancel",style: .Default,handler: nil)
        acMostrar.addAction(acBoton)
        acMostrar.addAction(btnNe)
        presentViewController(acMostrar, animated: true, completion: nil)
    }
    //Arreglo donde se guardan los nombres de los instrumentos: los cuales son Guitar, Drums, Piano.
    let asData = ["Guitar", "Drums", "Piano"]
    
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
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
    }
    // funcion numberOfRowsInComponent dependiendo del componente seleccionado se regresara la cantidad de datos en el componente actual
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return asData.count
        } else {
            return asData.count
        }
    }
    
    // funcion prepareForSegue, esta funcion es para evaluar el nombre del segue,dependiendo del componente que seleccione se mandara a la vista correspondiente al igual tambien se podra comunicarse con la vista a la que corresponde el segue para llamar las variables que estan en esta vista, por lo que se envia un valor a las etiquetas de nombre sTexto y sNomImg, dependiendo de la vista seleccionada, esto se debe por el componente que se seleccione.
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "Guitar" {
            let miViewController = segue.destinationViewController as! GuitarraViewController
            miViewController.sTexto = "Learn to play the guitar"
            miViewController.sNomImg = "gui"
        }
        else if segue.identifier == "Drums" {
            let miViewController = segue.destinationViewController as! BateriaViewController
            miViewController.sTexto = "Learn to play the drums"
            miViewController.sNomImg = "bate"
        }
        else if segue.identifier == "Piano" {
            let miViewController = segue.destinationViewController as! PianoViewController
            miViewController.sTexto = "Learn to play the piano"
            miViewController.sNomImg = "piano-1"
        }
    }


}

