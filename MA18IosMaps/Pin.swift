//
//  Pin.swift
//  MA18IosMaps
//
//  Created by David Svensson on 2019-02-28.
//  Copyright © 2019 David Svensson. All rights reserved.
//

import Foundation
import MapKit

class Pin: NSObject, MKAnnotation {
    var coordinate: CLLocationCoordinate2D
    var title: String?
    
    init(coordinate: CLLocationCoordinate2D) {
        self.coordinate = coordinate
        self.title = "Varit här"
    }
    
}
