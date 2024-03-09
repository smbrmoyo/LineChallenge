//
//  Line.swift
//  LineChallenge
//
//  Created by Brian Moyou on 09.03.24.
//

import Foundation

/**
 Model that represents a line on a grid
 */
struct Line {
    var length: Int
    var origin: Point
    var orientation: Orientation
    var points: [Point] = []
    
    var maxX: Int {
        guard let max = points.max(by: { $0.x < $1.x })?.x else { return 0 }
        
        return max
    }
    var maxY: Int {
        guard let max = points.max(by: { $0.y < $1.y })?.y else { return 0 }
        
        return max
    }
    
    var minX: Int {
        guard let max = points.min(by: { $0.x < $1.x })?.x else { return 0 }
        
        return max
    }
    var minY: Int {
        guard let max = points.min(by: { $0.y < $1.y })?.y else { return 0 }
        
        return max
    }
    
    init(length: Int, origin: Point, orientation: Orientation) {
        self.length = length
        self.origin = origin
        self.orientation = orientation
        
        buildLine()
    }
    
    private mutating func buildLine() {
        points.append(origin)
        
        for i in 1..<length {
            switch orientation {
            case .n:
                points.append(Point(x: origin.x, y: origin.y - i))
            case .ne:
                points.append(Point(x: origin.x + i, y: origin.y - i))
            case .e:
                points.append(Point(x: origin.x + i, y: origin.y))
            case .se:
                points.append(Point(x: origin.x + i, y: origin.y + i))
            case .s:
                points.append(Point(x: origin.x, y: origin.y + i))
            case .sw:
                points.append(Point(x: origin.x - i, y: origin.y + i))
            case .w:
                points.append(Point(x: origin.x - i, y: origin.y))
            case .nw:
                points.append(Point(x: origin.x - i, y: origin.y - i))
            }
        }
    }
}
