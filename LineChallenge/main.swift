//
//  main.swift
//  LineChallenge
//
//  Created by Brian Moyou on 09.03.24.
//

import Foundation

let lineN = Line(length: 5, origin: Point(x: 4, y: 4), orientation: .n)
let lineNE = Line(length: 5, origin: Point(x: 4, y: 4), orientation: .ne)
let lineE = Line(length: 10, origin: Point(x: 4, y: 4), orientation: .e)
let lineSE = Line(length: 10, origin: Point(x: 4, y: 4), orientation: .se)
let lineS = Line(length: 10, origin: Point(x: 4, y: 4), orientation: .s)
let lineSW = Line(length: 10, origin: Point(x: 4, y: 4), orientation: .sw)
let lineW = Line(length: 10, origin: Point(x: 4, y: 4), orientation: .w)
let lineNW = Line(length: 10, origin: Point(x: 4, y: 4), orientation: .nw)

let grid = Grid(lines: [lineN, lineE])

grid.draw()
