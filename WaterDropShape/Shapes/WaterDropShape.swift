//
//  WaterDropShape.swift
//  WaterDropShape
//

import SwiftUI

struct WaterDropShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        // Starting from the top middle.
        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        
        // Add a curve to the middle right.
        path.addQuadCurve(to: CGPoint(x: rect.maxX, y: rect.midY),
                          control: CGPoint(x: rect.maxX, y: rect.height / 4))
        
        // Draw an arc going counter clockwise.
        path.addArc(center: CGPoint(x: rect.midX, y: rect.midY),
                    radius: rect.width / 2,
                    startAngle: .degrees(0),
                    endAngle: .degrees(180),
                    clockwise: false)
        
        // Close the shape with a curve.
        path.addQuadCurve(to: CGPoint(x: rect.midX, y: rect.minY),
                          control: CGPoint(x: rect.minX, y: rect.height / 4))
        
        return path
    }
}
