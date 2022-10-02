//
//  Product.swift
//  TinderForShopping
//
//  Created by nikita on 2.10.22.
//

import Foundation

struct Product: Identifiable {
    let id = UUID()
    var image: String
    var title: String
    
    
    static let bread: Product = Product(image: "🍞", title: "Bread")
    static let tea: Product = Product(image: "🍵", title: "Tea")
    static let apple: Product = Product(image: "🍏", title: "Apple")
    static let meet: Product = Product(image: "🥩", title: "Meet")
    static let melon: Product = Product(image: "🍉", title: "Melon")
    static let coconut: Product = Product(image: "🥥", title: "Coconut")
    static let chees: Product = Product(image: "🧀", title: "Chees")
    static let eag: Product = Product(image: "🥚", title: "Eag")
    
    static let products = [
        bread, tea, apple,
        meet, melon, coconut,
        chees, eag
    ]
}
