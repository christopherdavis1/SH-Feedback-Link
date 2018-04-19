//
//  ViewController.swift
//  SH Feedback Link
//
//  Created by Christopher Davis on 4/19/18.
//  Copyright © 2018 Christopher Davis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Outlets
    @IBOutlet weak var feedbackButtonContiner: UIView!
    
    
    // Actions
    @IBAction func feedbackButton(_ sender: Any) {
        performSegue(withIdentifier: "feedbackView", sender: "https://www.trello.com")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let identifier = segue.identifier, identifier == "feedbackView" {
            let toNav = segue.destination as! UINavigationController
            let toVC = toNav.viewControllers.first as! WebViewController
            toVC.urlString = sender as! String
        }
    }


}

