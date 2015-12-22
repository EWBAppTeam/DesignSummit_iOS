//
//  LocationsViewController.swift
//  EWB Design Summit
//
//  Created by Daniel Freeman on 1/12/2015.
//  Copyright © 2015 Engineers Without Borders. All rights reserved.
//



//  Google Maps API Key
//  AIzaSyBg23N1hoV4RQu7hLB6e5HzlVTP_bLd8q0


//  Google Maps API Key 2 registered with the EWB bundle identifier
//  AIzaSyCbQGJbLrDB72E9Kw2RuvJqv4FBeeVlfQw





import UIKit
import WebKit





class LocationsViewController: UIViewController {

    @IBOutlet var locationsView: UIView!
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
        
//     TRYING TO OPEN MAP IN THE NATIVE GOOGLE MAPS APP
//        if (UIApplication.sharedApplication().canOpenURL(NSURL(string:"comgooglemaps://")!)) {
//            UIApplication.sharedApplication().openURL(NSURL(string:
//                "comgooglemaps://?center=40.765819,-73.975866&zoom=14&views=traffic")!)
//        } else {
//            print("Can't use comgooglemaps://");
//        }
//        
        
    
        
        // CODE to load map from weblink
        let url = NSURL(string:"https://www.google.com/maps/d/edit?mid=zvDpRppeEgDI.kNeKoDTGkN1c&usp=sharing")
        let req = NSURLRequest(URL:url!)
        self.webView!.loadRequest(req)
        
    }
    
    override func viewWillAppear(animated: Bool) {
        print("view will appear")
    }
    
    override func viewDidAppear(animated: Bool) {
        print("viewDidAppear")
    }
    
    
    
    
    // <iframe src="https://www.google.com/maps/d/embed?mid=zvDpRppeEgDI.kNeKoDTGkN1c" width="640" height="480"></iframe>
    
    // https://www.google.com/maps/d/edit?mid=zvDpRppeEgDI.kNeKoDTGkN1c&usp=sharing
    
    
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
