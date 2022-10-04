//
//  TinderForShoppingApp.swift
//  TinderForShopping
//
//  Created by nikita on 2.10.22.
//

import SwiftUI

@main
struct TinderForShoppingApp: App {
    var body: some Scene {
        WindowGroup {
            let _ = print(FileManager.default.urls(for: .documentDirectory, in: .userDomainMask))
            MainView()
        }
    }
}
