//
//  ElseMapView.swift
//  Collide
//
//  Created by Kodama Kai on 2024/10/30.
//

import SwiftUI
import CoreLocation
import MapKit



struct ElseMapView: View{
   
    @State private var mapCameraPosition: MapCameraPosition = .userLocation(followsHeading: true, fallback: .automatic)
    
    var body: some View {
        Map(position: $mapCameraPosition,interactionModes: [.all]){
            
        }
    }
}

#Preview {
    ElseMapView()
}
