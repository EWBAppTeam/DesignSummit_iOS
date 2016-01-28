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
    
    @IBOutlet weak var tabButtons: UISegmentedControl!
    @IBOutlet weak var menuView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        let camera = GMSCameraPosition.cameraWithLatitude(11.55551,
            longitude: 104.92554, zoom: 15, bearing: 0, viewingAngle:0)
        
        let mapView = GMSMapView.mapWithFrame(CGRectZero, camera: camera)
        mapView.myLocationEnabled = true
        mapView.settings.myLocationButton = true
        mapView.settings.compassButton = true
    
        
        
        //Airport
        
        let InternationalAirport = GMSMarker()
        InternationalAirport.position = CLLocationCoordinate2DMake(11.545875, 104.847442)
        InternationalAirport.title = "International and Domestic Airport"
        InternationalAirport.snippet = "Airport"
        InternationalAirport.map = mapView
        
        
        // Accom
        let accom = UIImage(named: "lodging")
        
        
        let GoldenBridgeGuesthouse = GMSMarker()
        GoldenBridgeGuesthouse.position = CLLocationCoordinate2DMake(11.55551, 104.92554)
        GoldenBridgeGuesthouse.title = "Golden Bridge Guesthouse"
        GoldenBridgeGuesthouse.snippet = "Accom"
        GoldenBridgeGuesthouse.map = mapView
        GoldenBridgeGuesthouse.icon = accom
        
        let MekongDolphineHotel = GMSMarker()
        MekongDolphineHotel.position = CLLocationCoordinate2DMake(12.491371, 106.015883)
        MekongDolphineHotel.title = "Mekong Dolphine Hotel"
        MekongDolphineHotel.snippet = "Accom"
        MekongDolphineHotel.map = mapView
        MekongDolphineHotel.icon = accom
        
        let LyCheuHotel = GMSMarker()
        LyCheuHotel.position = CLLocationCoordinate2DMake(12.495544, 106.025670)
        LyCheuHotel.title = "Ly Cheu Hotel"
        LyCheuHotel.snippet = "Accom"
        LyCheuHotel.map = mapView
        LyCheuHotel.icon = accom
        
        
        
        
        // Services
        let ATM = UIImage(named: "atm")
        let printing = UIImage(named: "printer")
        
        
        let ANZATM = GMSMarker()
        ANZATM.position = CLLocationCoordinate2DMake(11.55592, 104.92518)
        ANZATM.title = "ANZ ATM"
        ANZATM.snippet = "ATM"
        ANZATM.map = mapView
        ANZATM.icon = ATM
        
        let CanadiaBanksATM = GMSMarker()
        CanadiaBanksATM.position = CLLocationCoordinate2DMake(12.490110, 106.015911)
        CanadiaBanksATM.title = "Canadia Bank's ATM"
        CanadiaBanksATM.snippet = "ATM"
        CanadiaBanksATM.map = mapView
        CanadiaBanksATM.icon = ATM
        
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
        KhmerSurinRestaurant.position = CLLocationCoordinate2DMake(11.555457, 104.924576)
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
        ArtilleryArtsCafe.position = CLLocationCoordinate2DMake(11.56049, 104.93036)
        ArtilleryArtsCafe.title = "Artillery Arts Cafe"
        ArtilleryArtsCafe.snippet = "Meeting Point"
        ArtilleryArtsCafe.map = mapView
        ArtilleryArtsCafe.icon = cafe
        
        let SoryaKayakingCafe = GMSMarker()
        SoryaKayakingCafe.position = CLLocationCoordinate2DMake(12.490009, 106.015582)
        SoryaKayakingCafe.title = "Sorya Kayaking Cafe"
        SoryaKayakingCafe.snippet = "Restuarant"
        SoryaKayakingCafe.map = mapView
        SoryaKayakingCafe.icon = cafe
        
        let LeTonleRestaurant = GMSMarker()
        LeTonleRestaurant.position = CLLocationCoordinate2DMake(12.490942, 106.016407)
        LeTonleRestaurant.title = "Le Tonle Restaurant"
        LeTonleRestaurant.snippet = "Restuarant"
        LeTonleRestaurant.map = mapView
        LeTonleRestaurant.icon = cafe
        
        let MtEverestRestaurant = GMSMarker()
        MtEverestRestaurant.position = CLLocationCoordinate2DMake(11.553922, 104.925455)
        MtEverestRestaurant.title = "Mt Everest Restaurant"
        MtEverestRestaurant.snippet = "Restuarant"
        MtEverestRestaurant.map = mapView
        MtEverestRestaurant.icon = cafe
        
        let FriendstheRestuarant = GMSMarker()
        FriendstheRestuarant.position = CLLocationCoordinate2DMake(11.566837, 104.929218)
        FriendstheRestuarant.title = "Friends the Restaurant"
        FriendstheRestuarant.snippet = "Restuarant"
        FriendstheRestuarant.map = mapView
        FriendstheRestuarant.icon = cafe
        
        let HengHengRestaurant = GMSMarker()
        HengHengRestaurant.position = CLLocationCoordinate2DMake(12.483605, 106.017214)
        HengHengRestaurant.title = "Heng Heng Restaurant"
        HengHengRestaurant.snippet = "Restuarant"
        HengHengRestaurant.map = mapView
        HengHengRestaurant.icon = cafe
        
        let PonNorReayRestaurant  = GMSMarker()
        PonNorReayRestaurant .position = CLLocationCoordinate2DMake(12.490726, 106.015847)
        PonNorReayRestaurant .title = "Pon Nor Reay Restaurant"
        PonNorReayRestaurant .snippet = "Restuarant"
        PonNorReayRestaurant .map = mapView
        PonNorReayRestaurant .icon = cafe
        
        
        
        
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
        
        
        // Books
        let book = UIImage(named: "library")
        
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
        
        let NAGAClinic = GMSMarker()
        NAGAClinic.position = CLLocationCoordinate2DMake( 11.557942, 104.924910)
        NAGAClinic.title = "NAGA Clinic"
        NAGAClinic.snippet = "Health Care"
        NAGAClinic.map = mapView
        NAGAClinic.icon = pharmacy
        
        let VatanakPharmacy = GMSMarker()
        VatanakPharmacy.position = CLLocationCoordinate2DMake( 12.484202, 106.017843)
        VatanakPharmacy.title = "Vatanak Pharmacy"
        VatanakPharmacy.snippet = "Health Care"
        VatanakPharmacy.map = mapView
        VatanakPharmacy.icon = pharmacy
        
        let InternationalSOSMedicalandDentalClinic = GMSMarker()
        InternationalSOSMedicalandDentalClinic.position = CLLocationCoordinate2DMake(11.55966, 104.925)
        InternationalSOSMedicalandDentalClinic.title = "International SOS Medical and Dental Clinic"
        InternationalSOSMedicalandDentalClinic.snippet = "Health Care"
        InternationalSOSMedicalandDentalClinic.map = mapView
        InternationalSOSMedicalandDentalClinic.icon = hospitals
        
        let RoyalAngkorHospital = GMSMarker()
        RoyalAngkorHospital.position = CLLocationCoordinate2DMake(13.382693, 103.828382)
        RoyalAngkorHospital.title = "Royal Angkor Hospital"
        RoyalAngkorHospital.snippet = "Health Care"
        RoyalAngkorHospital.map = mapView
        RoyalAngkorHospital.icon = hospitals
        
        let BowenMedicalClinic = GMSMarker()
        BowenMedicalClinic.position = CLLocationCoordinate2DMake(12.484662, 106.017187)
        BowenMedicalClinic.title = "Bowen Medical Clinic"
        BowenMedicalClinic.snippet = "Health Care"
        BowenMedicalClinic.map = mapView
        BowenMedicalClinic.icon = pharmacy
        
        let KratieReferralHospital = GMSMarker()
        KratieReferralHospital.position = CLLocationCoordinate2DMake(12.476575, 106.022015)
        KratieReferralHospital.title = "Kratie Referral Hospital"
        KratieReferralHospital.snippet = "Health Care"
        KratieReferralHospital.map = mapView
        KratieReferralHospital.icon = hospitals
        
        
        
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
        
        let StreetFoodMarket = GMSMarker()
        StreetFoodMarket.position = CLLocationCoordinate2DMake(12.483963, 106.018010)
        StreetFoodMarket.title = "Street Food Market"
        StreetFoodMarket.snippet = "Point of Interest"
        StreetFoodMarket.map = mapView
        
        let SammkiMarket = GMSMarker()
        SammkiMarket.position = CLLocationCoordinate2DMake(12.484486, 106.018440)
        SammkiMarket.title = "Sammki Market"
        SammkiMarket.snippet = "Point of Interest"
        SammkiMarket.map = mapView
        
        let KillingFields = GMSMarker()
        KillingFields.position = CLLocationCoordinate2DMake(11.484038, 104.901484)
        KillingFields.title = "Killing Fields"
        KillingFields.snippet = "Point of Interest"
        KillingFields.map = mapView
        
        let LifeofRithCourse = GMSMarker()
        LifeofRithCourse.position = CLLocationCoordinate2DMake(11.567085, 104.900197)
        LifeofRithCourse.title = "Life of Rith Course"
        LifeofRithCourse.snippet = "Point of Interest"
        LifeofRithCourse.map = mapView
        
        let RussianMarket = GMSMarker()
        RussianMarket.position = CLLocationCoordinate2DMake(11.540576, 104.914569)
        RussianMarket.title = "Russian Market"
        RussianMarket.snippet = "Point of Interest"
        RussianMarket.map = mapView
        
        let TheFlicks = GMSMarker()
        TheFlicks.position = CLLocationCoordinate2DMake(11.549545, 104.920763)
        TheFlicks.title = "The Flicks"
        TheFlicks.snippet = "Cinema"
        TheFlicks.map = mapView
        
        let CambodianPrideTours = GMSMarker()
        CambodianPrideTours.position = CLLocationCoordinate2DMake(12.484677, 106.016933)
        CambodianPrideTours.title = "Cambodian Pride Tours"
        CambodianPrideTours.snippet = "POI"
        CambodianPrideTours.map = mapView
        
        //
        
        let AustralianEmbassy = GMSMarker()
        AustralianEmbassy.position = CLLocationCoordinate2DMake(11.553104, 104.935793)
        AustralianEmbassy.title = "Australian Embassy"
        AustralianEmbassy.snippet = "Emergency Contact"
        AustralianEmbassy.map = mapView
        
        let CRDTOfficeKratie = GMSMarker()
        CRDTOfficeKratie.position = CLLocationCoordinate2DMake(12.491155, 106.016326)
        CRDTOfficeKratie.title = "CRDT Office Kratie"
        CRDTOfficeKratie.snippet = "Emergency Contact"
        CRDTOfficeKratie.map = mapView
        
        
        self.view = mapView
    
    }
}
































// End of file
