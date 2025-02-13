//
//  SimpleTriangleShape.swift
//  WaterDropShape
//

import SwiftUI

struct SimpleTriangleShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        // We start from the top left corner.
        path.move(to: CGPoint(x: rect.minX, y: rect.minY))
        
        // Then we draw a line to the top right corner.
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
        
        // And finally, a line from the top right corner to the bottom middle.
        // Remember, Path() will automatically close the shape to the starting point.
        path.addLine(to: CGPoint(x: rect.midX, y: rect.maxY))
        
        return path
    }
}
