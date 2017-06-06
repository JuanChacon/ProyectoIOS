//
//  GuitarraViewController.swift
//  Project1
//
//  Created by  on 31/03/17.
// <Proyecto del equipo Applepie>
//

import UIKit
//Importacion del framework, libreria para reproducir archivos con extension .av
import AVFoundation

class GuitarraViewController: UIViewController {
    //Se declara una variable de reproductor de sonido, hay que importar el framework AvFoundation para usar esta clase.
    //Tambien se declaran 4 variables la primera es player es la que usa para reproducir los audios a traves de la libreria que se importo previamente (AVFoundation).
    //La segunda variable es sNomImg  donde se igualará a cadena vacía
    //La tercera variable sTexto para rescatar datos del view controller
    //La cuarta variable xmus es la variable que contiene el audio de la nota musical que se reproducirá
    var player = AVAudioPlayer()
    var sNomImg = ""
    var sTexto = ""
    var xmus = ""
    @IBOutlet var imgImagen: UIImageView!
    @IBOutlet weak var lblDatos: UILabel!
    
    //Se crea un action para el boton de la nota musical "Do" que se reproducira. Este bloque de código lo que hará es cada vez que el usuario presione
    //la nota "Do" reproducirà el sonido de la nota Do y mostrará en un label la nota que se esta tocando al momento de tocar el botòn
    //Se manda a llamar el metodo playmusic.
    @IBAction func BtnPlay(sender: UIButton) {
        xmus = "Do"
        imgImagen.image = UIImage(named: "imgdo")
        lblDatos.text = "Do"
        playmusic()
       
    }
    //Se crea un action para el boton de la nota musical "Re" que se reproducira. Este bloque de código lo que hará es cada vez que el usuario presione
    //la nota "Re" reproducirà el sonido de la nota Re y mostrará en un label la nota que se esta tocando al momento de tocar el botòn
    //Se manda a llamar el metodo playmusic.
    @IBAction func btnp2(sender: UIButton) {
        xmus = "Re"
        imgImagen.image = UIImage(named: "imgre")
        lblDatos.text = "Re"
        playmusic()
    }
    //Se crea un action para el boton de la nota musical "Mi" que se reproducira. Este bloque de código lo que hará es cada vez que el usuario presione
    //la nota "Mi" reproducirà el sonido de la nota Mi y mostrará en un label la nota que se esta tocando al momento de tocar el botòn
    //Se manda a llamar el metodo playmusic.
    @IBAction func btnp3(sender: UIButton) {
        xmus = "Mi"
        imgImagen.image = UIImage(named: "Mi-1")
        lblDatos.text = "Mi"
        playmusic()
    }
    //Se crea un action para el boton de la nota musical "Fa" que se reproducira. Este bloque de código lo que hará es cada vez que el usuario presione
    //la nota "Fa" reproducirà el sonido de la nota Fa y mostrará en un label la nota que se esta tocando al momento de tocar el botòn
    //Se manda a llamar el metodo playmusic.
    @IBAction func btnp4(sender: UIButton) {
        xmus = "Fa"
        imgImagen.image = UIImage(named: "Fa-1")
        lblDatos.text = "Fa"
        playmusic()
    }
    //Se crea un action para el boton de la nota musical "Sol" que se reproducira. Este bloque de código lo que hará es cada vez que el usuario presione
    //la nota "Sol" reproducirà el sonido de la nota Sol y mostrará en un label la nota que se esta tocando al momento de tocar el botòn.
    //Se manda a llamar el metodo playmusic.
    @IBAction func btnp5(sender: UIButton) {
        xmus = "Sol"
        imgImagen.image = UIImage(named: "Sol-1")
        lblDatos.text = "Sol"
        playmusic()
    }
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
    //Se crea el método playmusic en el cual se declara una variable para obtener la ruta del sonido a reproducir
    //El metodo se usa en el action de cada botòn declarado previamente
    //Se manda a llamar el metodo playmusic.
    func playmusic (){
        let sound = NSURL (fileURLWithPath: NSBundle.mainBundle().pathForResource(xmus, ofType: "mp3")!)
        
        do {
            //Se usara la variable creada anteriormente de tipo AVAudioPlayer y se le pasara el archivo recogido en la variable sound.
            player = try AVAudioPlayer (contentsOfURL: sound)
        } catch let error as NSError {
            
            print("There is an error \(error)")
            
        }
        //Se carga en el buffer el archivo a reproducir el cual esta en la variable player.
        player.prepareToPlay()
        //Se reproduce el archivo el cual esta precargado en la variable player.
        player.play()
    }

   

}
