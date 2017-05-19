//
//  Pin.swift
//  Found
//
//  Created by Marco Nie on 16/05/2017.
//  Copyright © 2017 Marco Nie. All rights reserved.
//

import MapKit

class Pin: NSObject, MKAnnotation {
    let coordinate: CLLocationCoordinate2D
    init(coordinate: CLLocationCoordinate2D) {
        self.coordinate = coordinate
    }
}
