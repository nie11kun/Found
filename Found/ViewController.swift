//
//  ViewController.swift
//  Found
//
//  Created by Marco Nie on 16/05/2017.
//  Copyright © 2017 Marco Nie. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {

    @IBAction func dropPin(_ sender: UIBarButtonItem) {
        let pin = Pin(coordinate: mapView.userLocation.coordinate)
        mapView.addAnnotation(pin)
    }
    
    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        mapView.setUserTrackingMode(.follow, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation) {
        let center = CLLocationCoordinate2D(latitude: userLocation.coordinate.latitude, longitude: userLocation.coordinate.longitude)
        let width = 1000.0
        let height = 1000.0
        let region = MKCoordinateRegionMakeWithDistance(center, width, height)
        mapView.setRegion(region, animated: true)
    }

}

