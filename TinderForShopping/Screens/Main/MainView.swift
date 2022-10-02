//
//  MainView.swift
//  TinderForShopping
//
//  Created by nikita on 2.10.22.
//

import SwiftUI

struct MainView: View {
    
    private var products = Product.products
    
    var body: some View {
        ZStack {
            FinishView()
            ForEach(products) { product in
                ProductCardView(product: product)
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
