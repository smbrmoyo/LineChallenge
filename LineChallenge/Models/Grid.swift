//
//  Grid.swift
//  LineChallenge
//
//  Created by Brian Moyou on 09.03.24.
//

import Foundation

/**
 Model that represents a Grid
 */
struct Grid {
    var lines: [Line]
    var smallestPoint: Point = Point(x: 0, y: 0)
    var maxX: Int = 0
    var maxY: Int = 0
    
    init(lines: [Line]) {
        self.lines = lines
        
        findGridDimensions()
    }
    
    
    func draw() {
        for j in 0...maxY {
            for i in 0...maxX {
                for line in lines {
                    if line.points.contains(where: { $0 == Point(x: i, y: j) }) {
                        print("x ", terminator: "")
                        #error("Check if spot is already filled")
                        continue
                    } else {
                        print(". ", terminator: "")
                    }
                }
            }
            print()
        }
    }
    
    mutating func findGridDimensions() {
        lines.forEach { line in
            maxX = line.maxX > maxX ? line.maxX : maxX
            maxY = line.maxY > maxY ? line.maxY : maxY
        }
    }
}
