//
//  Aktivitet3.swift
//  10_IVAR_Gjenvinning
//
//  Created by Mariel Aulie Hinderaker on 06/08/2021.
//  Copyright © 2021 Mariel Aulie Hinderaker. All rights reserved.
//

import UIKit

class Aktivitet3: UIViewController {

    @IBAction func hint(_ sender: Any) {
        showAlert()
        
    }
        func showAlert(){
            let alert = UIAlertController(title: "Hint:", message: "Det bør være ca. 220 ml (eller 2,2 dl) med store røde strykeperler i «avfallet».", preferredStyle: .alert)
               
            alert.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: {action in print("tapped Dismiss") }))
    
            present(alert, animated: true)
        }

    
    
    @IBOutlet weak var boks: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        boks.backgroundColor = .white
        boks.layer.cornerRadius = 25.0
        boks.layer.borderWidth = 1/UIScreen.main.nativeScale
        boks.layer.borderColor = UIColor.black.cgColor

        // Do any additional setup after loading the view.
    }
}
