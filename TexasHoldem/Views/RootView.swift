//
//  RootView.swift
//  TexasHoldem
//
//  Created by 李直 on 2026/1/9.
//

import SwiftUI

struct RootView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 16) {
                Text("Texas Hold’em")
                    .font(.largeTitle)
                    .bold()

                NavigationLink("开房 (Host)") {
                    LobbyView()
                }
                .buttonStyle(.borderedProminent)

                NavigationLink("加入 (Join)") {
                    JoinView()
                }
                .buttonStyle(.bordered)

                NavigationLink("单机 AI") {
                    GameView()
                }
                .buttonStyle(.bordered)
                
                Button("Test Deal (Console)") {
                    var deck = Deck()
                    let p1 = deck.draw(2)
                    let p2 = deck.draw(2)
                    let board = deck.draw(5)
                    print("P1:", p1.map(\.description).joined(separator: " "))
                    print("P2:", p2.map(\.description).joined(separator: " "))
                    print("Board:", board.map(\.description).joined(separator: " "))
                    print("Remaining:", deck.count)
                }
                .buttonStyle(.bordered)
            }
            .padding()
        }
    }
}

#Preview {
    RootView()
}
