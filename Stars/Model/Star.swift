//
//  Star.swift
//  Stars
//
//  Created by Marc Jacques on 3/10/21.
//

import Foundation

struct Star: Codable {
    let name: String
    let distance: Double
    
    var distanceDescription: String {
        return "\(distance) lightyears away"
    }
}
