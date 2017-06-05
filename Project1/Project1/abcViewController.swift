//
//  abcViewController.swift
//  Project1
//
//  Created by  on 19/05/17.
//
//

import UIKit
import AVFoundation

class abcViewController: UIViewController {
    var xmus = ""
    var player = AVAudioPlayer()

    @IBAction func btnLettA(sender: UIButton) {
        xmus = "A"
        playmusic()
    }
    
    @IBAction func btnB(sender: UIButton) {
        xmus = "B"
        playmusic()
    }
    @IBAction func btnC(sender: UIButton) {
        xmus = "C"
        playmusic()
    }
    @IBAction func btnD(sender: UIButton) {
        xmus = "D"
        playmusic()
    }
    @IBAction func btnE(sender: UIButton) {
        xmus = "E"
        playmusic()
    }
    
    @IBAction func btnF(sender: UIButton) {
        xmus = "F"
        playmusic()
    }
    
    @IBAction func btnG(sender: UIButton) {
        xmus = "G"
        playmusic()
    }
    
    
    @IBAction func btnH(sender: UIButton) {
        xmus = "H"
        playmusic()
    }
    
    @IBAction func btnI(sender: UIButton) {
        xmus = "I"
        playmusic()
    }
    
    
    @IBAction func btnJ(sender: UIButton) {
        xmus = "J"
        playmusic()
    }
    
    @IBAction func btnK(sender: UIButton) {
        xmus = "K"
        playmusic()
    }
    
    @IBAction func btnL(sender: UIButton) {
        xmus = "L"
        playmusic()
    }
    
    @IBAction func btnM(sender: UIButton) {
        xmus = "M"
        playmusic()
    }
    
    @IBAction func btnN(sender: UIButton) {
        xmus = "N"
        playmusic()
    }
    
    
    @IBAction func btnO(sender: UIButton) {
        xmus = "O"
        playmusic()
    }
    
    @IBAction func btnP(sender: UIButton) {
        xmus = "P"
        playmusic()
    }
    
    
    @IBAction func btnQ(sender: UIButton) {
        xmus = "Q"
        playmusic()
    }
    
    @IBAction func btnR(sender: UIButton) {
        xmus = "R"
        playmusic()
    }
    
    @IBAction func btnS(sender: UIButton) {
        xmus = "S"
        playmusic()
    }
    
    @IBAction func btnT(sender: UIButton) {
        xmus = "T"
        playmusic()
    }
    
    
    @IBAction func btnU(sender: UIButton) {
        xmus = "U"
        playmusic()
    }
    
    @IBAction func btnV(sender: UIButton) {
        xmus = "V"
        playmusic()
    }
    
    
    @IBAction func btnW(sender: UIButton) {
        xmus = "W"
        playmusic()
    }
    
    
    @IBAction func btnX(sender: UIButton) {
        xmus = "Y"
        playmusic()
    }
    
    @IBAction func btnY(sender: UIButton) {
        xmus = "Y"
        playmusic()
    }
    
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
