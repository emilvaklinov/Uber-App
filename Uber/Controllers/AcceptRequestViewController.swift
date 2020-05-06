//
//  AcceptRequestViewController.swift
//  Uber
//
//  Created by Emil Vaklinov on 06/05/2020.
//  Copyright © 2020 Emil Vaklinov. All rights reserved.
//

import UIKit
import MapKit

class AcceptRequestViewController: UIViewController {

    @IBOutlet weak var map: MKMapView!
    
    var requestLocation = CLLocationCoordinate2D()
    var requestEmail = ""
    
    override func viewDidLoad() {
           super.viewDidLoad()

           //Setting the Map
        let region = MKCoordinateRegion(center: requestLocation, span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
        map.setRegion(region, animated: false)
        
        let annotation = MKPointAnnotation()
            annotation.coordinate = requestLocation
        annotation.title = requestEmail
        map.addAnnotation(annotation)
       }
      
    @IBAction func acceptTapped(_ sender: Any) {
    }
    

}
