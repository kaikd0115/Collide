//
//  ContentView.swift
//  Collide
//
//  Created by Kodama Kai on 2024/10/23.
//

import SwiftUI
import MapKit
import CoreLocation

struct ContentView: View {
    var body: some View {
        TabView{
           ElseMapView()
                .tabItem {
                    Image(systemName: "map")
                    Text("マップ")
                }
            ProfileView()
                .tabItem{
                    Image(systemName: "person.circle")
                    Text("ユーザー")
                }
            
            
        }
    }
    
   
}

#Preview {
    ContentView()
}
