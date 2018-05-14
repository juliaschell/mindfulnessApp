//
//  LogTableViewCell.swift
//  Mindful Log
//
//  Created by Julia Schell on 5/13/18.
//  Copyright © 2018 Julia Schell. All rights reserved.
//

import UIKit

class LogTableViewCell: UITableViewCell, UITextFieldDelegate {
    
    @IBOutlet weak var logNameLabel: UILabel!
    @IBOutlet weak var logPromptLabel: UILabel!
    @IBOutlet weak var logOneText: UITextField!
    @IBOutlet weak var logTwoText: UITextField!
    @IBOutlet weak var logThreeText: UITextField!
    
     var loggedItems = [String?]()
    
    
    @IBAction func logSubmitButton(_ sender: UIButton) {
        if (logOneText.text?.isEmpty==false){
            loggedItems += [logOneText.text]
        }
        if (logTwoText.text?.isEmpty==false){
            loggedItems += [logTwoText.text]
        }
        if (logThreeText.text?.isEmpty==false){
            loggedItems += [logThreeText.text]
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        logOneText.delegate = self
        logTwoText.delegate = self
        logThreeText.delegate = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
