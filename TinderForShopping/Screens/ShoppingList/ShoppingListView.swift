//
//  ShoppingListView.swift
//  TinderForShopping
//
//  Created by nikita on 2.10.22.
//

import SwiftUI

struct ShoppingListView: View {
    
    private var products = Product.products
    
    var body: some View {
        List {
            ForEach(products) { product in
                HStack {
                    Text(product.image)
                    Text(product.title)
                }
            }
        }
    }
}

struct ShoppingListView_Previews: PreviewProvider {
    static var previews: some View {
        ShoppingListView()
    }
}
