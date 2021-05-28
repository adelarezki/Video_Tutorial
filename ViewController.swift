//
//  ViewController.swift
//  VideoSwift
//
//

import UIKit
import AVKit

class ViewController: UIViewController {
    
    @IBOutlet weak var videoView: UIView!
    
    var player: AVPlayer!
    var avpController = AVPlayerViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "https://file-examples-com.github.io/uploads/2017/04/file_example_MP4_640_3MG.mp4")
        player = AVPlayer(url: url!)
        avpController.player = player
        avpController.view.frame.size.height = videoView.frame.size.height
        avpController.view.frame.size.width = videoView.frame.size.width
        self.videoView.addSubview(avpController.view)
    }


}

