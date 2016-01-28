//
//  EmergencyViewController.swift
//
//
//  Created by Daniel Freeman on 21/01/2016.
//
//



import UIKit
import WebKit
import Foundation

class EmergViewController: UIViewController, UIWebViewDelegate{
    
    @IBOutlet weak var myWebView: UIWebView!
    @IBOutlet weak var spinner: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        
        print("View did Load")
        super.viewDidLoad()
        myWebView.delegate = self
        
        
        //Make request to load schedule page
        let url = NSURL(string:"https://docs.google.com/document/d/1efPo7cA4XV3AqeDRu6_Wp3vdskOQ8SYKmYEQ4S5mCW0/pub")
        let req = NSURLRequest(URL:url!)
        self.myWebView!.loadRequest(req)
        
    }
    
    override func viewWillAppear(animated: Bool) {
        print("view will appear")
        spinner.startAnimating()
    }
    
    
    // Stop the spinning wheel when content has finished loading. Used via the webview delegate.
    func webViewDidFinishLoad(myWebView: UIWebView) {
        print("Web View Did Finish Load")
        spinner.stopAnimating()
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}



