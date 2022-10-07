//
//  ShoppingListView.swift
//  TinderForShopping
//
//  Created by nikita on 2.10.22.
//

import SwiftUI
import RealmSwift

struct ShoppingListView: View {
    
    @ObservedResults(ProductRealm.self) var products
    
    @State private var isPresented: Bool = false
    @State private var productInput: String = ""
    
//    private var products = Product.products
    
    var body: some View {
        NavigationView {
            List {
                ForEach(products) { product in
                    HStack {
                        Text(product.image)
                        Text(product.title)
                    }
                    .swipeActions(edge: .leading, allowsFullSwipe: false) {
                        Text("Edit")
                    }
                }
                .onDelete(perform: $products.remove)
                
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        isPresented.toggle()
                    } label: {
                        Image(systemName: "plus")
                    }.alert("Add product", isPresented: $isPresented, actions: {
                        TextField("Product", text: $productInput)
                        
                        Button("Add", action: {
                            let product = ProductRealm()
                            product.image = ""
                            product.title = productInput
                            $products.append(product)
                        })
                        Button("Cancel", role: .cancel, action: {})
                    })
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
