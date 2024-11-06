//
//  File.swift
//  Collide
//
//  Created by Kodama Kai on 2024/10/30.
//

import Foundation
import SwiftUI
import CoreLocation

public class LocationManager: NSObject, ObservableObject {
    
    private let backgroundSession = CLBackgroundActivitySession()
    private let updates = CLLocationUpdate.liveUpdates()
    
    @Published var lat: Double = 0
    @Published var lon: Double = 0
    
    @ObservedObject public static var shared = LocationManager()
    
    public let manager = CLLocationManager()
    
    public override init() {
        super.init()
    }
    
    public func requestAuthorization() {
        manager.requestWhenInUseAuthorization()
        manager.requestAlwaysAuthorization()
    }
    
    public func start() {
        Task {
            for try await update in updates {
                if let loc = update.location {
                    self.lat = loc.coordinate.latitude
                    self.lon = loc.coordinate.longitude
                }
            }
        }
    }
}


