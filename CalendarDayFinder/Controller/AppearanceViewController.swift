//
//  AppearanceViewController.swift
//  CalendarDayFinder
//
//  Created by olga.krjuckova on 30/07/2021.
//

import UIKit

class AppearanceViewController: UIViewController {
    
    @IBOutlet weak var textLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func closeButtenTapped(_ sender: Any) {
        self.dismiss(animated: true
        , completion: nil)
    }
    
    @IBAction func openSettingsTapped(_ sender: Any) {
        openSettings()
        
    }
    
    
    func openSettings() {
        guard let settingURL = URL(string: UIApplication.openSettingsURLString) else {
            return
        }
        
        if UIApplication.shared.canOpenURL(settingURL){
            
            UIApplication.shared.open(settingURL, options: [:]) { success in
                print("success :", success)
            }
        }
    
    }
    
    
}
