//
//  FirstController.swift
//  LessonSwiftDemo
//
//  Created by lanou3g on 15-1-7.
//  Copyright (c) 2015年 王军鑫. All rights reserved.
//

import UIKit

class FirstController: UITableViewController {
    var dataArry = NSMutableArray()
    
    //添加元素按钮
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    @IBAction func addItemAction(sender: AnyObject) {
        
        var arr = ["123","http://172.16.1.69/swiftserver/image1.jpg"]
        var item = Item();
        item.title = "title"
        item.picurl = "http://172.16.1.69/swiftserver/image2.jpg"
        
        //var arr = ["123","http://127.0.0.1/SwiftServer/001.jpg"]
        dataArry.addObject(item)
        self.tableView.reloadData()
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return self.dataArry.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("firstcell", forIndexPath: indexPath) as UITableViewCell
        //给cell上的Label赋值
        var item: AnyObject = dataArry[indexPath.row]
        cell.textLabel?.text = item.title
        cell.detailTextLabel?.text = item.picurl
        // Configure the cell...
        
        return cell
    }
   

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
       var secondVC = segue.destinationViewController as SecondController
        var cell = sender! as UITableViewCell
        //获取当前的cell位置地址
        let indepath = self.tableView.indexPathForCell(cell)!
        //向第二个页面传值
        var mode: AnyObject = dataArry[indepath.row]
        secondVC.str = mode.picurl
        
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    

}
