//
//  ProductCardView.swift
//  TinderForShopping
//
//  Created by nikita on 2.10.22.
//

import SwiftUI
import RealmSwift

struct ProductCardView: View {
    
    @ObservedResults(ProductRealm.self) var prod
    
    var product: Product
    @State private var offset = CGSize.zero
    @State private var color: Color = .black
    
    var body: some View {
        HStack {
            Text(product.image)
            Text(product.title)
                .fontWeight(.bold)
        }
        .font(.largeTitle)
        .frame(maxWidth: .infinity, maxHeight: 300)
        .background(color)
        .foregroundColor(.white)
        .cornerRadius(16)
        .padding(.horizontal, 64)
        .offset(x: offset.width, y: offset.height * 0.4)
        .rotationEffect(.degrees(Double(offset.width / 40)))
        .gesture(
            DragGesture()
                .onChanged { gesture in
                    offset = gesture.translation
                    withAnimation {
                        changeColor(width: offset.width)
                    }
                }.onEnded { _ in
                    withAnimation {
                        swipeCard(width: offset.width)
                        changeColor(width: offset.width)
                    }
                }
        )
    }
    
    func swipeCard(width: CGFloat) {
        switch width {
        case -500...(-150):
            print("\(product) removed")
            offset = CGSize(width: -500, height: 0)
        case 150...500:
            print("\(product) added")
            
            let produ = ProductRealm()
            produ.image = product.image
            produ.title = product.title
            $prod.append(produ)
            
            offset = CGSize(width: 500, height: 0)
        default:
            offset = .zero
        }
    }
    
    func changeColor(width: CGFloat) {
        switch width {
        case -500...(-130):
            color = .red
        case 130...500:
            color = .green
        default:
            color = .black
        }
    }
}

struct ProductCardView_Previews: PreviewProvider {
    static var previews: some View {
        ProductCardView(product: .chees)
    }
}
