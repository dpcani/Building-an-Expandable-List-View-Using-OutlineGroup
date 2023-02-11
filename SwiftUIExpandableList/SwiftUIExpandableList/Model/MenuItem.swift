//
//  MenuItem.swift
//  SwiftUIExpandableList
//
//  Created by Marble Interactive SL on 11/2/23.
//

import Foundation

struct MenuItem: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var subMenuItems: [MenuItem]?
}
