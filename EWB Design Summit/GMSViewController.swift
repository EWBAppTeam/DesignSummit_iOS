//
//  GMSViewController.swift
//  EWB Design Summit
//
//  Created by Daniel Freeman on 22/12/2015.
//  Copyright © 2015 Engineers Without Borders. All rights reserved.
//

import UIKit
import GoogleMaps

class GMSViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        let camera = GMSCameraPosition.cameraWithLatitude(-11.55539,
            longitude: 104.92473, zoom: 11, bearing: 0, viewingAngle:0)
        
        let mapView = GMSMapView.mapWithFrame(CGRectZero, camera: camera)
        mapView.myLocationEnabled = true
        mapView.settings.myLocationButton = true
        mapView.settings.compassButton = true
        
    

        
        let AniseHotelandRestaurant = GMSMarker()
        AniseHotelandRestaurant.position = CLLocationCoordinate2DMake(11.55539, 104.92473)
        AniseHotelandRestaurant.title = "AniseHotelandRestaurant"
        AniseHotelandRestaurant.snippet = "Meeting Point"
        AniseHotelandRestaurant.map = mapView
        
        let TopBananaHotel = GMSMarker()
        TopBananaHotel.position = CLLocationCoordinate2DMake(11.55546, 104.9261)
        TopBananaHotel.title = "AniseHotelandRestaurant"
        TopBananaHotel.snippet = "Meeting Point"
        TopBananaHotel.icon = UIImage(named: "house")
        TopBananaHotel.map = mapView
        
        
        
        
        self.view = mapView
    
    }
}
