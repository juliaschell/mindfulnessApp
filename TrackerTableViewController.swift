//
//  TrackerTableViewController.swift
//  Mindful Log
//
//  Created by Julia Schell on 5/15/18.
//  Copyright © 2018 Julia Schell. All rights reserved.
//

import UIKit

class TrackerTableViewController: UITableViewController {
    
    //Properties
    var trackedMarkers = [Biomarker]()

    override func viewDidLoad() {
        super.viewDidLoad()

        loadTrackers()
        
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
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return trackedMarkers.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellIdentifier = "TrackerTableViewCell"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? TrackerTableViewCell  else{
            fatalError("The dequed cell is not an instance of TrackerTableViewCell.")
        }

        //Configure
        let tracker = trackedMarkers[indexPath.row]
        cell.TrackerTitle.text = tracker.name
      
        return cell
    }
    
    private func loadTrackers(){
        
        guard let mood = Biomarker(name: "Mood")  else { fatalError("Unable to load mood tracker")}
        guard let sleep = Biomarker(name: "Sleep Quality")  else { fatalError("Unable to load sleep tracker")}
        guard let productivity = Biomarker(name: "Productivity")  else { fatalError("Unable to load productivity tracker")}
        
        trackedMarkers += [mood, sleep, productivity]
        
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

}
