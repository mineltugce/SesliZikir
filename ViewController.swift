//
//  ViewController.swift
//  SesliZikir
//
//  Created by Minel Tuğçe  Dunar on 17.10.2021.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var mp3player : AVAudioPlayer = AVAudioPlayer()
    var timeAtPause = 0.0

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    


    @IBAction func buttonClicked(_ sender: Any) {
        

        
        let mp3path = Bundle.main.path(forResource: "Allah", ofType: "mp3")!
        let url = URL(fileURLWithPath: mp3path)
        
        if mp3player.isPlaying == false {
            do {
                mp3player = try AVAudioPlayer(contentsOf: url)
                mp3player.play(atTime: mp3player.deviceCurrentTime + 0.5)
            }
            catch {
               print("error")
            }
        }
        // else if mp3player.isPlaying == false && timeAtPause != Double(0){
          //      let shortStartDelay = 0.5
           //     mp3player.prepareToPlay()
            //    mp3player.play(atTime: Double(timeAtPause+shortStartDelay))
      //  }
        else  {
            do {
                mp3player = try AVAudioPlayer(contentsOf: url)
                timeAtPause = mp3player.deviceCurrentTime
                mp3player.pause()
            }
            catch {
               print("error")
            }
        }
         
    }
    
}

