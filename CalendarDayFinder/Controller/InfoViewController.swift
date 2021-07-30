//
//  InfoViewController.swift
//  CalendarDayFinder
//
//  Created by olga.krjuckova on 30/07/2021.
//

import UIKit

class InfoViewController: UIViewController {

    @IBOutlet weak var appInfoLabel: UILabel!
    @IBOutlet weak var appDescriptionLabel: UILabel!
    
    var infoText = ""
    let appDescriptionText = "Enjoy Your App"
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        appDescriptionLabel.text = appDescriptionText
        
        if !infoText.isEmpty{
            appInfoLabel.text = infoText
            
        }
        
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
