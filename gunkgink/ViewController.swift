//
//  ViewController.swift
//  gunkgink
//
//  Created by บงบง บรุ๋งๆ🌼 on 3/7/2565 BE.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var play = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func GunkGink(_ sender: UIButton) {
        let title = sender.currentTitle!

        // หน่วงเวลา
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
            UIView.animate(withDuration: 0.3){
                sender.alpha = 1
            }
        }
        
        UIView.animate(withDuration: 0.3){
            sender.alpha = 0.5
        }
        print(title)
        
        PlaySound(with:title)
    }
    func PlaySound(with soundName:String) {
//  บอก path ของเสียงและชนิด รวมไปถึงชื่อของเสียง
        let path = Bundle.main.path(forResource: soundName, ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        do {
            play = try AVAudioPlayer(contentsOf: url)
            play.play()
        } catch let error {
            print(error)
        }
           
    }
    
}

