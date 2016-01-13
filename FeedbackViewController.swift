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
    
   
    
    
    
    @IBOutlet weak var myWebView: UIWebView!
    
    

    override func viewDidLoad() {
        print("View did Load")
        super.viewDidLoad()
        
        
        
/*
        
        let myurl = NSURL(string:"https://docs.google.com/forms/d/1vif6hhJ6kdmEAms9XljB_LqFb3za4ksQkjUY51zprEc/viewform?usp=send_form")
        let myrequest = NSURLRequest(URL: myurl! )
        
        
        let cache = NSURLCache()
        //let URLCache = NSCachedURLResponse
        
        print("before loading into cahce")
        print(cache.memoryCapacity)
        print(cache.currentMemoryUsage)
        
        
        cache.cachedResponseForRequest(myrequest)
        
        print("after loading into cahce")
        print(cache.memoryCapacity)
        print(cache.currentMemoryUsage)
        
        
        self.myWebView.loadRequest(myrequest)
        

*/
        
        
        let url = NSURL(string: "https://docs.google.com/forms/d/1vif6hhJ6kdmEAms9XljB_LqFb3za4ksQkjUY51zprEc/viewform?usp=send_form")
        let request = NSURLRequest(URL: url!, cachePolicy: .ReturnCacheDataElseLoad, timeoutInterval: 5.0)
        
        //let session = NSURLSession.sharedSession()
        
        //session.dataTaskWithRequest(request)
        
        
        self.myWebView.loadRequest(request)
        
        
        
       
        
        
        
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


