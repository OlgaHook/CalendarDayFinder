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
        setLabelText()
        
    }
    
    @IBAction func closeButtenTapped(_ sender: Any) {
        self.dismiss(animated: true
        , completion: nil)
    }
    
    @IBAction func openSettingsTapped(_ sender: Any) {
        openSettings()
        
    }
    
    

     func setLabelText(){
       var text = "Unable to specifu UI style"
        if self.traitCollection.userInterfaceStyle == .dark{
            text = "Dark mode is On\nGo to Settings if You would like\nto change to Light mode"
        }else{
            text = "Light mode is On\nGo to Settings if You would like\nto change to Dark mode"
        }
        textLabel.text = text
        
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
extension AppearanceViewController{
   override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
    setLabelText()
   }
}
