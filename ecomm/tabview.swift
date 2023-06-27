//
//  tabview.swift
//  ecomm
//
//  Created by KCD on 1/22/23.
//

import SwiftUI

struct tabview: View {
    var body: some View {
        TabView{
            ContentView()
                .tabItem {
                    Image(systemName: "command")
                        .foregroundColor(.black)
                }
            Text("Wish List")
                .tabItem {
                    Image(systemName: "heart")
                        .foregroundColor(.black)
                }
            Text("Cart")
                .tabItem {
                    Image(systemName: "cart")
                        .foregroundColor(.black)
                }
        }        
    }
}

struct tabview_Previews: PreviewProvider {
    static var previews: some View {
        tabview()
    }
}
