//
//  ContentView.swift
//  WaterDropShape
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            WaterDropView()
                .tabItem {
                    Image(systemName: "drop")
                    Text("Water Drop")
                }
            
            SimpleTriangleView()
                .tabItem {
                    Image(systemName: "triangle")
                    Text("Simple Triangle")
                }
        }
    }
}

#Preview {
    ContentView()
}
