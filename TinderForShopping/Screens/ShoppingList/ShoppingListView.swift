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
                }.onDelete(perform: $products.remove)
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        isPresented.toggle()
                    } label: {
                        Image(systemName: "plus")
                    }.popover(isPresented: $isPresented) {
                        VStack {
                            Text("Add product")
                            TextField("Product", text: $productInput)
                            Button {
                                let product = ProductRealm()
                                product.image = ""
                                product.title = productInput
                                $products.append(product)
                            } label: {
                                Text("Save")
                            }

                        }
                    }

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
