//
//  Card.swift
//  TexasHoldem
//
//  Created by 李直 on 2026/1/9.
//

import Foundation

enum Suit: String, CaseIterable, Codable {
    case spades = "♠︎"
    case hearts = "♥︎"
    case diamonds = "♦︎"
    case clubs = "♣︎"
}

enum Rank: Int, CaseIterable, Codable, Comparable {
    case two = 2, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king, ace

    static func < (lhs: Rank, rhs: Rank) -> Bool {
        lhs.rawValue < rhs.rawValue
    }

    var display: String {
        switch self {
        case .two: return "2"
        case .three: return "3"
        case .four: return "4"
        case .five: return "5"
        case .six: return "6"
        case .seven: return "7"
        case .eight: return "8"
        case .nine: return "9"
        case .ten: return "T"
        case .jack: return "J"
        case .queen: return "Q"
        case .king: return "K"
        case .ace: return "A"
        }
    }
}

struct Card: Identifiable, Codable, Equatable, Hashable, CustomStringConvertible {
    let id: UUID = UUID()
    let rank: Rank
    let suit: Suit

    var description: String {
        "\(rank.display)\(suit.rawValue)"
    }
}
