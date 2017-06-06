//
//  PianoViewController.swift
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
class PianoViewController: UIViewController {
    var player = AVAudioPlayer()
    var player2 = AVAudioPlayer()
    var sNomImg = ""
    var sTexto = ""
    var xmus = ""
    
      // Declarion de un outlet para el componente de imgView.
    @IBOutlet var imgImagen: UIImageView!
     // Declaracion de un outlet de tipo etiqueta
    @IBOutlet weak var lblDatos: UILabel!
    
    
    //Declaracion del boton BtnPlay1, en el cual se iguala a la variable xmus el nombre de un tono, el cual debe ser de tipo wav
    // En la etiqueta se despliega un "Do", esta es la tecla que selecciono el usuario.
    //Se manda llamar al metodo playmusic, el cual se define posteriormente.
    @IBAction func BtnPlay1(sender: UIButton) {
        xmus = "c1"
        lblDatos.text = "Do"
        playmusic()
    }
    
    //Declaracion del boton btnp2, en el cual se iguala a la variable xmus el nombre de un tono, el cual debe ser de tipo wav
    // En la etiqueta se despliega un "Re", esta es la tecla que selecciono el usuario.
    //Se manda llamar al metodo playmusic, el cual se define posteriormente.
    @IBAction func btnp2(sender: UIButton) {
        xmus = "d1"
        lblDatos.text = "Re"
        playmusic()
    }
    
    //Declaracion del boton btnp5, en el cual se iguala a la variable xmus el nombre de un tono, el cual debe ser de tipo wav
    // En la etiqueta se despliega un "Mi", esta es la tecla que selecciono el usuario.
    //Se manda llamar al metodo playmusic, el cual se define posteriormente.
    @IBAction func btnp5(sender: UIButton) {
        xmus = "e1"
        lblDatos.text = "Mi"
        playmusic()
    }
    //Declaracion del boton btnp4, en el cual se iguala a la variable xmus el nombre de un tono, el cual debe ser de tipo wav
    // En la etiqueta se despliega un "Fa", esta es la tecla que selecciono el usuario.
    //Se manda llamar al metodo playmusic, el cual se define posteriormente.
    @IBAction func btnp4(sender: UIButton) {
        xmus = "f1"
        lblDatos.text = "Fa"
        playmusic()
    }
    //Declaracion del boton btnp3, en el cual se iguala a la variable xmus el nombre de un tono, el cual debe ser de tipo wav
    // En la etiqueta se despliega un "sol", esta es la tecla que selecciono el usuario.
    //Se manda llamar al metodo playmusic, el cual se define posteriormente.
    @IBAction func btnp3(sender: UIButton) {
        xmus = "g1"
        lblDatos.text = "Sol"
        playmusic()
    }
    //Declaracion del boton btnp6, en el cual se iguala a la variable xmus el nombre de un tono, el cual debe ser de tipo wav
    // En la etiqueta se despliega un "La", esta es la tecla que selecciono el usuario.
    //Se manda llamar al metodo playmusic, el cual se define posteriormente.
    @IBAction func btnp6(sender: UIButton) {
        xmus = "a1"
        lblDatos.text = "La"
        playmusic()
    }
    //Declaracion del boton btnp7, en el cual se iguala a la variable xmus el nombre de un tono, el cual debe ser de tipo wav
    // En la etiqueta se despliega un "Si", esta es la tecla que selecciono el usuario.
    //Se manda llamar al metodo playmusic, el cual se define posteriormente.
    @IBAction func btnp7(sender: UIButton) {
        xmus = "b1"
        lblDatos.text = "Si"
        playmusic()
    }
    //Declaracion del boton btnp8, en el cual se iguala a la variable xmus el nombre de un tono, el cual debe ser de tipo wav
    // En la etiqueta se despliega un "Do", esta es la tecla que selecciono el usuario.
    //Se manda llamar al metodo playmusic, el cual se define posteriormente.
    @IBAction func btnp8(sender: UIButton) {
        xmus = "r1"
        lblDatos.text = "Do8vo"
        playmusic2()
    }
    //Declaracion del boton btnp, en el cual se iguala a la variable xmus el nombre de un tono, el cual debe ser de tipo wav
    // En la etiqueta se despliega un "Re", esta es la tecla que selecciono el usuario.
    //Se manda llamar al metodo playmusic, el cual se define posteriormente.
    @IBAction func btnp(sender: UIButton) {
        xmus = "r3"
        lblDatos.text = "Re"
        playmusic2()
    }//Declaracion del boton btnp9, en el cual se iguala a la variable xmus el nombre de un tono, el cual debe ser de tipo wav
    // En la etiqueta se despliega un "Mi", esta es la tecla que selecciono el usuario.
    //Se manda llamar al metodo playmusic, el cual se define posteriormente.
    @IBAction func btnp9(sender: UIButton) {
        xmus = "r5"
        lblDatos.text = "Mi"
        playmusic2()
    }
    //Declaracion del boton btnp10, en el cual se iguala a la variable xmus el nombre de un tono, el cual debe ser de tipo wav
    // En la etiqueta se despliega un "Fa", esta es la tecla que selecciono el usuario.
    //Se manda llamar al metodo playmusic, el cual se define posteriormente.
    @IBAction func btnp10(sender: UIButton) {
        xmus = "r6"
        lblDatos.text = "Fa"
        playmusic2()
    }
    //Declaracion del boton btnp11, en el cual se iguala a la variable xmus el nombre de un tono, el cual debe ser de tipo wav
    // En la etiqueta se despliega un "Sol", esta es la tecla que selecciono el usuario.
    //Se manda llamar al metodo playmusic, el cual se define posteriormente.
    @IBAction func btnp11(sender: UIButton) {
        xmus = "r8"
        lblDatos.text = "Sol"
        playmusic2()
    }//Declaracion del boton btnp12, en el cual se iguala a la variable xmus el nombre de un tono, el cual debe ser de tipo wav
    // En la etiqueta se despliega un "La", esta es la tecla que selecciono el usuario.
    //Se manda llamar al metodo playmusic, el cual se define posteriormente.
    @IBAction func btnp12(sender: UIButton) {
        xmus = "r10"
        lblDatos.text = "La"
        playmusic2()
    }
    //Declaracion del boton btnn1, en el cual se iguala a la variable xmus el nombre de un tono, el cual debe ser de tipo wav
    // En la etiqueta se despliega un "Do#", esta es la tecla que selecciono el usuario.
    //Se manda llamar al metodo playmusic, el cual se define posteriormente.
    @IBAction func btnn1(sender: UIButton) {
        xmus = "c1s"
        lblDatos.text = "Do#"
        playmusic()
    }
    //Declaracion del boton btnn2, en el cual se iguala a la variable xmus el nombre de un tono, el cual debe ser de tipo wav
    // En la etiqueta se despliega un "Re#", esta es la tecla que selecciono el usuario.
    //Se manda llamar al metodo playmusic, el cual se define posteriormente.
    @IBAction func btnn2(sender: UIButton) {
        xmus = "d1s"
        lblDatos.text = "Re#"
        playmusic()
    }
    //Declaracion del boton btnn3, en el cual se iguala a la variable xmus el nombre de un tono, el cual debe ser de tipo wav
    // En la etiqueta se despliega un "Mi#", esta es la tecla que selecciono el usuario.
    //Se manda llamar al metodo playmusic, el cual se define posteriormente.
    @IBAction func btnn3(sender: UIButton) {
        xmus = "Mi#"
        lblDatos.text = "Mi#"
        playmusic()
    }
    //Declaracion del boton btnn4, en el cual se iguala a la variable xmus el nombre de un tono, el cual debe ser de tipo wav
    // En la etiqueta se despliega un "Fa#", esta es la tecla que selecciono el usuario.
    //Se manda llamar al metodo playmusic, el cual se define posteriormente.
    @IBAction func btnn4(sender: UIButton) {
        xmus = "f1s"
        lblDatos.text = "Fa#"
        playmusic()
    }
    //Declaracion del boton btnn5, en el cual se iguala a la variable xmus el nombre de un tono, el cual debe ser de tipo wav
    // En la etiqueta se despliega un "Sol#", esta es la tecla que selecciono el usuario.
    //Se manda llamar al metodo playmusic, el cual se define posteriormente.
    @IBAction func btnn5(sender: UIButton) {
        xmus = "g1s"
        lblDatos.text = "Sol#"
        playmusic()
    }
    //Declaracion del boton btnn6, en el cual se iguala a la variable xmus el nombre de un tono, el cual debe ser de tipo wav
    // En la etiqueta se despliega un "La#", esta es la tecla que selecciono el usuario.
    //Se manda llamar al metodo playmusic, el cual se define posteriormente.
    @IBAction func btnn6(sender: UIButton) {
        xmus = "r2"
        lblDatos.text = "La#"
        playmusic2()
    }
    //Declaracion del boton btnn7, en el cual se iguala a la variable xmus el nombre de un tono, el cual debe ser de tipo wav
    // En la etiqueta se despliega un "Si#", esta es la tecla que selecciono el usuario.
    //Se manda llamar al metodo playmusic, el cual se define posteriormente.
    @IBAction func btnn7(sender: UIButton) {
        xmus = "r4"
        lblDatos.text = "Si#"
        playmusic2()
    }
    
