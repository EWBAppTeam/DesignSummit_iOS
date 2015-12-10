//
//  HomeViewController.swift
//  EWB Design Summit
//
//  Created by Daniel Freeman on 1/12/2015.
//  Copyright © 2015 Engineers Without Borders. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    //MARK: Properties
    var message: String!
    var name: String!
    
    
    @IBOutlet weak var WelcomeLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        message = "Welcome, "
        WelcomeLabel.text = name
        

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
