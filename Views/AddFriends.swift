//
//  AddFriends.swift
//  Mood Tracker with Protocols and Delegation
//
//  Created by Matthew Harrilal on 10/3/17.
//  Copyright © 2017 Matthew Harrilal. All rights reserved.
//

import Foundation
import UIKit

class AddFriends: UIViewController {
    
    var delegate: friendsToTableViewCell!
    @IBOutlet weak var addFriendsTextField: UITextField!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let friendName = UsersMood()
        friendName.friend = addFriendsTextField.text
        if let identifier = segue.identifier {
            if identifier == "addFriends" {
                if let displayFriendsAndMoodVC = segue.destination as? DisplayFriendsAndMood {
                    displayFriendsAndMoodVC.name.append(friendName)
                }
            }
        }
    }
}
