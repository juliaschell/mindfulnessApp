//
//  FirstViewController.swift
//  Mindful Log
//
//  Created by Julia Schell on 4/24/18.
//  Copyright © 2018 Julia Schell. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet var newExerciseDescription: UILabel!
    @IBOutlet weak var revealButton: UIButton!
    
    
    
    //store wellness exercises -- consider hashtable or set?
    var exerciseList = ["Body awareness", "Controlled breathing", "Stretching", "Exercise"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        newExerciseDescription.text = ""
    }
    
    //when reveal button is tapped
    @IBAction func revealDailyExercise(_ sender: Any) {
        loadNewExercise()
    }
    
    func loadNewExercise(){
        //random number to choose exercise
        if exerciseList.isEmpty{
            newExerciseDescription.text = "You have completed this set of exercises! Nice job!"
        }
        else{
        let numExercises = UInt32(exerciseList.count)
        let random = Int(arc4random_uniform(numExercises))
        newExerciseDescription.text = exerciseList[random]
        exerciseList.remove(at: random)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

