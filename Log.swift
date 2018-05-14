//
//  Log.swift
//  Mindful Log
//
//  Created by Julia Schell on 5/13/18.
//  Copyright © 2018 Julia Schell. All rights reserved.
//

import UIKit

class Log{
    
    //Properties
    var name: String
    var prompt: String
    var loggedItemOne: String
    var loggedItemTwo: String
    var loggedItemThree: String
    var pastLogs = [String]()
    
    //Initialize
    init?(name: String, prompt: String){
        if prompt.isEmpty || name.isEmpty {
            return nil
        }
        self.name = name
        self.prompt = prompt
        loggedItemOne = ""
        loggedItemTwo = ""
        loggedItemThree = ""
    }
    
    init?(name: String, prompt: String, loggedItem: String){
        if loggedItem.isEmpty || prompt.isEmpty || name.isEmpty {
            return nil
        }
        self.name = name
        self.prompt = prompt
        loggedItemOne = loggedItem
        loggedItemTwo = ""
        loggedItemThree = ""
    }
    
    init?(name: String, prompt: String, itemOne: String, itemTwo: String, itemThree: String){
        if name.isEmpty || prompt.isEmpty || itemOne.isEmpty || itemTwo.isEmpty || itemThree.isEmpty {
            return nil
        }
        self.name = name
        self.prompt = prompt
        loggedItemOne = itemOne
        loggedItemTwo = itemTwo
        loggedItemThree = itemThree
    }
    
    //Add log items
}
