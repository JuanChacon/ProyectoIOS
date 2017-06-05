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
    var player = AVAudioPlayer()
    var sNomImg = ""
    var sTexto = ""
    var xmus = ""
    @IBOutlet var imgImagen: UIImageView!
    @IBOutlet weak var lblDatos: UILabel!
    
    @IBAction func BtnPlay(sender: UIButton) {
        xmus = "electric_guitar1"
        playmusic()
       
    }
    @IBAction func btnp2(sender: UIButton) {
        xmus = "electric_guitar2"
        playmusic()
    }
    @IBAction func btnp3(sender: UIButton) {
        xmus = "electric_guitar3"
        playmusic()
    }
    @IBAction func btnp4(sender: UIButton) {
        xmus = "electric_guitar4"
        playmusic()
    }
    @IBAction func btnp5(sender: UIButton) {
        xmus = "electric_guitar1"
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
    
    func playmusic (){
        let sound = NSURL (fileURLWithPath: NSBundle.mainBundle().pathForResource(xmus, ofType: "wav")!)
        
        do {
            //USAMOS LA VARIABLE CREADA ANTERIORMENTE DE TIPO AVAudioPlayer Y LE PASAMOS EL ARCHIVO RECOGIDO EN LA VARIABLE SOUND
            player = try AVAudioPlayer (contentsOfURL: sound)
        } catch let error as NSError {
            
            print("Hay un error \(error)")
            
        }
        //PREPARAMOS EL REPRODUCTOR PARA EMITIR SONIDOS
        player.prepareToPlay()
        //REPRODUCE EL ARCHIVO
        player.play()
    }

   

}
