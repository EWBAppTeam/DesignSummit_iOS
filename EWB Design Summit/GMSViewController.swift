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
        
        
        
        let camera = GMSCameraPosition.cameraWithLatitude(11.55551,
            longitude: 104.92554, zoom: 15, bearing: 0, viewingAngle:0)
        
        let mapView = GMSMapView.mapWithFrame(CGRectZero, camera: camera)
        mapView.myLocationEnabled = true
        mapView.settings.myLocationButton = true
        mapView.settings.compassButton = true
        
        
        
        
        
        // Accom
        let accom = UIImage(named: "lodging")
        
        let GoldenBridgeGuesthouse = GMSMarker()
        GoldenBridgeGuesthouse.position = CLLocationCoordinate2DMake(11.55551, 104.92554)
        GoldenBridgeGuesthouse.title = "Golden Bridge Guesthouse"
        GoldenBridgeGuesthouse.snippet = "Accom"
        GoldenBridgeGuesthouse.map = mapView
        GoldenBridgeGuesthouse.icon = accom
        
        
        
        // Services
        let ATM = UIImage(named: "atm")
        let printing = UIImage(named: "printer")
        
        let ANZATM = GMSMarker()
        ANZATM.position = CLLocationCoordinate2DMake(11.55592, 104.92518)
        ANZATM.title = "ANZ ATM"
        ANZATM.snippet = "ATM"
        ANZATM.map = mapView
        ANZATM.icon = ATM
        
        let LuckyPrinting = GMSMarker()
        LuckyPrinting.position = CLLocationCoordinate2DMake(11.55592, 104.92592)
        LuckyPrinting.title = "Lucky Printing"
        LuckyPrinting.snippet = "General"
        LuckyPrinting.map = mapView
        LuckyPrinting.icon = printing
        
        
        
        // Cafes
        let cafe = UIImage(named: "restaurant")
        let icecream = UIImage(named: "icecream")
        
        let CommeàlaMaison = GMSMarker()
        CommeàlaMaison.position = CLLocationCoordinate2DMake(11.55419, 104.92476)
        CommeàlaMaison.title = "Comme à la Maison"
        CommeàlaMaison.snippet = "Meeting Point"
        CommeàlaMaison.map = mapView
        CommeàlaMaison.icon = cafe
        
        let HerbCafe = GMSMarker()
        HerbCafe.position = CLLocationCoordinate2DMake(11.55561, 104.92614)
        HerbCafe.title = "Herb Cafe"
        HerbCafe.snippet = "Meeting Point"
        HerbCafe.map = mapView
        HerbCafe.icon = cafe
        
        let AniseHotelandRestaurant = GMSMarker()
        AniseHotelandRestaurant.position = CLLocationCoordinate2DMake(11.55539, 104.92473)
        AniseHotelandRestaurant.title = "AniseHotelandRestaurant"
        AniseHotelandRestaurant.snippet = "Meeting Point"
        AniseHotelandRestaurant.map = mapView
        AniseHotelandRestaurant.icon = cafe
        
        let SamakyCafe = GMSMarker()
        SamakyCafe.position = CLLocationCoordinate2DMake(11.55549, 104.92615)
        SamakyCafe.title = "Samaky Cafe"
        SamakyCafe.snippet = "Meeting Point"
        SamakyCafe.map = mapView
        SamakyCafe.icon = cafe
        
        let KhmerSurinRestaurant = GMSMarker()
        KhmerSurinRestaurant.position = CLLocationCoordinate2DMake(11.55592, 104.92518)
        KhmerSurinRestaurant.title = "Khmer Surin Restaurant"
        KhmerSurinRestaurant.snippet = "Meeting Point"
        KhmerSurinRestaurant.map = mapView
        KhmerSurinRestaurant.icon = cafe
        
        let BluePumpkim = GMSMarker()
        BluePumpkim.position = CLLocationCoordinate2DMake(11.5542, 104.92503)
        BluePumpkim.title = "Blue Pumpkim"
        BluePumpkim.snippet = "Ice Cream"
        BluePumpkim.map = mapView
        BluePumpkim.icon = icecream
        
        let ArtilleryArtsCafe = GMSMarker()
        ArtilleryArtsCafe.position = CLLocationCoordinate2DMake(11.55592, 104.92518)
        ArtilleryArtsCafe.title = "Artillery Arts Cafe"
        ArtilleryArtsCafe.snippet = "Meeting Point"
        ArtilleryArtsCafe.map = mapView
        ArtilleryArtsCafe.icon = cafe
        
        
        // Convenience Stores
        let shop = UIImage(named: "conveniencestore")
        
        let QwickStop = GMSMarker()
        QwickStop.position = CLLocationCoordinate2DMake(11.5555, 104.9256)
        QwickStop.title = "Qwick Stop"
        QwickStop.snippet = "Convenience Store"
        QwickStop.map = mapView
        QwickStop.icon = shop
        
        let LuckySupermarket = GMSMarker()
        LuckySupermarket.position = CLLocationCoordinate2DMake(11.55566, 104.92195)
        LuckySupermarket.title = "Lucky Supermarket"
        LuckySupermarket.snippet = "Convenience Store"
        LuckySupermarket.map = mapView
        LuckySupermarket.icon = shop
        
        
        
        // Bars
        let bar = UIImage(named: "bar")
       
        
        let TopBanana = GMSMarker()
        TopBanana.position = CLLocationCoordinate2DMake(11.55546, 104.9261)
        TopBanana.title = "Top Banana"
        TopBanana.snippet = "Drinking Point"
        TopBanana.map = mapView
        TopBanana.icon = bar
        
        // Books
        let book = UIImage(named: "newspaper")
        
        let InternationalBookstore = GMSMarker()
        InternationalBookstore.position = CLLocationCoordinate2DMake(11.55616, 104.92323)
        InternationalBookstore.title = "International Bookstore"
        InternationalBookstore.snippet = "General"
        InternationalBookstore.map = mapView
        InternationalBookstore.icon = book
        
        
        
        
        // Health
        let hospitals = UIImage(named: "hospital")
        let pharmacy = UIImage(named: "medicine")
        
        let UCarePharmacy = GMSMarker()
        UCarePharmacy.position = CLLocationCoordinate2DMake(11.55606, 104.92482)
        UCarePharmacy.title = "U Care Pharmacy"
        UCarePharmacy.snippet = "Health Care"
        UCarePharmacy.map = mapView
        UCarePharmacy.icon = pharmacy
        
        let InternationalSOSMedicalandDentalClinic = GMSMarker()
        InternationalSOSMedicalandDentalClinic.position = CLLocationCoordinate2DMake(11.55966, 104.925)
        InternationalSOSMedicalandDentalClinic.title = "International SOS Medical and Dental Clinic"
        InternationalSOSMedicalandDentalClinic.snippet = "Health Care"
        InternationalSOSMedicalandDentalClinic.map = mapView
        InternationalSOSMedicalandDentalClinic.icon = hospitals
        
        
        
        
        
        
        
        
        
        
        
        // Tourist
    
        
        let WatLangKaTemple = GMSMarker()
        WatLangKaTemple.position = CLLocationCoordinate2DMake(11.55552, 104.92736)
        WatLangKaTemple.title = "Wat Lang Ka Temple"
        WatLangKaTemple.snippet = "Point of Interest"
        WatLangKaTemple.map = mapView
        WatLangKaTemple.icon = UIImage(named: "pagoda")
        
        let TuolSlengGenocideMuseum = GMSMarker()
        TuolSlengGenocideMuseum.position = CLLocationCoordinate2DMake(11.54934, 104.91765)
        TuolSlengGenocideMuseum.title = "Tuol Sleng Genocide Museum"
        TuolSlengGenocideMuseum.snippet = "Point of Interest"
        TuolSlengGenocideMuseum.map = mapView
        TuolSlengGenocideMuseum.icon = UIImage(named: "memorial")
        
        let OlympicStadium = GMSMarker()
        OlympicStadium.position = CLLocationCoordinate2DMake(11.55835, 104.91187)
        OlympicStadium.title = "Olympic Stadium"
        OlympicStadium.snippet = "Point of Interest"
        OlympicStadium.map = mapView
        OlympicStadium.icon = UIImage(named: "olympicsite")
        
        let NationalMuseum = GMSMarker()
        NationalMuseum.position = CLLocationCoordinate2DMake(11.56557, 104.92921)
        NationalMuseum.title = "National Museum"
        NationalMuseum.snippet = "Point of Interest"
        NationalMuseum.map = mapView
        
        
        self.view = mapView
    
    }
}
































// End of file
