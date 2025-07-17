//
//  Spot.swift
//  SnacktacularUI
//
//  Created by Robert Beachill on 15/07/2025.
//

import Foundation
import FirebaseFirestore

struct Spot: Identifiable, Codable {
    @DocumentID var id: String?
    var name = ""
    var address = ""
}
