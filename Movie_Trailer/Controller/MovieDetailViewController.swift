//
//  MovieDetailViewController.swift
//  Movie_Trailer
//
//  Created by JimmyChao on 2023/8/10.
//

import UIKit
import WebKit
import AVKit
import AVFoundation
import OSLog




class MovieDetailViewController: UIViewController {

    let logger = Logger()
    
    
    var moiveInfos:film!
    @IBOutlet var resultImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultImage.image = moiveInfos.image
        resultImage.contentMode = .scaleAspectFill
        
        
        initializeVideo()
        
        
    }
    
    
    func initializeVideo(){
        let url = moiveInfos.webURL
        
        logger.info("\(url)")
        
        let player = AVPlayer(url: url)
        let controller = AVPlayerViewController()
        controller.player = player
        present(controller, animated: true) {
            player.play()
        }
    }
    
    
    
    
    

    
    // MARK: - Navigation
/*
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
