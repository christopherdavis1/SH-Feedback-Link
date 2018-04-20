//
//  WebViewController.swift
//  SH Feedback Link
//
//  Created by Christopher Davis on 4/19/18.
//  Copyright © 2018 Christopher Davis. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController {

    // MARK: - Outlets
    @IBOutlet weak var webView: WKWebView!
    
    
    // MARK: - Actions
    @IBAction func doneButtonTapped(_ sender: Any) {
        dismiss(animated: true)
    }
    @IBAction func refresh(_ sender: Any) {
        webView.reload()
    }
    @IBAction func goBack(_ sender: Any) {
        webView.goBack()
    }
    @IBAction func goForward(_ sender: Any) {
        webView.goForward()
    }
    
    
    // Mark: - Variables
    var urlString: String!
    
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // Pass in the sender as urlString to create and use the URL
        let url = URL(string: urlString)!
        let request = URLRequest(url: url)
        webView.load(request)
        
        // Create an observer to watch for loading status
        webView.addObserver(self, forKeyPath: #keyPath(WKWebView.estimatedProgress), options: .new, context: nil)
    }
    
    deinit {
        // Get rid of the observer if we exit the view.
        webView.removeObserver(self, forKeyPath: #keyPath(WKWebView.estimatedProgress))
    }
    
    
    
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        
        if keyPath == "estimatedProgress" {
            
            // If the web page has loaded...show the page title.
            if webView.estimatedProgress == 1.0 {
                navigationItem.title = webView.title
            }
            // Else, show a loading indicator for the title.
            else {
                navigationItem.title = "Loading..."
            }
        }
    }
    

    
// Closing Bracket
}
