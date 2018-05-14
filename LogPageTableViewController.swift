//
//  LogPageTableViewController.swift
//  Mindful Log
//
//  Created by Julia Schell on 5/13/18.
//  Copyright © 2018 Julia Schell. All rights reserved.
//

import UIKit

class LogPageTableViewController: UITableViewController {
    
    //Properties
    var logs = [Log]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loadGratitudeLog()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return logs.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellIdentifier = "LogTableViewCell"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? LogTableViewCell  else {
            fatalError("The dequeued cell is not an instance of LogTableViewCell.")
        }
        
        // Configure the cell...
        let log = logs[indexPath.row]
        cell.logNameLabel.text = log.name
        cell.logPromptLabel.text = log.prompt

        return cell
    }

    


    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    //Private
    private func loadGratitudeLog(){
    
        guard let grateful = Log(name: "Gratitude Log", prompt: "Today I am grateful for...")  else {
            fatalError("Unable to load first gratitude log")
        }
        
        guard let excited = Log(name: "Excitement Log", prompt: "Today I am excited about...")  else {
            fatalError("Unable to load excitement log")
        }
       
        logs += [grateful, excited]
    }
}
