//
//  FinishView.swift
//  TinderForShopping
//
//  Created by nikita on 2.10.22.
//

import SwiftUI

struct FinishView: View {
    
    @State private var isPresented: Bool = false
    
    var body: some View {
        VStack {
            Text("Excellent!")
                .font(.largeTitle)
                .fontWeight(.bold)
            Text("Are you done")
                .font(.title2)
            Button("Go to shopping list") {
                isPresented.toggle()
            }
            .padding()
            .background(.black)
            .cornerRadius(16)
            .sheet(isPresented: $isPresented) {
                ShoppingListView()
            }
        }
    }
}

struct FinishView_Previews: PreviewProvider {
    static var previews: some View {
        FinishView()
    }
}
