//
//  FeedbackViewController.swift
//  EWB Design Summit
//
//  Created by Daniel Freeman on 1/12/2015.
//  Copyright © 2015 Engineers Without Borders. All rights reserved.
//

import UIKit
import WebKit

class FeedbackViewController: UIViewController {
    
    @IBOutlet weak var ratingControl: RatingControl!
    
    @IBOutlet weak var formView: UIView!
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
        
//        if let myPDF = NSBundle.mainBundle().URLForResource("DS Jan2016 Info", withExtension: "pdf"){
//            
//            if NSFileManager.defaultManager().fileExistsAtPath(myPDF.path!) {
//                print("file found")
//                print("at \(myPDF.path!)")
//            }
//            
//            let myURLReq = NSURLRequest(URL: myPDF)
//            self.webView!.loadRequest(myURLReq)
        
            
            
            
            // Code for loading PDF from Box or website in general
            
            let url = NSURL(string:"https://docs.google.com/forms/d/1vif6hhJ6kdmEAms9XljB_LqFb3za4ksQkjUY51zprEc/viewform?usp=send_form")
            let req = NSURLRequest(URL:url!)
            self.webView!.loadRequest(req)
        

        // Do any additional setup after loading the view.
        
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


