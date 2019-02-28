//
//  ViewController.swift
//  MA18IosMaps
//
//  Created by David Svensson on 2019-02-28.
//  Copyright © 2019 David Svensson. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate{

    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       mapView.setUserTrackingMode(.follow, animated: true)
        
    }

    func mapView(_: MKMapView, didUpdate userLocation: MKUserLocation) {
        let center = CLLocationCoordinate2D(latitude: userLocation.coordinate.latitude, longitude: userLocation.coordinate.longitude)
        
        let width = 50.0
        let height = 50.0
        
        let region = MKCoordinateRegion(center: center, latitudinalMeters: width, longitudinalMeters: height)
        
        mapView.setRegion(region, animated: true)
        
    }
    
    @IBAction func dropPin(_ sender: UIBarButtonItem) {
        let pin = Pin(coordinate: mapView.userLocation.coordinate)
        
        mapView.addAnnotation(pin)
        print("lat: \(mapView.userLocation.coordinate.latitude) long: \(mapView.userLocation.coordinate.longitude)")

        
        //drop pin pin current location
    }
    
    
//    @IBAction func openMaps(_ sender: UIButton) {
//
//        if let url = URL(string: "http://maps.apple.com/?q=37.331686,-122.030656") {
//
//            let app = UIApplication.shared
//            app.open(url)
//        }
//
//    }
    
    
}

