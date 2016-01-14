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
      
        
        // Using a Session with cachePolicy
        
        let url = NSURL(string: "https://docs.google.com/forms/d/1vif6hhJ6kdmEAms9XljB_LqFb3za4ksQkjUY51zprEc/viewform?usp=send_form")
        let request = NSURLRequest(URL: url!, cachePolicy: .ReturnCacheDataElseLoad, timeoutInterval: 3.0)
        
        
        
        
        /*
        
        let myURLTask = NSURLSession.sharedSession().dataTaskWithURL(url!)
        {
            
            (myData, response, error) in
            
            if (error == nil)
            {
                let myHTMLString = NSString(data: myData!, encoding: NSUTF8StringEncoding)
                self.myWebView.loadHTMLString(myHTMLString as! String, baseURL: nil)
            
            }
        }
        
        myURLTask.resume()
        
        */

        print("about to loadRequest")
        self.myWebView.loadRequest(request)
       
        
        // Idea to show loading screen Icon
        /*
        
        if(myWebView.loading == false){
            print("loading")
            let rect = CGRect(x: 50, y: 50, width: 100, height: 100)
            
            let label = UILabel(frame: rect)
            label.text = "Loading"
            label.textColor = UIColor(red: 1, green: 0, blue: 1, alpha: 1)
            
        }
        */
        
    
//        let config = NSURLSessionConfiguration.defaultSessionConfiguration()
//        let delegate = NSURLSessionDelegate.self
//        let session = NSURLSession.sharedSession()

        
        
        
/*      //Trying to impliment a URL Session and Cache
        
        
        let url2 = NSURL(string: "https://itunes.apple.com")
        let request2 = NSURLRequest(URL: url2!)
        let config2 = NSURLSessionConfiguration.defaultSessionConfiguration()
        let session2 = NSURLSession(configuration: config2)
        
        let task = session2.dataTaskWithRequest(request2, completionHandler: {(data, response, error) in
            
            // notice that I can omit the types of data, response and error
            
            
            
        });
        
        // do whatever you need with the task e.g. run
        task.resume()
        
        self.myWebView.loadRequest(<#T##request: NSURLRequest##NSURLRequest#>)
        
        
*/
    
        
        
        
        
        
        
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


