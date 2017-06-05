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

class BateriaViewController: UIViewController {
    var player = AVAudioPlayer()
    var sNomImg = ""
    var sTexto = ""
    var xmus = ""
    @IBOutlet var imgImagen: UIImageView!
    @IBOutlet weak var lblDatos: UILabel!
    
    @IBAction func BtnPlay1(sender: UIButton) {
        xmus = "boom"
        playmusic()
    }
    @IBAction func btnp2(sender: UIButton) {
        xmus = "boom"
        playmusic()
    }
    @IBAction func btnp3(sender: UIButton) {
        xmus = "boom"
        playmusic()
    }
    @IBAction func btnp4(sender: UIButton) {
        xmus = "tom"
        playmusic()
    }
    @IBAction func btnp5(sender: UIButton) {
        xmus = "ride"
        playmusic()
    }

    @IBAction func btnplaenmed(sender: UIButton) {
        xmus = "ride"
        playmusic()
    }
    
    @IBAction func btnplaar(sender: UIButton) {
        xmus = "ride"
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
