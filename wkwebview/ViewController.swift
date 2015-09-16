//
//  ViewController.swift
//  wkwebview
//
//  Created by Jonathan Wood on 9/16/15.
//  Copyright © 2015 Jonathan Wood. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var container: UIView!
    var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webView = WKWebView()
        container.addSubview(webView)
        
    }
    
    override func viewDidAppear(animated: Bool) {
        let frame = CGRectMake(0, 0, container.bounds.width, container.bounds.height)
        webView.frame = frame
        
        loadRequest("http://provoriverguides.com/utah-fishing-report/")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func loadRequest(urlStr: String) {
        let url = NSURL(string: urlStr)!
        let request = NSURLRequest(URL: url)
        webView.loadRequest(request)
    }
    
    @IBAction func loadProvo(sender: AnyObject) {
        loadRequest("http://provoriverguides.com/utah-fishing-report/")
    }
    
    @IBAction func loadGreen(sender: AnyObject) {
        loadRequest("http://www.flaminggorgeresort.com/FishingReport")
    }
    
    @IBAction func loadHenry(sender: AnyObject) {
        loadRequest("http://jimmysflyshop.com/fishing-reports/henrys-fork/")
    }
}

