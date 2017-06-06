//
//  BateriaViewController.swift
//  Project1
//
//  Created by  on 31/03/17.
//
//

import UIKit
//Importacion del framework, libreria para reproducir archivos con extension .av
import AVFoundation

//Se declara una variable de reproductor de sonido, hay que importar el framework AvFoundation para usar esta clase.
//Tambien se declaran 4 variables la primera es player es la que usa para reproducir los audios a traves de la libreria que se importo previamente (AVFoundation).
//La segunda variable es sNomImg  donde se igualará a cadena vacía.
//La tercera variable sTexto es para rescatar los datos del view controller(dependiendo del segue que se seleccione con el componente).
//La cuarta variable xmus es la variable que contiene el audio de la nota musical que se reproducirá.
class BateriaViewController: UIViewController {
    var player = AVAudioPlayer()
    var sNomImg = ""
    var sTexto = ""
    var xmus = ""
    // Declarion de un outlet para el componente de imgView.
    @IBOutlet var imgImagen: UIImageView!
    
    // Declaracion de un outlet de tipo etiqueta
    @IBOutlet weak var lblDatos: UILabel!
    
    
    
    //Declaracionn del boton BtnPlay1, en el cual se iguala a la variable xmus el nombre de un tono, el cual debe ser de tipo wav
    //Se manda llamar al metodo playmusic, el cual se define posteriormente.
    @IBAction func BtnPlay1(sender: UIButton) {
        xmus = "boom"
        playmusic()
    }
    //Declaracion del boton btnp2, en el cual se iguala a la variable xmus el nombre de un tono, el cual debe ser de tipo wav
    //Se manda llamar al metodo playmusic, el cual se define posteriormente.
    @IBAction func btnp2(sender: UIButton) {
        xmus = "boom"
        playmusic()
    }
    
    //Declaracion del boton btnp3, en el cual se iguala a la variable xmus el nombre de un tono, el cual debe ser de tipo wav
    //Se manda llamar al metodo playmusic, el cual se define posteriormente.
    @IBAction func btnp3(sender: UIButton) {
        xmus = "boom"
        playmusic()
    }
    
    //Declaracion del boton btnp4, en el cual se iguala a la variable xmus el nombre de un tono, el cual debe ser de tipo wav
    //Se manda llamar al metodo playmusic, el cual se define posteriormente.
    @IBAction func btnp4(sender: UIButton) {
        xmus = "tom"
        playmusic()
    }
    
    //Declaracion del boton btnp5, en el cual se iguala a la variable xmus el nombre de un tono, el cual debe ser de tipo wav
    //Se manda llamar al metodo playmusic, el cual se define posteriormente.
    @IBAction func btnp5(sender: UIButton) {
        xmus = "ride"
        playmusic()
    }
    //Declaracion del boton btnplaenmed, en el cual se iguala a la variable xmus el nombre de un tono, el cual debe ser de tipo wav
    //Se manda llamar al metodo playmusic, el cual se define posteriormente.
    @IBAction func btnplaenmed(sender: UIButton) {
        xmus = "ride"
        playmusic()
    }
    //Declaracion del boton btnplaar, en el cual se iguala a la variable xmus el nombre de un tono, el cual debe ser de tipo wav
    //Se manda llamar al metodo playmusic, el cual se define posteriormente.
    @IBAction func btnplaar(sender: UIButton) {
        xmus = "ride"
        playmusic()
    }
    
    // Al iniciar esta interfaz se igualan las variables imgImagen a el nombre de la imagen que se quiere mostrar, el cual se obtiene por medio del componente seleccionado, que asu vez manda a llamar al segue para enviar la informacion.
    override func viewDidLoad() {
        super.viewDidLoad()
        imgImagen.image = UIImage(named: sNomImg)!
        lblDatos.text = sTexto
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // Funcion playmusic, en este se declara una variable de nombre sound, en la cual se guardara el sonido que se quiere reproducir, especificando el tipo de dato que va a reproducir.
    //se declara un do/catch, esto para atrapar un error en caso de que el archivo que se intenta reproducir no exista o que sea de diferente tipo al especificado, en caso de si ser correcto el nombre del archivo se manda a preparar el archivo.
    func playmusic (){
        let sound = NSURL (fileURLWithPath: NSBundle.mainBundle().pathForResource(xmus, ofType: "wav")!)
        
        do {
             //Se usara la variable creada anteriormente de tipo AVAudioPlayer y se le pasara el archivo recogido en la variable sound.
            player = try AVAudioPlayer (contentsOfURL: sound)
        } catch let error as NSError {
            // Se imprime un error en caso de no existir el archivo.
            print("There is an error \(error)")
            
        }
        //Se carga en el buffer el archivo a reproducir el cual esta en la variable player.
        player.prepareToPlay()
        //Se reproduce el archivo el cual esta precargado en la variable player.
        player.play()
    }

}
