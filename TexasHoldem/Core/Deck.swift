//
//  Deck.swift
//  TexasHoldem
//
//  Created by 李直 on 2026/1/9.
//

import Foundation

struct Deck {
    private(set) var cards: [Card]

    init(shuffled: Bool = true) {
        var all: [Card] = []
        all.reserveCapacity(52)
        for suit in Suit.allCases {
            for rank in Rank.allCases {
                all.append(Card(rank: rank, suit: suit))
            }
        }
        self.cards = all
        if shuffled { self.shuffle() }
    }

    mutating func shuffle() {
        cards.shuffle()
    }

    mutating func draw() -> Card? {
        guard !cards.isEmpty else { return nil }
        return cards.removeLast()
    }

    mutating func draw(_ n: Int) -> [Card] {
        var result: [Card] = []
        result.reserveCapacity(n)
        for _ in 0..<n {
            if let c = draw() { result.append(c) } else { break }
        }
        return result
    }

    var count: Int { cards.count }
}
