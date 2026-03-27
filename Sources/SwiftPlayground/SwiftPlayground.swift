// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

@main
struct SwiftPlayground {
    static func main() {
        
        // Costants and variables.
        /// The vocabulary to test the user on
        /// Each inner array contains the the correct answer in spanish, and then three incorrect answers.
        var vocabulary = [
            ["Hola", "Bonjour", "Gracias", "Buenas tardes"],
            ["Adiós", "Sabado", "Mayo", "Gracias"], 
            ["Gracias", "Bonjour", "Hola", "Salud "],
            ["¿Cómo está?", "No entiendo", "¡Buen provecho!", "Gracias"],
            ["negra", "Morado", "Blanco", "Azul"],
        ]

        /// Contains the english traslation of the correct answer.
        let englishWord: [String] = ["Hello", "Goodbye", "Thank you", "How are you?", "Black"]



        /// The indices of the questions that the user got wrong.
        var incorrectIndices: [Int] = []

        /// The number of questions that the user got wrong first time wrong
        var incorrectCount = 0

        /// The number of question the the user got right
        var count = 0

        /// The english words index numbers
        var questionNumber = 0
        
        print("This code runs")

        // Loop until all the vocabulary questions have been asked.
        vocabulary.forEach { array in
            
            // Show the question.
            let shuffledQuestions = array.shuffled()

            // Prints the question 
            print("How do you say \(englishWord[questionNumber]) in spanish?")

            // Present possible answers.
            print("1: \(shuffledQuestions[0]). 2: \(shuffledQuestions[1]). 3: \(shuffledQuestions[2]). 4: \(shuffledQuestions[3]).")

            // Check the if the user guessed the correct answer.
            if let response = readLine(), let intResponse = Int(response) {
                if shuffledQuestions[intResponse-1] == array[0] {
                    print("Correct")
                } else {
                    print("Incorrect, the correct answer was \(array[0])")
                    vocabulary.append(array)
                }
                


                // If not, make a note of the question to ask again later.

                questionNumber = questionNumber + 1
            }
        }
    print("You got them all right, congratulations!")

    }
}