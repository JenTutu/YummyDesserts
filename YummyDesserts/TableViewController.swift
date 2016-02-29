//
//  TableViewController.swift
//  
//
//  Created by work on 2/15/16.
//
//

import UIKit

class TableViewController: UITableViewController {
    
    var foodArray = [Food]()

    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let food1 = Food(imageName: "dark_chocolate_rasp", description: "Dark Chocolate Raspberry CupCake", moreInfo: "it's yummy!")
        let food2 = Food(imageName: "red_velvet.jpg", description: "Red Velvet Cake", moreInfo: "Decadent, gourmet Red Velvet Cake. It's yummy!")
        let food3 = Food(imageName: "key_lime.jpg", description: "Key Lime Pie Donut", moreInfo: "it's yummy!")
        let food4 = Food(imageName: "tiramisu.jpg", description: "Tiramisu Cake", moreInfo: "it's yummy!")

        foodArray.append(food1)
        foodArray.append(food2)
        foodArray.append(food3)
        foodArray.append(food4)
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
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
        return foodArray.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! myCell

        // Configure the cell...
        
        var foodItem = foodArray[indexPath.row]
        
        cell.myImageView.image = UIImage(named: foodItem.imageName)
        cell.myLabel.text = foodItem.description
        
        
        return cell
    }

    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let foodSelected = foodArray[indexPath.row]
        var detailVC: DetailViewController = self.storyboard?.instantiateViewControllerWithIdentifier("DetailViewController") as! DetailViewController
        
        detailVC.imageDetail = foodSelected.imageName
        detailVC.descriptionLabel = foodSelected.description
        detailVC.moreInfoDetail = foodSelected.moreInfo
        
        self.presentViewController(detailVC, animated: true, completion: nil)
    }

    
}
