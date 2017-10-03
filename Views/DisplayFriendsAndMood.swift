//
//  DisplayFriendsAndMood.swift
//  Mood Tracker with Protocols and Delegation
//
//  Created by Matthew Harrilal on 10/3/17.
//  Copyright © 2017 Matthew Harrilal. All rights reserved.
//

import Foundation
import UIKit

class DisplayFriendsAndMood: UITableViewController, friendsToTableViewCell, moodToTableViewCell {
 
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func showMood(data: String) {
        var tableViewCellInstance = TableViewCell()
        tableViewCellInstance.moodLabel.text = data
    }
    
    func showFriend(data: String) {
       let tableViewCellInstance = TableViewCell()
        tableViewCellInstance.userNameLabel.text = data
    }
    
    
}
