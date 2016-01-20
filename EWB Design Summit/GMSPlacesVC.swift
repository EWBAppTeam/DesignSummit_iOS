//
//  GMSPlacesVC.swift
//  EWB Design Summit
//
//  Created by Daniel Freeman on 14/01/2016.
//  Copyright © 2016 Engineers Without Borders. All rights reserved.
//

import UIKit
import GoogleMaps

class GMSPlacesVC: UIViewController {
    
    var placesClient: GMSPlacesClient?
    
    // Instantiate a pair of UILabels in Interface Builder
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var addressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        placesClient = GMSPlacesClient()
    }
    
    // Add a UIButton in Interface Builder to call this function
    @IBAction func getCurrentPlace(sender: UIButton) {
        
    
        placesClient?.currentPlaceWithCallback({
            (placeLikelihoodList: GMSPlaceLikelihoodList?, error: NSError?) -> Void in
            if let error = error {
                print("Pick Place error: \(error.localizedDescription)")
                return
            }
            
            self.nameLabel.text = "No current place"
            self.addressLabel.text = ""
            
            if let placeLikelihoodList = placeLikelihoodList {
                let place = placeLikelihoodList.likelihoods.first?.place
                if let place = place {
                    self.nameLabel.text = place.name
                    self.addressLabel.text = place.formattedAddress.componentsSeparatedByString(", ")
                        .joinWithSeparator("\n")
                }
            }
        })
    }
}