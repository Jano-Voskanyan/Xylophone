//
//  ViewController.swift
//  Xylophone
//
//  Created by Janibek Voskanyan on 22.01.23.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @objc func keyPressed(_ sender: UIButton) {
        if let title = sender.currentTitle { playSound(title)}
    }

    func playSound(_ title: String) {
        guard let url = Bundle.main.url(forResource: title, withExtension: "wav") else { return }
        player = try! AVAudioPlayer(contentsOf: url)
        player.play()
     
        
    }
}
