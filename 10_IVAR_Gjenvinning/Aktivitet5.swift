//
//  Aktivitet5.swift
//  10_IVAR_Gjenvinning
//
//  Created by Mariel Aulie Hinderaker on 06/08/2021.
//  Copyright © 2021 Mariel Aulie Hinderaker. All rights reserved.
//

import UIKit

class Aktivitet5: UIViewController {
    
    @IBOutlet weak var neste2: UIButton!
    
    @IBOutlet weak var neste1: UIButton!
    @IBAction func hint(_ sender: Any) {
            showAlert()
        neste1.setTitleColor(.clear, for: .normal)
        neste2.setTitleColor(.systemGray2, for: .normal)
            
        }
            func showAlert(){
                let alert = UIAlertController(title: "Stopp!", message: "Har dere ryddet på plass alt utstyr?", preferredStyle: .alert)
                   
                alert.addAction(UIAlertAction(title: "Ja", style: .cancel, handler: {action in print("tapped Dismiss") }))
        
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
        

        /*
        // MARK: - Navigation

        // In a storyboard-based application, you will often want to do a little preparation before navigation
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            // Get the new view controller using segue.destination.
            // Pass the selected object to the new view controller.
        }
        */

    }
