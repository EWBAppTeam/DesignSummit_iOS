//
//  EmergencyViewController.swift
//  
//
//  Created by Daniel Freeman on 21/01/2016.
//
//

import UIKit


class EmergencyViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func CallPolice(sender: UIButton) {
        let callPolice = "119"
        UIApplication.sharedApplication().openURL(NSURL(string: "tel:"+callPolice)!)
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
