//
//  FeedbackViewController.swift
//  EWB Design Summit
//
//  Created by Daniel Freeman on 1/12/2015.
//  Copyright © 2015 Engineers Without Borders. All rights reserved.
//

import UIKit
import WebKit
import Foundation

class FeedbackViewController: UIViewController,UIWebViewDelegate {
    
   
    
    
    
    @IBOutlet weak var myWebView: UIWebView!
    
    @IBOutlet weak var spinningWheel: UIActivityIndicatorView!
    

    override func viewDidLoad() {
        
        print("View did Load")
        super.viewDidLoad()
        
        
        
        // Using a Session with cachePolicy
        
        let url = NSURL(string: "https://docs.google.com/forms/d/1vif6hhJ6kdmEAms9XljB_LqFb3za4ksQkjUY51zprEc/viewform?usp=send_form")
        
        let request = NSURLRequest(URL: url!, cachePolicy: .ReturnCacheDataElseLoad, timeoutInterval: 5.0)
        
        print("about to loadRequest")
        self.myWebView.loadRequest(request)
        myWebView.delegate = self
        
        
        // Idea to show loading screen Icon
        
        
        if(myWebView.loading == false){
            print("loading is false")
            let rect = CGRect(x: 50, y: 50, width: 100, height: 100)
            
            let label = UILabel(frame: rect)
            label.text = "Loading"
            label.textColor = UIColor(red: 1, green: 0, blue: 1, alpha: 1)
            
        }
        if(myWebView.loading == true){
            print("loading is true")
        
        }
        
    }
    
    override func viewWillAppear(animated: Bool) {
        print("view will appear")
        spinningWheel.startAnimating()
        
        if(myWebView.loading == true){
            print("loading is true")
        }
        if(myWebView.loading == false){
            print("loading is false")
        }
        
    }
    
    override func viewDidAppear(animated: Bool) {
        print("view did appear")
        //spinningWheel.stopAnimating()
        
        if(myWebView.loading == true){
            print("loading is true")
        }
        
        if(myWebView.loading == false){
            print("loading is false")
        }
    }

    
    func webViewDidFinishLoad(myWebView: UIWebView){
        print("webview did finish load")
        spinningWheel.stopAnimating()
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


    // MARK: - Navigation


}


