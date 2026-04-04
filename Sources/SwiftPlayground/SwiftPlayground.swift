// The Swift Programming Language
// https://docs.swift.org/swift-book



import Foundation



func askQuestions (vocabulary: [[String]], englishWord: [String], questionNumber: Int) -> Bool {
    // Show the question.
    let shuffledQuestions = vocabulary[questionNumber].shuffled()

    // Prints the question 

    
    while true {
    // Present possible answers.
    print("How do you say \(englishWord[questionNumber]) in spanish?")
    print("1: \(shuffledQuestions[0]). 2: \(shuffledQuestions[1]). 3: \(shuffledQuestions[2]). 4: \(shuffledQuestions[3]).")
        if let response = readLine(), let intResponse = Int(response) {
        if shuffledQuestions[intResponse-1] == vocabulary[questionNumber][0] {
            print("Correct")
            return true
        } else {
            print("Incorrect, the correct answer was \(vocabulary[questionNumber][0])")
            return false
        }
        
    } else {
        print("Please enter a number the correlates to a response")
    }
    }
    
}


@main
struct SwiftPlayground {
    static func main() {
        
        // Costants and variables.
        /// The vocabulary to test the user on
        /// Each inner array contains the the correct answer in spanish, and then three incorrect answers.
        let vocabulary = [
            ["Hola", "Bonjour", "Gracias", "Buenas tardes"],
            ["Adiós", "Sabado", "Mayo", "Gracias"], 
            ["Gracias", "Bonjour", "Hola", "Salud "],
            ["¿Cómo está?", "No entiendo", "¡Buen provecho!", "Gracias"],
            ["negra", "Morado", "Blanco", "Azul"],
        ]

        /// Contains the english traslation of the correct answer.
        let englishWord: [String] = ["Hello", "Goodbye", "Thank you", "How are you?", "Black"]

        var askingQuestions = true

        var questionNumber = 0

        var correctQuestions = 0

        var incorrectQuestions: [Int] = []

        while askingQuestions == true {
            if questionNumber == 9 {
                askingQuestions = false
            }
            let correctAwnser = askQuestions(vocabulary: vocabulary, englishWord: englishWord, questionNumber: questionNumber)
            if correctAwnser == true {
                correctQuestions = correctQuestions + 1
            } else {
                incorrectQuestions.append(1)
            }
            questionNumber = questionNumber + 1
        }
        
        print(incorrectQuestions)
    }
}