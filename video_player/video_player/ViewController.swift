//
//  ViewController.swift
//  video_player
//
//  Created by Syed Daniyal Khurram on 03/11/2022.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


//    private func findvideo() {
//        guard let path = Bundle.main.path(forResource: "test", ofType: "mp4")
//        else{
//            debugPrint("video.mp4 not found")
//            return
//        }
//    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        playVideo()
    }
    private func playVideo() {
        guard let path = Bundle.main.path(forResource: "test", ofType: "mp4")
        else{
            debugPrint("test.mp4 not found")
            return
        }
        let player = AVPlayer(url: URL(fileURLWithPath: path))
        let playerController = AVPlayerViewController()
        playerController.player=player
        present(playerController, animated: true) {
            player.play()
        }
    }
}

