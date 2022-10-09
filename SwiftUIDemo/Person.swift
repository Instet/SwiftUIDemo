//
//  Person.swift
//  SwiftUIDemo
//
//  Created by Руслан Магомедов on 09.10.2022.
//

//import Foundation
import SwiftUI

struct Person: Identifiable {
    var id = UUID()
    var name: String
    var age: Int
    var about: String
}
