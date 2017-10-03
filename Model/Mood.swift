//
//  Mood.swift
//  Mood Tracker with Protocols and Delegation
//
//  Created by Matthew Harrilal on 10/3/17.
//  Copyright © 2017 Matthew Harrilal. All rights reserved.
//

import Foundation
import UIKit


protocol friendsToTableViewCell {
    // This protocol will essentially serve as the passing of friends back to the table view cells
    func showFriend(UsersMood: UsersMood, row: Int) -> Void
}

protocol moodToTableViewCell {
    // This protocol will essentially serve to display the mood of the user on the table view cells as well as pass it back to the cells
    func showMood(UsersMood: UsersMood, row: Int) -> Void
}

class UsersMood {
    // The properties that the user will have
    var friend: String?
    var mood: String?
}
