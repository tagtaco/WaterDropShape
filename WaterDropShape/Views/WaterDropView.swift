//
//  WaterDropView.swift
//  WaterDropShape
//

import SwiftUI

struct WaterDropView: View {
    var body: some View {
        VStack(spacing: 50) {
            Text("Water Drop")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            WaterDropShape()
                .fill(.blue)
                .border(.gray, width: 1)
                .containerRelativeFrame([.horizontal, .vertical], alignment: .bottom) { len, axis in
                    len / 2
                }
        }
    }
}

#Preview {
    WaterDropView()
}
