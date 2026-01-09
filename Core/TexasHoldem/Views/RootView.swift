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
            }
            .padding()
        }
    }
}

#Preview {
    RootView()
}
