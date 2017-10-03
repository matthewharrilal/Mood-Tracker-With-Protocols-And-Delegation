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
    
    // The only reason we are creating one array is due to the reason that the only thing we are appending is the name of the friend and when that friend is appended we are only changing their mood
    var name = [UsersMood]() {
        didSet {
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    
    func showMood(UsersMood: UsersMood, row: Int) {
        self.name[row].friend = UsersMood.friend
    }
    
    func showFriend(UsersMood: UsersMood, row: Int) {
        self.name[row].mood = UsersMood.mood
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    var moodDelegate: moodToTableViewCell!
    var friendDelegate: friendsToTableViewCell!
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return name.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCell
        let row = indexPath.row
        let friendsRow = name[row]
        if cell.userNameLabel.text != nil {
            cell.userNameLabel.text = friendsRow.friend
            cell.moodLabel.text = friendsRow.mood
        }
        return cell
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let identifier = segue.identifier {
            if identifier == "toChooseMood" {
                let indexPath = tableView.indexPathForSelectedRow!
                let friend = name[indexPath.row]
                if let chooseMoodViewController = segue.destination as? ChooseMood {
                    chooseMoodViewController.delegate = self
                    chooseMoodViewController.row = indexPath.row
                    chooseMoodViewController.mood = friend
                    
                }
            }
            else if identifier == "toAddFriends" {
                if let addFriendsViewController = segue.destination as? AddFriends {
                    addFriendsViewController.delegate = self
                }
                
            }
        }
    }
    
    @IBAction func unwindToDisplayFriendsAndMood(_ segue: UIStoryboardSegue) {
        
    }
    
    @IBAction func unwindFromSaveButton(_ segue: UIStoryboardSegue) {}
    
}
