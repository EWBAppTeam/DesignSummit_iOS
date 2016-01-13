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
        
        
        
        let camera = GMSCameraPosition.cameraWithLatitude(-33.86,
            longitude: 151.20, zoom: 11, bearing: 0, viewingAngle:0)
        
        let mapView = GMSMapView.mapWithFrame(CGRectZero, camera: camera)
        mapView.myLocationEnabled = true
        mapView.settings.myLocationButton = true
        mapView.settings.compassButton = true
        
        
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2DMake(-33.86, 151.20)
        marker.title = "Sydney"
        marker.snippet = "Australia"
        marker.icon = UIImage(named: "house")
        marker.map = mapView
        
        let marker2 = GMSMarker()
        marker2.position = CLLocationCoordinate2DMake(-27.86, 154.20)
        marker2.title = "Melbourne"
        marker2.snippet = "The best place to live in the world"
        marker2.map = mapView
        
        let AniseHotelandRestaurant = GMSMarker()
        AniseHotelandRestaurant.position = CLLocationCoordinate2DMake(11.55539, 104.92473)
        marker2.title = "AniseHotelandRestaurant"
        marker2.snippet = "Meeting Point"
        AniseHotelandRestaurant.map = mapView
        
        let TopBananaHotel = GMSMarker()
        TopBananaHotel.position = CLLocationCoordinate2DMake(11.55546, 104.9261)
        TopBananaHotel.title = "AniseHotelandRestaurant"
        TopBananaHotel.snippet = "Meeting Point"
        TopBananaHotel.map = mapView
        
        
        
        
        self.view = mapView
    
    }
}
