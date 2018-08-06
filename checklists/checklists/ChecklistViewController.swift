//
//  ViewController.swift
//  checklists
//
//  Created by MacOSBeta on 2018/8/6.
//  Copyright © 2018 MacOSBeta. All rights reserved.
//

import UIKit

class ChecklistViewController: UITableViewController{
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section:Int) -> Int {
        return 10
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath:IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChecklistItem",for :indexPath)
        let label = cell.viewWithTag(1000) as! UILabel
        /*
        if indexPath.row == 0 {
            label.text = "Walk the dog"
        } else if indexPath.row == 1 {
            label.text = "Brush my teeth"
        } else if indexPath.row == 2 {
            label.text = "Learn iOS development"
        } else if indexPath.row == 3 {
            label.text = "Soccer practice"
        } else if indexPath.row == 4 {
            label.text = "Eat ice cream"
        }
         */
        if indexPath.row  % 5 == 0 {
            label.text = "Walk the dog"
        } else if indexPath.row % 5 == 1 {
            label.text = "Brush my teeth"
        } else if indexPath.row % 5 == 2 {
            label.text = "Learn iOS development"
        } else if indexPath.row % 5 == 3 {
            label.text = "Soccer practice"
        } else if indexPath.row % 5 == 4 {
            label.text = "Eat ice cream"
        }
        return cell
    }
}

