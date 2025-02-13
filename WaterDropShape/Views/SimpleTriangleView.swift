//
//  SimpleTriangleView.swift
//  WaterDropShape
//

import SwiftUI

struct SimpleTriangleView: View {
    var body: some View {
        VStack(spacing: 50) {
            Text("Simple Triangle")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            SimpleTriangleShape()
                .fill(.blue)
                .border(.gray, width: 1)
                .containerRelativeFrame([.horizontal, .vertical], alignment: .bottom) { len, axis in
                    len / 2
                }
        }
    }
}

#Preview {
    SimpleTriangleView()
}
