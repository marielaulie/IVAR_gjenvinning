//
//  Aktivitet4.swift
//  10_IVAR_Gjenvinning
//
//  Created by Mariel Aulie Hinderaker on 06/08/2021.
//  Copyright © 2021 Mariel Aulie Hinderaker. All rights reserved.
//

import UIKit

class Aktivitet4: UIViewController {

        @IBAction func hint(_ sender: Any) {
            showAlert()
            
        }
            func showAlert(){
                let alert = UIAlertController(title: "Hint:", message: "I hulrommene til de store strykeperlene kan det ha gjemt seg noen små strykeperler. Sortering med bare sikt er med andre ord ikke optimalt for å skille ulike avfallsmaterialer fra hverandre. Man får ikke 100% skille mellom de fire avfallstypene. Her må det flere sorteringsteknikker til!.", preferredStyle: .alert)
                   
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
        

        /*
        // MARK: - Navigation

        // In a storyboard-based application, you will often want to do a little preparation before navigation
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            // Get the new view controller using segue.destination.
            // Pass the selected object to the new view controller.
        }
        */

    }
