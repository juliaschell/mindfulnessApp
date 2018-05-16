//
//  TrackerTableViewCell.swift
//  Mindful Log
//
//  Created by Julia Schell on 5/15/18.
//  Copyright © 2018 Julia Schell. All rights reserved.
//

import UIKit

class TrackerTableViewCell: UITableViewCell {

    @IBOutlet weak var TrackerTitle: UILabel!
    @IBOutlet weak var TrackerSlider: UISlider!
    
    var trackedData = [Float]()
    
    @IBAction func SubmitTrackerButton(_ sender: UIButton) {
        trackedData += [TrackerSlider.value]
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
