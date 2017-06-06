//
//  numViewController.swift
//  Project1
//
//  Created by  on 19/05/17.
//
//

import UIKit
//Importacion del framework, libreria para reproducir archivos con extension .wav
import AVFoundation
//Declaracion de dos variables.
// variable de nombre xmus, esta sera igual a una cadena vacia.
// variable de nombre player, esta sera igual al metodo de nombre AVAudioPlayer.
class numViewController: UIViewController {
    var xmus = ""
    var player = AVAudioPlayer()
    
    //Declaracion del boton brnN1, en el cual se iguala a la variable xmus el nombre de un tono, el cual debe ser de tipo wav
    //Se manda llamar al metodo playmusic, el cual se define posteriormente.
    @IBAction func brnN1(sender: UIButton) {
        xmus = "one"
        playmusic()
    }
    //Declaracion del boton brnN2, en el cual se iguala a la variable xmus el nombre de un tono, el cual debe ser de tipo wav
    //Se manda llamar al metodo playmusic, el cual se define posteriormente.
    @IBAction func brnN2(sender: UIButton) {
        xmus = "two"
        playmusic()
        
    }
    //Declaracion del boton brnN3, en el cual se iguala a la variable xmus el nombre de un tono, el cual debe ser de tipo wav
    //Se manda llamar al metodo playmusic, el cual se define posteriormente.
    @IBAction func brnN3(sender: UIButton) {
        xmus = "three"
        playmusic()
        
    }
    //Declaracion del boton brnN4, en el cual se iguala a la variable xmus el nombre de un tono, el cual debe ser de tipo wav
    //Se manda llamar al metodo playmusic, el cual se define posteriormente.
    @IBAction func brnN4(sender: UIButton) {
        xmus = "four"
        playmusic()
        
    }
    //Declaracion del boton brnN5, en el cual se iguala a la variable xmus el nombre de un tono, el cual debe ser de tipo wav
    //Se manda llamar al metodo playmusic, el cual se define posteriormente.
    @IBAction func brnN5(sender: UIButton) {
        xmus = "five"
        playmusic()
        
    }
    //Declaracion del boton brnN6, en el cual se iguala a la variable xmus el nombre de un tono, el cual debe ser de tipo wav
    //Se manda llamar al metodo playmusic, el cual se define posteriormente.
    @IBAction func brnN6(sender: UIButton) {
        xmus = "six"
        playmusic()
        
    }
    //Declaracion del boton brnN7, en el cual se iguala a la variable xmus el nombre de un tono, el cual debe ser de tipo wav
    //Se manda llamar al metodo playmusic, el cual se define posteriormente.
    @IBAction func brnN7(sender: UIButton) {
        xmus = "seven"
        playmusic()
        
    }
    //Declaracion del boton brnN8, en el cual se iguala a la variable xmus el nombre de un tono, el cual debe ser de tipo wav
    //Se manda llamar al metodo playmusic, el cual se define posteriormente.
    @IBAction func brnN8(sender: UIButton) {
        xmus = "eight"
        playmusic()
        
    }
    //Declaracion del boton brnN9, en el cual se iguala a la variable xmus el nombre de un tono, el cual debe ser de tipo wav
    //Se manda llamar al metodo playmusic, el cual se define posteriormente.
    @IBAction func brnN9(sender: UIButton) {
        xmus = "nine"
        playmusic()
        
    }
    //Declaracion del boton brnN10, en el cual se iguala a la variable xmus el nombre de un tono, el cual debe ser de tipo wav
    //Se manda llamar al metodo playmusic, el cual se define posteriormente.
    @IBAction func brnN10(sender: UIButton) {
        xmus = "one"
        playmusic()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // Funcion playmusic, en este se declara una variable de nombre sound, en la cual se guardara el sonido que se quiere reproducir, especificando el tipo de dato que va a reproducir.
    //se declara un do/catch, esto para atrapar un error en caso de que el archivo que se intenta reproducir no exista o que sea de diferente tipo al especificado, en caso de si ser correcto el nombre del archivo se manda a preparar el archivo.
    func playmusic (){
        let sound = NSURL (fileURLWithPath: NSBundle.mainBundle().pathForResource(xmus, ofType: "mp3")!)
        
        do {
            //Se usara la variable creada anteriormente de tipo AVAudioPlayer y se le pasara el archivo recogido en la variable sound.
            player = try AVAudioPlayer (contentsOfURL: sound)
        } catch let error as NSError {
            // Se imprime un error en caso de no existir el archivo.
            print("There is an eroor \(error)")
            
        }
        //Se carga en el buffer el archivo a reproducir el cual esta en la variable player.
        player.prepareToPlay()
        //Se reproduce el archivo el cual esta precargado en la variable player.
        player.play()
    }

}
