//
//  abcViewController.swift
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
class abcViewController: UIViewController {
    var xmus = ""
    var player = AVAudioPlayer()

    //Declaracionn del boton btnLettA, en el cual se iguala a la variable xmus el nombre de un tono, el cual debe ser de tipo wav
    //Se manda llamar al metodo playmusic, el cual se define posteriormente.
    @IBAction func btnLettA(sender: UIButton) {
        xmus = "A"
        playmusic()
    }
    //Declaracionn del boton btnB, en el cual se iguala a la variable xmus el nombre de un tono, el cual debe ser de tipo wav
    //Se manda llamar al metodo playmusic, el cual se define posteriormente.
    @IBAction func btnB(sender: UIButton) {
        xmus = "B"
        playmusic()
    }
    //Declaracionn del boton btnC, en el cual se iguala a la variable xmus el nombre de un tono, el cual debe ser de tipo wav
    //Se manda llamar al metodo playmusic, el cual se define posteriormente.
    @IBAction func btnC(sender: UIButton) {
        xmus = "C"
        playmusic()
    }
    //Declaracionn del boton btnD, en el cual se iguala a la variable xmus el nombre de un tono, el cual debe ser de tipo wav
    //Se manda llamar al metodo playmusic, el cual se define posteriormente.
    @IBAction func btnD(sender: UIButton) {
        xmus = "D"
        playmusic()
    }
    //Declaracionn del boton btnE, en el cual se iguala a la variable xmus el nombre de un tono, el cual debe ser de tipo wav
    //Se manda llamar al metodo playmusic, el cual se define posteriormente.
    @IBAction func btnE(sender: UIButton) {
        xmus = "E"
        playmusic()
    }
    //Declaracionn del boton btnF, en el cual se iguala a la variable xmus el nombre de un tono, el cual debe ser de tipo wav
    //Se manda llamar al metodo playmusic, el cual se define posteriormente.
    @IBAction func btnF(sender: UIButton) {
        xmus = "F"
        playmusic()
    }
    //Declaracionn del boton btnG, en el cual se iguala a la variable xmus el nombre de un tono, el cual debe ser de tipo wav
    //Se manda llamar al metodo playmusic, el cual se define posteriormente.
    @IBAction func btnG(sender: UIButton) {
        xmus = "G"
        playmusic()
    }
    
    //Declaracionn del boton btnH, en el cual se iguala a la variable xmus el nombre de un tono, el cual debe ser de tipo wav
    //Se manda llamar al metodo playmusic, el cual se define posteriormente.
    @IBAction func btnH(sender: UIButton) {
        xmus = "H"
        playmusic()
    }
    //Declaracionn del boton btnI, en el cual se iguala a la variable xmus el nombre de un tono, el cual debe ser de tipo wav
    //Se manda llamar al metodo playmusic, el cual se define posteriormente.
    @IBAction func btnI(sender: UIButton) {
        xmus = "I"
        playmusic()
    }
    
    //Declaracionn del boton btnJ, en el cual se iguala a la variable xmus el nombre de un tono, el cual debe ser de tipo wav
    //Se manda llamar al metodo playmusic, el cual se define posteriormente.
    @IBAction func btnJ(sender: UIButton) {
        xmus = "J"
        playmusic()
    }
    //Declaracionn del boton btnK, en el cual se iguala a la variable xmus el nombre de un tono, el cual debe ser de tipo wav
    //Se manda llamar al metodo playmusic, el cual se define posteriormente.
    @IBAction func btnK(sender: UIButton) {
        xmus = "K"
        playmusic()
    }
    //Declaracionn del boton btnL, en el cual se iguala a la variable xmus el nombre de un tono, el cual debe ser de tipo wav
    //Se manda llamar al metodo playmusic, el cual se define posteriormente.
    @IBAction func btnL(sender: UIButton) {
        xmus = "L"
        playmusic()
    }
    //Declaracionn del boton btnM, en el cual se iguala a la variable xmus el nombre de un tono, el cual debe ser de tipo wav
    //Se manda llamar al metodo playmusic, el cual se define posteriormente.
    @IBAction func btnM(sender: UIButton) {
        xmus = "M"
        playmusic()
    }
    //Declaracionn del boton btnN, en el cual se iguala a la variable xmus el nombre de un tono, el cual debe ser de tipo wav
    //Se manda llamar al metodo playmusic, el cual se define posteriormente.
    @IBAction func btnN(sender: UIButton) {
        xmus = "N"
        playmusic()
    }
    
