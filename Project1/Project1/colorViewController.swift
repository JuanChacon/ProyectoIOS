//
//  colorViewController.swift
//  Project1
//
//  Created by  on 19/05/17.
//
//

import UIKit
import AVFoundation

class colorViewController: UIViewController {
    var xmus = ""
    var player = AVAudioPlayer()

    @IBAction func btnc1(sender: UIButton) {
        xmus = "white"
        playmusic()
    }
    @IBAction func btnc2(sender: UIButton) {
        xmus = "yellow"
        playmusic()
    }
    @IBAction func btnc3(sender: UIButton) {
        xmus = "red"
        playmusic()
    }
    @IBAction func btnc4(sender: UIButton) {
        xmus = "purple"
        playmusic()
    }
    @IBAction func btnc5(sender: UIButton) {
        xmus = "green"
        playmusic()
    }
    @IBAction func btnc6(sender: UIButton) {
        xmus = "orange"
        playmusic()
    }
    @IBAction func btnc7(sender: UIButton) {
        xmus = "blue"
        playmusic()
    }
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
