//
//  MainView.swift
//  TinderForShopping
//
//  Created by nikita on 2.10.22.
//

import SwiftUI

struct MainView: View {
    
    private var products = Product.products
    @State private var showShoppingList: Bool = false
    
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
                        showShoppingList.toggle()
                    } label: {
                        Image(systemName: "line.3.horizontal")
                    }.foregroundColor(.black)
                        .sheet(isPresented: $showShoppingList) {
                            ShoppingListView()
                        }
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