    //Declaracionn del boton btnO, en el cual se iguala a la variable xmus el nombre de un tono, el cual debe ser de tipo wav
    //Se manda llamar al metodo playmusic, el cual se define posteriormente.
    @IBAction func btnO(sender: UIButton) {
        xmus = "O"
        playmusic()
    }
    //Declaracionn del boton btnP, en el cual se iguala a la variable xmus el nombre de un tono, el cual debe ser de tipo wav
    //Se manda llamar al metodo playmusic, el cual se define posteriormente.
    @IBAction func btnP(sender: UIButton) {
        xmus = "P"
        playmusic()
    }
    
    //Declaracionn del boton btnQ, en el cual se iguala a la variable xmus el nombre de un tono, el cual debe ser de tipo wav
    //Se manda llamar al metodo playmusic, el cual se define posteriormente.
    @IBAction func btnQ(sender: UIButton) {
        xmus = "Q"
        playmusic()
    }
    //Declaracionn del boton btnR, en el cual se iguala a la variable xmus el nombre de un tono, el cual debe ser de tipo wav
    //Se manda llamar al metodo playmusic, el cual se define posteriormente.
    @IBAction func btnR(sender: UIButton) {
        xmus = "R"
        playmusic()
    }
    //Declaracionn del boton btnS, en el cual se iguala a la variable xmus el nombre de un tono, el cual debe ser de tipo wav
    //Se manda llamar al metodo playmusic, el cual se define posteriormente.
    @IBAction func btnS(sender: UIButton) {
        xmus = "S"
        playmusic()
    }
    //Declaracionn del boton btnT, en el cual se iguala a la variable xmus el nombre de un tono, el cual debe ser de tipo wav
    //Se manda llamar al metodo playmusic, el cual se define posteriormente.
    @IBAction func btnT(sender: UIButton) {
        xmus = "T"
        playmusic()
    }
    
    //Declaracionn del boton btnU, en el cual se iguala a la variable xmus el nombre de un tono, el cual debe ser de tipo wav
    //Se manda llamar al metodo playmusic, el cual se define posteriormente.
    @IBAction func btnU(sender: UIButton) {
        xmus = "U"
        playmusic()
    }
    //Declaracionn del boton btnV, en el cual se iguala a la variable xmus el nombre de un tono, el cual debe ser de tipo wav
    //Se manda llamar al metodo playmusic, el cual se define posteriormente.
    @IBAction func btnV(sender: UIButton) {
        xmus = "V"
        playmusic()
    }
    
    //Declaracionn del boton btnW, en el cual se iguala a la variable xmus el nombre de un tono, el cual debe ser de tipo wav
    //Se manda llamar al metodo playmusic, el cual se define posteriormente.
    @IBAction func btnW(sender: UIButton) {
        xmus = "W"
        playmusic()
    }
    
    //Declaracionn del boton btnX, en el cual se iguala a la variable xmus el nombre de un tono, el cual debe ser de tipo wav
    //Se manda llamar al metodo playmusic, el cual se define posteriormente.
    @IBAction func btnX(sender: UIButton) {
        xmus = "X"
        playmusic()
    }
    //Declaracionn del boton btnY, en el cual se iguala a la variable xmus el nombre de un tono, el cual debe ser de tipo wav
    //Se manda llamar al metodo playmusic, el cual se define posteriormente.
    @IBAction func btnY(sender: UIButton) {
        xmus = "Y"
        playmusic()
    }
    //Declaracionn del boton btnZ, en el cual se iguala a la variable xmus el nombre de un tono, el cual debe ser de tipo wav
    //Se manda llamar al metodo playmusic, el cual se define posteriormente.
    @IBAction func btnZ(sender: UIButton) {
        xmus = "Z"
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
