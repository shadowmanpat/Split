//
//  MasterViewController.swift
//  Split
//
//  Created by Nikolaos Agas on 20/09/2019.
//  Copyright © 2019 Nikolaos Agas. All rights reserved.
//

import UIKit

class MasterViewController: UITableViewController {

    


    override func viewDidLoad() {
        super.viewDidLoad()
      
    }

    override func viewWillAppear(_ animated: Bool) {
        clearsSelectionOnViewWillAppear = splitViewController!.isCollapsed
        super.viewWillAppear(animated)
    }

  

    // MARK: - Segues

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail" {
            if let indexPath = tableView.indexPathForSelectedRow {

                let controller = (segue.destination as! UINavigationController).topViewController as! ImagePresentationVC
                
                controller.image = imageArrat[indexPath.row]
                controller.navigationItem.leftBarButtonItem = splitViewController?.displayModeButtonItem
                controller.navigationItem.leftItemsSupplementBackButton = true
            }
        }
    }

    // MARK: - Table View

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageArrat.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = namesArray[indexPath.row]
        cell.backgroundColor = colorsArray[indexPath.row]
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if let navBarHeight = navigationController?.navigationBar.frame.height{
            return (tableView.frame.height - navBarHeight) / CGFloat( imageArrat.count)
        }else {
            return tableView.frame.height / CGFloat( imageArrat.count)
        }
        
    }

  


}

