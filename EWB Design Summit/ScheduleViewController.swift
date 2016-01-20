//
//  ScheduleViewController.swift
//  EWB Design Summit
//
//  Created by Daniel Freeman on 1/12/2015.
//  Copyright © 2015 Engineers Without Borders. All rights reserved.
//

import UIKit
import WebKit

class ScheduleViewController: UIViewController {

    @IBOutlet var scheduleView: UIView!
    var webView: WKWebView?
    
    
    override func loadView() {
        print("loadView")
        super.loadView()
        
        self.webView = WKWebView()
        self.view = self.webView!
        
    }
    
    
    override func viewDidLoad() {
        print("View did Load")
        super.viewDidLoad()
    
            let url = NSURL(string:"https://docs.google.com/spreadsheets/d/1KZ_HCw9hqwHVMX9oYz56X9JdGMaGv3WK8kfoUJskiM8/edit?usp=sharing")
            let req = NSURLRequest(URL:url!)
            self.webView!.loadRequest(req)
        }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}



