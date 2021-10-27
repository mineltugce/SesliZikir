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
    
    
    @IBAction func playButton(_ sender: Any) {
        let mp3path = Bundle.main.path(forResource: "Allah", ofType: "mp3")!
        let url = URL(fileURLWithPath: mp3path)
        do {
            mp3player = try AVAudioPlayer(contentsOf: url)
            print(timeAtPause)
            if timeAtPause == 0.0 {
                mp3player.play()
                print("play first")
            } else {
                mp3player.prepareToPlay()
                mp3player.play(atTime: timeAtPause + 1.0)
                print("play at\(timeAtPause)")
            }
        }
        catch {
           print("error")
        }
    }
    
    @IBAction func pauseButton(_ sender: Any) {
        let mp3path = Bundle.main.path(forResource: "Allah", ofType: "mp3")!
        let url = URL(fileURLWithPath: mp3path)
        do {
            mp3player = try AVAudioPlayer(contentsOf: url)
            timeAtPause = mp3player.deviceCurrentTime
            mp3player.pause()
            print("pause")

        }
        catch {
           print("error")
        }
    }
    
    @IBAction func stopButton(_ sender: Any) {
        let mp3path = Bundle.main.path(forResource: "Allah", ofType: "mp3")!
        let url = URL(fileURLWithPath: mp3path)
        do {
            mp3player = try AVAudioPlayer(contentsOf: url)
            timeAtPause = mp3player.deviceCurrentTime
            mp3player.stop()
            print("stop-play")
            print(timeAtPause)
            mp3player.play()
        }
        catch {
           print("error")
        }
    }
    
    @IBAction func buttonClicked(_ sender: Any) {
         print("ok")
    }
    
}

