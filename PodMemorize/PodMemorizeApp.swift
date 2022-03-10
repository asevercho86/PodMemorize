//
//  PodMemorizeApp.swift
//  PodMemorize
//
//  Created by DEOKSHIN CHO on 2022/02/11.
//

import SwiftUI

@main
struct PodMemorizeApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
