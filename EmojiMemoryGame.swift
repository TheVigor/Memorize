//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by NobleActivity on 17.01.2021.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    @Published private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
        
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis: Array<String> = ["👻","🎃", "🕷"]
        return MemoryGame<String>(numberOfPairsOfCards: Int.random(in: 2...5)) { pairIndex in
            return emojis[pairIndex % emojis.count]
        }
    }
    
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK - Intents
    
    func chooseCard(card: MemoryGame<String>.Card) {
        objectWillChange.send()
        model.choose(card: card)
    }
}
