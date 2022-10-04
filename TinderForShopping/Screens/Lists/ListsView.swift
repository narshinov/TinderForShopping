//
//  ListsView.swift
//  TinderForShopping
//
//  Created by nikita on 2.10.22.
//

import SwiftUI

struct ListsView: View {
    
    private var lists = [Product.products, Product.products]
    
    var body: some View {
        List {
            ForEach(0..<5, id: \.self) {
                Text("\($0)")
            }
        }
    }
}

struct ListsView_Previews: PreviewProvider {
    static var previews: some View {
        ListsView()
    }
}
