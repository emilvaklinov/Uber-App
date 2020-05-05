//
//  RiderViewController.swift
//  Uber
//
//  Created by Emil Vaklinov on 05/05/2020.
//  Copyright © 2020 Emil Vaklinov. All rights reserved.
//

import UIKit
import MapKit

class RiderViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet weak var callAnUberButton: UIButton!
    @IBOutlet weak var uberMap: MKMapView!
    
    var locationManager = CLLocationManager()
    
    override func viewDidLoad() {
           super.viewDidLoad()
        locationManager.delegate = self
           // Precised location
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
       }
    // Location update
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let coord = manager.location?.coordinate {
           let center = CLLocationCoordinate2D(latitude: coord.latitude, longitude: coord.longitude)
            let region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
                uberMap.setRegion(region, animated: true)
            // Add a pin
            uberMap.removeAnnotations(uberMap.annotations)
            let annotation = MKPointAnnotation()
            annotation.coordinate = center
            annotation.title = "Your Location"
            uberMap.addAnnotation(annotation)
        }
    }
    @IBAction func logoutTapped(_ sender: Any) {
    }
    
    
    @IBAction func callUberTapped(_ sender: Any) {
    }
   
    

}
