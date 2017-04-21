//
//  ViewController2.swift
//  ScrollViewTest
//
//  Created by Dhreej Kaveti on 4/20/17.
//  Copyright © 2017 Dhreej Kaveti. All rights reserved.
//

import UIKit

class ViewController2: UITableViewController {

    var someButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        
        let screenRect: CGRect = UIScreen.main.bounds
        let screenWidth: CGFloat = screenRect.size.width
        let screenHeight: CGFloat = screenRect.size.height
        
        someButton = UIButton(frame: CGRect(x:15 , y: screenHeight - 63, width: screenWidth - 30, height: 40))
        someButton.titleLabel?.font = UIFont(name: "HelveticaNeue-Medium", size: 15.0)
        someButton.backgroundColor = UIColor(red: 3/255, green: 123/255, blue: 254/255, alpha: 1)
        someButton.titleLabel?.textColor = UIColor.white
        someButton.layer.cornerRadius = 3.0
        someButton.setTitle("Continue", for: .normal)
        self.view.addSubview(someButton)
    }
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source


    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */
    
    override func scrollViewDidScroll(_ scrollView: UIScrollView) {
        var frame = someButton.frame
        frame.origin.y = scrollView.contentOffset.y+self.tableView.frame.size.height - self.someButton.frame.size.height - 5
        self.someButton.frame = frame
        self.view.bringSubview(toFront: self.someButton)
    }

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
