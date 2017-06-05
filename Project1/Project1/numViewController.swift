//
//  numViewController.swift
//  Project1
//
//  Created by  on 19/05/17.
//
//

import UIKit
import AVFoundation

class numViewController: UIViewController {
    var xmus = ""
    var player = AVAudioPlayer()

    @IBAction func brnN1(sender: UIButton) {
        xmus = "one"
        playmusic()
    }
    @IBAction func brnN2(sender: UIButton) {
        xmus = "two"
        playmusic()
        
    }
    @IBAction func brnN3(sender: UIButton) {
        xmus = "three"
        playmusic()
        
    }
    @IBAction func brnN4(sender: UIButton) {
        xmus = "four"
        playmusic()
        
    }
    @IBAction func brnN5(sender: UIButton) {
        xmus = "five"
        playmusic()
        
    }
    @IBAction func brnN6(sender: UIButton) {
        xmus = "six"
        playmusic()
        
    }
    @IBAction func brnN7(sender: UIButton) {
        xmus = "seven"
        playmusic()
        
    }
    @IBAction func brnN8(sender: UIButton) {
        xmus = "eight"
        playmusic()
        
    }
    @IBAction func brnN9(sender: UIButton) {
        xmus = "nine"
        playmusic()
        
    }
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
    

    func playmusic (){
        let sound = NSURL (fileURLWithPath: NSBundle.mainBundle().pathForResource(xmus, ofType: "mp3")!)
        
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
