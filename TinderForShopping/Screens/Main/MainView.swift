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
        NavigationView {
            ZStack {
                FinishView()
                ForEach(products) { product in
                    ProductCardView(product: product)
                }
            }.toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        
                    } label: {
                        Image(systemName: "line.3.horizontal")
                    }.foregroundColor(.black)
                }
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
