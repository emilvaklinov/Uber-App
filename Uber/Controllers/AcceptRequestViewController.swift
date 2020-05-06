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

           // Do any additional setup after loading the view.
       }
      
    @IBAction func acceptTapped(_ sender: Any) {
    }
    

}
