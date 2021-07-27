//
//  ViewController.swift
//  CalendarDayFinder
//
//  Created by olga.krjuckova on 27/07/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dayTextField: UITextField!
    @IBOutlet weak var monthsTexField: UITextField!
    @IBOutlet weak var yearTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var findButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func findWeekDayTapped(_ sender: Any) {
        
        let calendar = Calendar.current
        
        var dateComponents = DateComponents()
        
        guard let day = Int(dayTextField.text!), let month = Int(monthsTexField.text!), let year = Int(yearTextField.text!) else {
            //If not - Allert pop up for User
            return
            
        }
        /* dateComponents.day = String(dayTextField.text)
 Not safe to cast! Use guard.
 */
        dateComponents.day = day
        dateComponents.month = month
        dateComponents.year = year
        
        guard let date = calendar.date(from: dateComponents) else {
            return
        }
        
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "en_EN")
        dateFormatter.dateFormat = "EEEE" // NSDateformatter.com
        
        
        switch findButton.titleLabel?.text {
        case "FIND":
            findButton.setTitle("CLEAR", for: .normal)
            if day >= 1 && day <= 31 && month >= 1 && month <= 12 {
                let weekDay = dateFormatter.string(from: date)
                self.resultLabel.text = weekDay.capitalized
            }else{
                //Allert
                
            }
        default:
            findButton.setTitle("FIND", for: .normal)
            
        }
        
    }
   
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}

