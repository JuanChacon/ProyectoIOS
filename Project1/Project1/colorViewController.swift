//
//  colorViewController.swift
//  Project1
//
//  Created by  on 19/05/17.
//
//

import UIKit
//Importacion del framework, libreria para reproducir archivos con extension .wav
import AVFoundation

class colorViewController: UIViewController {
    var xmus = ""
    var player = AVAudioPlayer()
    //Declaracion del boton btnc1, en el cual se iguala a la variable xmus el nombre de un tono, el cual debe ser de tipo wav
    //Se manda llamar al metodo playmusic, el cual se define posteriormente.
    @IBAction func btnc1(sender: UIButton) {
        xmus = "white"
        playmusic()
    }
    //Declaracion del boton btnc2, en el cual se iguala a la variable xmus el nombre de un tono, el cual debe ser de tipo wav
    //Se manda llamar al metodo playmusic, el cual se define posteriormente.
    @IBAction func btnc2(sender: UIButton) {
        xmus = "yellow"
        playmusic()
    }
    //Declaracion del boton btnc3, en el cual se iguala a la variable xmus el nombre de un tono, el cual debe ser de tipo wav
    //Se manda llamar al metodo playmusic, el cual se define posteriormente.
    @IBAction func btnc3(sender: UIButton) {
        xmus = "red"
        playmusic()
    }
    //Declaracion del boton btnc4, en el cual se iguala a la variable xmus el nombre de un tono, el cual debe ser de tipo wav
    //Se manda llamar al metodo playmusic, el cual se define posteriormente.
    @IBAction func btnc4(sender: UIButton) {
        xmus = "purple"
        playmusic()
    }
    //Declaracion del boton btnc5, en el cual se iguala a la variable xmus el nombre de un tono, el cual debe ser de tipo wav
    //Se manda llamar al metodo playmusic, el cual se define posteriormente.
    @IBAction func btnc5(sender: UIButton) {
        xmus = "green"
        playmusic()
    }
    //Declaracion del boton btnc6, en el cual se iguala a la variable xmus el nombre de un tono, el cual debe ser de tipo wav
    //Se manda llamar al metodo playmusic, el cual se define posteriormente.
    @IBAction func btnc6(sender: UIButton) {
        xmus = "orange"
        playmusic()
    }
    //Declaracion del boton btnc7, en el cual se iguala a la variable xmus el nombre de un tono, el cual debe ser de tipo wav
    //Se manda llamar al metodo playmusic, el cual se define posteriormente.
    @IBAction func btnc7(sender: UIButton) {
        xmus = "blue"
        playmusic()
    }
    //Declaracion del boton btnc8, en el cual se iguala a la variable xmus el nombre de un tono, el cual debe ser de tipo wav
    //Se manda llamar al metodo playmusic, el cual se define posteriormente.
    @IBAction func btnc8(sender: UIButton) {
        xmus = "black"
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
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
