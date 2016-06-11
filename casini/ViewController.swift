//
//  ViewController.swift
//  casini
//
//  Created by Calvert, Martin on 6/11/16.
//  Copyright © 2016 Calvert, Martin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let ivc = segue.destinationViewController as? ImageViewController {
            if let identifier = segue.identifier {
                switch identifier {
                    case "cassini":
                        ivc.imageURL = Urls.NASA.Cassini
                    case "earth":
                        ivc.imageURL = Urls.NASA.Earth
                    case "moon":
                        ivc.imageURL = Urls.NASA.Moon
                    default:
                        break
                }
            }
        }
    }
    
}

