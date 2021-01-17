//
//  MemorizeApp.swift
//  Memorize
//
//  Created by NobleActivity on 16.01.2021.
//

import SwiftUI

@main
struct MemorizeApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: EmojiMemoryGame())
        }
    }
}
