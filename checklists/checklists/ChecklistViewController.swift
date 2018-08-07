//
//  ViewController.swift
//  checklists
//
//  Created by MacOSBeta on 2018/8/6.
//  Copyright © 2018 MacOSBeta. All rights reserved.
//

import UIKit

class ChecklistViewController: UITableViewController{
    /*
    var row0text = "Walk the dog"
    var row1text = "Brush my teeth"
    var row2text = "Learn iOS development"
    var row3text = "Soccer practice"
    var row4text = "Eat ice cream"
    
    var row0checked = false
    var row1checked = true
    var row2checked = true
    var row3checked = false
    var row4checked = false
    */
    var row0item: Checklistitem
    var row1item: Checklistitem
    var row2item: Checklistitem
    var row3item: Checklistitem
    var row4item: Checklistitem
    
    required init?(coder aDecoder: NSCoder) {
        var items : [Checklistitem]
        items = [Checklistitem]()
        
        let row0item = Checklistitem()
        row0item.text = "Walk the dog"
        row0item.checked = false
        items.append(row0item)
        
        let row1item = Checklistitem()
        row1item.text = "Brush my teeth"
        row1item.checked = true
        items.append(row1item)
        
        let row2item = Checklistitem()
        row2item.text = "Learn iOS development"
        row2item.checked = true
        items.append(row2item)
        
        let row3item = Checklistitem()
        row3item.text = "Soccer practice"
        row3item.checked = false
        items.append(row3item)
        
        let row4item = Checklistitem()
        row4item.text = "Eat ic cream"
        row4item.checked = false
        items.append(row4item)
        
        super.init(coder:aDecoder)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section:Int) -> Int {
        //return 10
        return items.count
    }
    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath:IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChecklistItem",for :indexPath)
        let label = cell.viewWithTag(1000) as! UILabel
        
        if indexPath.row == 0 {
            label.text = row0text
        } else if indexPath.row == 1 {
            label.text = row1text
        } else if indexPath.row == 2 {
            label.text = row2text
        } else if indexPath.row == 3 {
            label.text = row3text
        } else if indexPath.row == 4 {
            label.text = row4text
        }
 