    //Declaracion del boton btnn8, en el cual se iguala a la variable xmus el nombre de un tono, el cual debe ser de tipo wav
    // En la etiqueta se despliega un "Do8vo#", esta es la tecla que selecciono el usuario.
    //Se manda llamar al metodo playmusic, el cual se define posteriormente.
    @IBAction func btnn8(sender: UIButton) {
        xmus = "r7"
        lblDatos.text = "Do8vo"
        playmusic2()
    }
    
    //Declaracion del boton btnn9, en el cual se iguala a la variable xmus el nombre de un tono, el cual debe ser de tipo wav
    // En la etiqueta se despliega un "Re", esta es la tecla que selecciono el usuario.
    //Se manda llamar al metodo playmusic, el cual se define posteriormente.
    @IBAction func btnn9(sender: UIButton) {
        xmus = "r9"
        lblDatos.text = "Re"
        playmusic2()
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
    
    func playmusic2 (){
        let sound = NSURL (fileURLWithPath: NSBundle.mainBundle().pathForResource(xmus, ofType: "mp3")!)
        
        do {
            //Se usara la variable creada anteriormente de tipo AVAudioPlayer y se le pasara el archivo recogido en la variable sound.
            player2 = try AVAudioPlayer (contentsOfURL: sound)
        } catch let error as NSError {
            // Se imprime un error en caso de no existir el archivo.
            print("There is an error \(error)")
            
        }
        //Se carga en el buffer el archivo a reproducir el cual esta en la variable player.
        player2.prepareToPlay()
        //Se reproduce el archivo el cual esta precargado en la variable player.
        player2.play()
    }


}
