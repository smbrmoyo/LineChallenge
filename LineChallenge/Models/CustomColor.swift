//
//  CustomColor.swift
//  LineChallenge
//
//  Created by Brian Moyou on 09.03.24.
//

import Foundation

enum ASCIIColor: String {
    case black = "\u{001B}[0;30m"
    case red = "\u{001B}[0;31m"
    case green = "\u{001B}[0;32m"
    case yellow = "\u{001B}[0;33m"
    case blue = "\u{001B}[0;34m"
    case magenta = "\u{001B}[0;35m"
    case cyan = "\u{001B}[0;36m"
    case white = "\u{001B}[0;37m"
    case reset = "\u{001B}[0;0m"
}

func printColored(_ text: String, color: ASCIIColor) {
    print("\(color.rawValue)\(text)\(ASCIIColor.reset.rawValue)")
}

