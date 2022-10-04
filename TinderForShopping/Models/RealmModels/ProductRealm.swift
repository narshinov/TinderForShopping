//
//  ProductRealm.swift
//  TinderForShopping
//
//  Created by nikita on 2.10.22.
//

import Foundation
import RealmSwift

class ProductRealm: Object, Identifiable {
    
    @Persisted(primaryKey: true) var id: ObjectId
    @Persisted var image: String
    @Persisted var title: String
    
    override class func primaryKey() -> String? {
        "id"
    }
    
}
