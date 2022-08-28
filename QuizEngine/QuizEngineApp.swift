//
//  QuizEngineApp.swift
//  QuizEngine
//
//  Created by Yuri Chaves on 28/08/22.
//

import SwiftUI

@main
struct QuizEngineApp: App {
    var body: some Scene {
        WindowGroup {
            SingleAnswerQuestion(
                title: "1 of 3",
                question: "Who will be the president of Brazil?",
                options: ["Lula", "Bozo", "Amoedo", "Marina Silva"],
                selection: {_ in}
            )
        }
    }
}
