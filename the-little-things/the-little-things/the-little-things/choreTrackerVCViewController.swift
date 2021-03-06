//
//  choreTrackerVCViewController.swift
//  the-little-things
//
//  Created by Atreya Misra on 10/22/16.
//  Copyright © 2016 HackTX2016. All rights reserved.
//

import UIKit

var choreTracker = [String]()

class choreTrackerVCViewController: UIViewController {

    @IBOutlet var choreTrackerTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        
        return choreTracker.count
        
    }
    
    func tableView(tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
     
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
     
        cell.textLabel?.text = choreTracker[indexPath.row]
     
        return cell
     
     }
     
     override func viewDidAppear(_ animated: Bool) {
     choreTrackerTable.reloadData()
     }

     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }



    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
