//
//  Intervju.swift
//  10_IVAR_Gjenvinning
//
//  Created by Mariel Aulie Hinderaker on 06/08/2021.
//  Copyright © 2021 Mariel Aulie Hinderaker. All rights reserved.
//

import UIKit
import AVKit

class Intervju: UIViewController {
    @IBOutlet weak var boks: UIImageView!
    @IBAction func video(_ sender: Any) {
        if let path = Bundle.main.path(forResource: "ESA karrierelaboratorie-2", ofType: "mp4"){
        let video = AVPlayer(url: URL(fileURLWithPath: path))
        let videoPlayer = AVPlayerViewController()
        videoPlayer.player = video
                 
        present(videoPlayer, animated: true, completion:
            {
                video.play()
                
        })
    }
    }
    
    
    @IBAction func back(_ sender: Any) {
        performSegue(withIdentifier: "aa", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        boks.backgroundColor = .white
        boks.layer.cornerRadius = 25.0
        boks.layer.borderWidth = 1/UIScreen.main.nativeScale
        boks.layer.borderColor = UIColor.black.cgColor


        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
