//
//  ViewController.swift
//  AMLibrary
//
//  Created by amandps86@gmail.com on 07/27/2016.
//  Copyright (c) 2016 amandps86@gmail.com. All rights reserved.
//

import UIKit
import AMLibrary
import SwiftyJSON


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        APIManager.sharedInstance.makeHTTPGetRequest("http://api.randomuser.me/", onCompletion: { nsdata, err in
            if let jsonData = nsdata {
                let json:JSON = JSON(data: jsonData)
                if let results = json["results"].array {
                    for entry in results {
                        //self.items.append(UserObject(json: entry))
                    }
                    dispatch_async(dispatch_get_main_queue(),{
                        //self.tableView.reloadData()
                    })
                }
            } else {
            }
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

//    func addDummyData() {
//        APIManager.sharedInstance.getRandomUser { (json: JSON) in
//            if let results = json["results"].array {
//                for entry in results {
//                    self.items.append(UserObject(json: entry))
//                }
//                dispatch_async(dispatch_get_main_queue(),{
//                    self.tableView.reloadData()
//                })
//            }
//        }
//    }
    
}