        /*
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
        */
        configureCheckmark(for:cell,at:indexPath)
        return cell
    }
    */
    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath:IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChecklistItem",for :indexPath)
        let label = cell.viewWithTag(1000) as! UILabel
        
        if indexPath.row == 0 {
            label.text = row0item.text
        } else if indexPath.row == 1 {
            label.text = row1item.text
        } else if indexPath.row == 2 {
            label.text = row2item.text
        } else if indexPath.row == 3 {
            label.text = row3item.text
        } else if indexPath.row == 4 {
            label.text = row4item.text
        }
        
        /*
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
         */
        configureCheckmark(for:cell,at:indexPath)
        return cell
    }
    */
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath:IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChecklistItem",for :indexPath)
        let item = items[indexPath.row]
        let label = cell.viewWithTag(1000) as! UILabel
        label.test = item.text
        /*
        if indexPath.row == 0 {
            label.text = row0item.text
        } else if indexPath.row == 1 {
            label.text = row1item.text
        } else if indexPath.row == 2 {
            label.text = row2item.text
        } else if indexPath.row == 3 {
            label.text = row3item.text
        } else if indexPath.row == 4 {
            label.text = row4item.text
        }
         */
        
        /*
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
         */
        configureCheckmark(for:cell,at:indexPath)
        return cell
    }
    /*
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) {
            if indexPath.row == 0 {
                row0checked = !row0checked
                if row0checked {
                    cell.accessoryType = .checkmark
                } else {
                    cell.accessoryType = .none
                }
            } else if indexPath.row == 1 {
                row1checked = !row1checked
                if row1checked {
                    cell.accessoryType = .checkmark
                } else {
                    cell.accessoryType = .none
                }
            } else if indexPath.row == 2 {
                row2checked = !row2checked
                if row1checked {
                    cell.accessoryType = .checkmark
                } else {
                    cell.accessoryType = .none
                }
            } else if indexPath.row == 3 {
                row3checked = !row3checked
                if row3checked {
                    cell.accessoryType = .checkmark
                } else {
                    cell.accessoryType = .none
                }
            } else if indexPath.row == 4 {
                row4checked = !row4checked
                if row4checked {
                    cell.accessoryType = .checkmark
                } else {
                    cell.accessoryType = .none
                }
            }
        }
        tableView.deselectRow(at: indexPath, animated: true)
        
    }
    */
    /*
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        /*
        if let cell = tableView.cellForRow(at: indexPath) {
            var isChecked = false
            if indexPath.row == 0 {
                row0checked = !row0checked
                isChecked = row0checked
            } else if indexPath.row == 1 {
                row1checked = !row1checked
                isChecked = row1checked
            } else if indexPath.row == 2 {
                row2checked = !row2checked
                isChecked = row2checked
            } else if indexPath.row == 3 {
                row3checked = !row3checked
                isChecked = row3checked
            } else if indexPath.row == 4 {
                row4checked = !row4checked
                isChecked = row4checked
            }
            
            if isChecked {
                cell.accessoryType = .checkmark
            } else {
                cell.accessoryType = .none
            }
        }
        */
        if let cell = tableView.cellForRow(at: indexPath) {
            if indexPath.row == 0 {
                row0checked = !row0checked
            } else if indexPath.row == 1 {
                row1checked = !row1checked
            } else if indexPath.row == 2 {
                row2checked = !row2checked
            } else if indexPath.row == 3 {
                row3checked = !row3checked
            } else if indexPath.row == 4 {
                row4checked = !row4checked
            }
            configureCheckmark(for:cell,at:indexPath)
            
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
        
    }
    */
    /*
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        /*
         if let cell = tableView.cellForRow(at: indexPath) {
         var isChecked = false
         if indexPath.row == 0 {
         row0checked = !row0checked
         isChecked = row0checked
         } else if indexPath.row == 1 {
         row1checked = !row1checked
         isChecked = row1checked
         } else if indexPath.row == 2 {
         row2checked = !row2checked
         isChecked = row2checked
         } else if indexPath.row == 3 {
         row3checked = !row3checked
         isChecked = row3checked
         } else if indexPath.row == 4 {
         row4checked = !row4checked
         isChecked = row4checked
         }
         
         if isChecked {
         cell.accessoryType = .checkmark
         } else {
         cell.accessoryType = .none
         }
         }
         */
        if let cell = tableView.cellForRow(at: indexPath) {
            if indexPath.row == 0 {
                row0item.checked = !row0item.checked
            } else if indexPath.row == 1 {
                row1item.checked = !row1item.checked
            } else if indexPath.row == 2 {
                row2item.checked = !row2item.checked
            } else if indexPath.row == 3 {
                row3item.checked = !row3item.checked
            } else if indexPath.row == 4 {
                row4item.checked = !row4item.checked
            }
            configureCheckmark(for:cell,at:indexPath)
            
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
        
    }
 */
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        /*
         if let cell = tableView.cellForRow(at: indexPath) {
         var isChecked = false
         if indexPath.row == 0 {
         row0checked = !row0checked
         isChecked = row0checked
         } else if indexPath.row == 1 {
         row1checked = !row1checked
         isChecked = row1checked
         } else if indexPath.row == 2 {
         row2checked = !row2checked
         isChecked = row2checked
         } else if indexPath.row == 3 {
         row3checked = !row3checked
         isChecked = row3checked
         } else if indexPath.row == 4 {
         row4checked = !row4checked
         isChecked = row4checked
         }
         
         if isChecked {
         cell.accessoryType = .checkmark
         } else {
         cell.accessoryType = .none
         }
         }
         */
        /*
        if let cell = tableView.cellForRow(at: indexPath) {
            if indexPath.row == 0 {
                row0item.checked = !row0item.checked
            } else if indexPath.row == 1 {
                row1item.checked = !row1item.checked
            } else if indexPath.row == 2 {
                row2item.checked = !row2item.checked
            } else if indexPath.row == 3 {
                row3item.checked = !row3item.checked
            } else if indexPath.row == 4 {
                row4item.checked = !row4item.checked
            }
            configureCheckmark(for:cell,at:indexPath)
            
        }
        */
        if let cell = tableView.cellForRow(at: indexPath) {
            let item = items[indexPath.row]
            item.checked = !item.checked
            configureCheckmark(for:cell,at:indexPath)
            
        }
        tableView.deselectRow(at: indexPath, animated: true)
        
    }
    /*
    func configureCheckmark(for cell:UITableViewCell,at indexPath:IndexPath) {
        var isChecked = false
        if indexPath.row == 0 {
            isChecked = row0checked
        } else if indexPath.row == 1 {
            isChecked = row1checked
        } else if indexPath.row == 2 {
            isChecked = row2checked
        } else if indexPath.row == 3{
            isChecked = row3checked
        } else if indexPath.row == 4 {
            isChecked = row4checked
        }
        if isChecked {
            cell.accessoryType = .checkmark
        } else {
            cell.accessoryType = .none
        }
    }
 */
    /*
    func configureCheckmark(for cell:UITableViewCell,at indexPath:IndexPath) {
        var isChecked = false
        if indexPath.row == 0 {
            isChecked = row0item.checked
        } else if indexPath.row == 1 {
            isChecked = row1item.checked
        } else if indexPath.row == 2 {
            isChecked = row2item.checked
        } else if indexPath.row == 3{
            isChecked = row3item.checked
        } else if indexPath.row == 4 {
            isChecked = row4item.checked
        }
        if isChecked {
            cell.accessoryType = .checkmark
        } else {
            cell.accessoryType = .none
        }
    }
 */
    func configureCheckmark(for cell:UITableViewCell,at indexPath:IndexPath) {
        let item = items[indexPath.row]
        if item.checked {
            cell.accessoryType = .checkmark
        } else {
            cell.accessoryType = .none
        }
    }
}

