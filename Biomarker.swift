//
//  Biomarkers.swift
//  Mindful Log
//
//  Created by Julia Schell on 5/15/18.
//  Copyright © 2018 Julia Schell. All rights reserved.
//

import UIKit

class Biomarker{
    
    //Properties
    var name: String
    var data = [Float]()
    
    //Initialize
    init?(name: String){
        if name.isEmpty {
            return nil
        }
        
        self.name = name
        
    }
}
