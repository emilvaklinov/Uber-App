//
//  RiderViewController.swift
//  Uber
//
//  Created by Emil Vaklinov on 05/05/2020.
//  Copyright © 2020 Emil Vaklinov. All rights reserved.
//

import UIKit
import MapKit

class RiderViewController: UIViewController {

    @IBOutlet weak var callAnUberButton: UIButton!
    @IBOutlet weak var uberMap: MKMapView!
    
    var locationManager = CLLocationManager()
    
    override func viewDidLoad() {
           super.viewDidLoad()

           // Do any additional setup after loading the view.
       }
    
    @IBAction func logoutTapped(_ sender: Any) {
    }
    
    
    @IBAction func callUberTapped(_ sender: Any) {
    }
   
    

}
