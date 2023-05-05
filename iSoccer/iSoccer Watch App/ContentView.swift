//
//  ContentView.swift
//  iSoccer Watch App
//
//  Created by Kiss Dániel Márk on 2023. 05. 05..
//

import SwiftUI
import SpeedManagerModule

struct ContentView: View {
    @StateObject var speedManager = SpeedManager(.kilometersPerHour)
       
       var body: some View {
           VStack {
               switch speedManager.authorizationStatus {
               case .authorized:
                   Text("Your current speed is:")
                   Text("\(speedManager.speed)")
                   Text("km/h")
               default:
                   Spacer()
               }
           }
       }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
