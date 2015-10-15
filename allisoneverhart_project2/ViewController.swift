//
//  ViewController.swift
//  allisoneverhart_project2
//
//  Created by Allison Everhart on 10/14/15.
//  Copyright © 2015 Allison Everhart. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameLabel2: UILabel!
    @IBOutlet weak var addressLabel2: UILabel!
    @IBOutlet weak var addressLabel1: UILabel!
    @IBOutlet weak var nameLabel1: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let pathKind = NSBundle.mainBundle().pathForResource("oneofakind", ofType: "plist")
        let dictKind = NSDictionary(contentsOfFile: pathKind!)
        let pathPaws = NSBundle.mainBundle().pathForResource("pawsibilities", ofType: "plist")
        let dictPaws = NSDictionary(contentsOfFile: pathPaws!)
        nameLabel1.text = dictKind!.valueForKey("name") as? String
        addressLabel1.text = dictKind!.valueForKey("address") as? String
        nameLabel2.text = dictPaws!.valueForKey("name") as? String
        addressLabel2.text = dictPaws!.valueForKey("address") as? String
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

