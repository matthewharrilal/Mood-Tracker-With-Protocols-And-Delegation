//
//  ChooseMood.swift
//  Mood Tracker with Protocols and Delegation
//
//  Created by Matthew Harrilal on 10/3/17.
//  Copyright © 2017 Matthew Harrilal. All rights reserved.
//

import Foundation
import UIKit

class ChooseMood: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    var delegate: moodToTableViewCell!
    
    let moodEmojis = ["Mad Face Grrr😡","Are you serious dude? 😑", "You're awesome!😁"]
    
    @IBOutlet weak var emojiPickerView: UIPickerView!
    
    @IBOutlet weak var emojiLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emojiPickerView.delegate = self
        emojiPickerView.dataSource = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return moodEmojis[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return moodEmojis.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        emojiLabel.text = moodEmojis[row]
    }
}
