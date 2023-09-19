//
//  ContentView.swift
//  CordleClone
//
//  Created by Emma Goldberg-Keller on 9/15/23.
//

import SwiftUI

struct ContentView: View {
    
   @State private var userGuesses: Int = 0
    
    
    // change word here to whatever cat-themed word you like for the user to guess here!
    // (five letters only though)
    @State private var secretWord: String = "CREAM"
    
    
   // ideas: CATTY, CLAWS, FURRY, colors of cats like WHITE, BLACK, TABBY, KITTY

    
    @State private var gameOver:Bool = false
    
    @State private var userGuessWord:String = ""
    @State private var userCharOne = ""
    @State private var userCharTwo = ""
    @State private var userCharThree = ""
    @State private var userCharFour = ""
    @State private var userCharFive = ""
    @State private var userCharSix = ""
    @State private var userCharSeven = ""
    @State private var userCharEight = ""
    @State private var userCharNine = ""
    @State private var userCharTen = ""
    @State private var userCharEleven = ""
    @State private var userCharTwelve = ""
    @State private var userCharThirteen = ""
    @State private var userCharFourteen = "";
    @State private var userCharFifteen = ""
    @State private var userCharSixteen = ""
    @State private var userCharSeventeen = ""
    @State private var userCharEighteen = ""
    @State private var userCharNineteen = ""
    @State private var userCharTwenty = ""
    @State private var userCharTwentyOne = ""
    @State private var userCharTwentyTwo = ""
    @State private var userCharTwentyThree = ""
    @State private var userCharTwentyFour = ""
    @State private var userCharTwentyFive = ""
    @State private var userCharTwentySix = ""
    @State private var userCharTwentySeven = ""
    @State private var userCharTwentyEight = ""
    @State private var userCharTwentyNine = ""
    @State private var userCharThirty = ""
    
    // till userChar30 = "
    // since there's a total of thirty characters (6 rows ~ 5 characters each)

    
    // initalize all rows to gray
    @State public var colorsRowOne = [Color.gray,
                        Color.gray,
                        Color.gray,
                        Color.gray,
                        Color.gray]
    @State private var colorsRowTwo = [Color.gray,
                        Color.gray,
                        Color.gray,
                        Color.gray,
                        Color.gray]
    
    @State private var colorsRowThree =
    
    [Color.gray,
     Color.gray,
     Color.gray,
     Color.gray,
     Color.gray]
    
    @State private var colorsRowFour = [
        Color.gray,
        Color.gray,
        Color.gray,
        Color.gray,
        Color.gray
    
    
    ]
    
    @State private var colorsRowFive = [
    
        Color.gray,
        Color.gray,
        Color.gray,
        Color.gray,
        Color.gray
    
    
    ]
    
    
    @State private var colorsRowSix = [
    
        Color.gray,
        Color.gray,
        Color.gray,
        Color.gray,
        Color.gray
    
    
    
    ]
    
    
    
    
    func checkGuess() {
        
        
        
        
        // increase user guess by one
       
        
        userGuesses = userGuesses + 1
        
        // convert the user's guess to an array
        
        
        if (userGuesses == 1){
            
            let characterOne  = Array(userGuessWord)[0]
            userCharOne = String(characterOne)
            
            let characterTwo = Array(userGuessWord)[1]
            userCharTwo = String(characterTwo)
            
            let characterThree = Array(userGuessWord)[2]
            userCharThree = String(characterThree)
            
            let characterFour = Array(userGuessWord)[3]
            userCharFour = String(characterFour)
            
            let characterFive =
            Array(userGuessWord)[4]
            userCharFive = String(characterFive)
            
            
            
            
            // see if character is in array
            if (Array(secretWord).contains(characterOne)) {
                
                if (Array(secretWord)[0] == characterOne) {
                    
                   
                    colorsRowOne[0] = Color.green
                    
                    
                }
                
                
                else {
                    
                    let numTimes =  secretWord.filter{ $0 == characterOne }.count
                    let numTimesTwo = userGuessWord.filter{ $0 == characterOne}.count
                    
                    
                    if (numTimes == numTimesTwo) {
                        
                        
                        colorsRowOne[0] = Color.yellow
                        
                    }
                    
                    
                    
                    
                    if (numTimes > numTimesTwo) {
                        
                        // beget
                        // fatde
                        colorsRowOne[0] = Color.yellow
                        
                        
                        
                    }
                    
                    
                    if (numTimes < numTimesTwo) {
                        
                        // only highlight first instance of character IF the character only appears once
                        // and only if character NEVER appears in the correct position in the word
                       
                        
                        
                    let indexes = [0, 1, 2, 3, 4]
                        
                        
                    var count = 0
                        
                        for index in indexes {
                            
                            if (Array(userGuessWord)[index] == characterOne) {
                                
                                if (Array(secretWord)[index] == characterOne) {
                                    
                                    count = count + 1
                                }
                                
                            }
                            
                            
                        }
                        
                        if (count == 0) {
                            // the letter doesn't appear in the correct position at all, but is in the word
                            // is this the first instance of the character?
                        let characters = Array(userGuessWord)
                            let i = characters.firstIndex(of: characterOne)
                            if (i == 0) {
                                
                                colorsRowOne[0] = Color.yellow
                                
                            }
                            
                            
                        }
                    
                        
                        
                        
                        
                        
                        
                        
                        
                
                        
                        
                        
                    }
                    
                    
                }
            }
            
            
            
            
            
            
            
            
            
            
            
            if (Array(secretWord).contains(characterTwo)) {
                
                
                
                if (Array(secretWord)[1] == characterTwo) {
                    
                    colorsRowOne[1] = Color.green
                    
                }
                
                else {
                    let numTimes =  secretWord.filter{ $0 == characterTwo }.count
                    let numTimesTwo = userGuessWord.filter{ $0 == characterTwo}.count
                    
                    
                    if (numTimes == numTimesTwo) {
                        
                        colorsRowOne[1] = Color.yellow
                        
                        
                        
                    }
                    
                    
                    if (numTimes > numTimesTwo) {
                        
                        // beget
                        // fated
                        colorsRowOne[1] = Color.yellow
                        
                        
                        
                    }
                    
                    
                    if (numTimes < numTimesTwo) {
                        
                        // implement the same logic as for characterOne, only with characterTwo
                        
                        let indexes = [0, 1, 2, 3, 4]
                            
                            
                        var count = 0
                            
                            for index in indexes {
                                
                                if (Array(userGuessWord)[index] == characterTwo) {
                                    
                                    if (Array(secretWord)[index] == characterTwo) {
                                        
                                        count = count + 1
                                    }
                                    
                                }
                                
                                
                            }
                        
                        if (count == 0) {
                            
                           
                            
                            let characters = Array(userGuessWord)
                                let i = characters.firstIndex(of: characterTwo)
                                if (i == 1 ) {
                                    
                                    colorsRowOne[1] = Color.yellow
                                    
                                }
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                        }
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                    }
                    
                }}
                              
                        
                    
            
            if (Array(secretWord).contains(characterThree)) {
                
                
                if (Array(secretWord)[2] == characterThree) {
                    
                    colorsRowOne[2] = Color.green
                }
                
                else {
                    
                    // does letter appear twice in the guessed word?
                    
                    
                    let numTimes =  secretWord.filter{ $0 == characterThree }.count
                     let numTimesTwo = userGuessWord.filter{ $0 == characterThree}.count
                    
                    
                    if (numTimes == numTimesTwo) {
                        
                        
                        colorsRowOne[2] = Color.yellow
                        
                    }
                    
                    
                    if (numTimes > numTimesTwo) {
                        
                        // beget
                        // fated
                        colorsRowOne[2] = Color.yellow
                        
                        
                        
                    }
                    
                    
                    
                    if (numTimes < numTimesTwo) {
                        
                        
                        let indexes = [0, 1, 2, 3, 4]
                            
                            
                        var count = 0
                        
                        
                        for index in indexes {
                            
                            if (Array(userGuessWord)[index] == characterThree) {
                                
                                if (Array(secretWord)[index] == characterThree) {
                                    
                                    count = count + 1
                                }
                                
                            }
                            
                            
                        }
                        if (count == 0) {
                            
                            // is this the first instance of the letter?
                            
                          
                            
                            let characters = Array(userGuessWord)
                                let i = characters.firstIndex(of: characterThree)
                                if (i == 2 ) {
                                    
                                    colorsRowOne[2] = Color.yellow
                                    
                                }

                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                        }
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                    }
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                
                    
                }
                
                
                
            } // if Array.contains()
            
            
            
            if (Array(secretWord).contains(characterFour)) {
                
                
                if (Array(secretWord)[3] == characterFour) {
                    
                    colorsRowOne[3] = Color.green
                }
                
                else {
                    
                    let numTimes =  secretWord.filter{ $0 == characterFour }.count
                     let numTimesTwo = userGuessWord.filter{ $0 == characterFour}.count
                    
                    
                    if (numTimes == numTimesTwo) {
                        
                        
                        colorsRowOne[3] = Color.yellow
                        
                        
                    }
                    
                    
                    if (numTimes > numTimesTwo) {
                        
                        
                        colorsRowOne[3] = Color.yellow
                    }
                    
                    
                    
                    if (numTimes < numTimesTwo) {
                        
                        
                        let indexes = [0, 1, 2, 3, 4]
                            
                            
                        var count = 0
                        
                        
                        for index in indexes {
                            
                            if (Array(userGuessWord)[index] == characterFour) {
                                
                                if (Array(secretWord)[index] == characterFour) {
                                    
                                    count = count + 1
                                }
                                
                            }
                            
                            
                        }
                        
                        if (count == 0) {
                            
                            
                            let characters = Array(userGuessWord)
                            let i = characters.firstIndex(of: characterFour)
                            if (i == 3 ) {
                                
                                colorsRowOne[3] = Color.yellow
                                
                            }
                            
                        }
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                    }
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                }
                
                
                
            }
            
            
            
            if (Array(secretWord).contains(characterFive)) {
                
                
                if (Array(secretWord)[4] == characterFive) {
                    
                    colorsRowOne[4] = Color.green
                }
                
                else {
                    
                    
                    
                    let numTimes =  secretWord.filter{ $0 == characterFive }.count
                     let numTimesTwo = userGuessWord.filter{ $0 == characterFive}.count
                    
                    
                    if (numTimes == numTimesTwo) {
                        
                        
                        colorsRowOne[4] = Color.yellow
                        
                        
                    }
                    
                    
                    if (numTimes > numTimesTwo) {
                        
                        
                        colorsRowOne[4] = Color.yellow
                    }
                    
                    
                    if (numTimes < numTimesTwo) {
                        
                        
                        
                        let indexes = [0, 1, 2, 3, 4]
                            
                            
                        var count = 0
                        
                        
                        for index in indexes {
                            
                            if (Array(userGuessWord)[index] == characterFive) {
                                
                                if (Array(secretWord)[index] == characterFive) {
                                    
                                    count = count + 1
                                }
                                
                            }
                            
                            
                        }
                        
                        
                        
                        if (count == 0) {
                            
                            
                            let characters = Array(userGuessWord)
                            let i = characters.firstIndex(of: characterFive)
                            if (i == 4 ) {
                                
                                colorsRowOne[4] = Color.yellow
                                
                            }
                            
                        }
                            
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                    }
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                }
                
                
                
            }
            
            
            
            
            
            
            
            
            
            
           
            
            
        // check if the game is over
           if (colorsRowOne == [Color.green, Color.green, Color.green, Color.green, Color.green]) {
                
                
                
                //the game is over
                
                
               gameOver = true
                
                
              }
                    
            
            
            
            
            
            
                
            } // end if userGuesses=1
            
            
        
        if (userGuesses == 2) {
            
            // generate colors for the second row
            
            let characterSix  = Array(userGuessWord)[0]
           userCharSix = String(characterSix)
            
            let characterSeven =
               Array(userGuessWord)[1]
            userCharSeven =
                String(characterSeven)
            
            let characterEight =
                Array(userGuessWord)[2]
            userCharEight =
                String(characterEight)
            
            let characterNine =
                Array(userGuessWord)[3]
            userCharNine = String(characterNine)
            
            let characterTen = Array(userGuessWord)[4]
            userCharTen = String(characterTen)
            
            
            // CHECK characterSix
            
            if (Array(secretWord).contains(characterSix)) {
                
                
                
                if (Array(secretWord)[0] == characterSix) {
                    
                    
                    colorsRowTwo[0] = Color.green
                    
                    
                }
                
                else {
                    
                    
                    let numTimes =  secretWord.filter{ $0 == characterSix }.count
                     let numTimesTwo = userGuessWord.filter{ $0 == characterSix}.count
                    
                    
                    if (numTimes == numTimesTwo) {
                        
                        
                        colorsRowTwo[0] = Color.yellow
                        
                        
                    }
                    
                    
                    if (numTimes > numTimesTwo) {
                        
                        
                        colorsRowTwo[0] = Color.yellow
                    }
                    
                    
                    if (numTimes < numTimesTwo) {
                        
                        let indexes = [0, 1, 2, 3, 4]
                            
                            
                        var count = 0
                        
                        
                        for index in indexes {
                            
                            if (Array(userGuessWord)[index] == characterSix) {
                                
                                if (Array(secretWord)[index] == characterSix) {
                                    
                                    count = count + 1
                                }
                                
                            }
                            
                            
                        }
                        if (count == 0) {
                            
                            
                            let characters = Array(userGuessWord)
                            let i = characters.firstIndex(of: characterSix)
                            if (i == 0 ) {
                                
                                colorsRowTwo[0] = Color.yellow
                                
                            }
                            
                        }
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                    }
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
        
                    
                }
                
                
                
            }
            
            
            
            if (Array(secretWord).contains(characterSeven)) {
                
                
                
                if (Array(secretWord)[1] == characterSeven) {
                    
                    
                    colorsRowTwo[1] = Color.green
                    
                    
                }
                
                else {
                    
                    
                    let numTimes =  secretWord.filter{ $0 == characterSeven }.count
                     let numTimesTwo = userGuessWord.filter{ $0 == characterSeven}.count
                    
                    if (numTimes == numTimesTwo) {
                        
                        
                        colorsRowTwo[1] = Color.yellow
                        
                        
                    }
                    
                    
                    if (numTimes > numTimesTwo) {
                        
                        
                        colorsRowTwo[1] = Color.yellow
                    }
                    
                    
                    if (numTimes < numTimesTwo) {
                        
                        let indexes = [0, 1, 2, 3, 4]
                            
                            
                        var count = 0
                        
                        
                        for index in indexes {
                            
                            if (Array(userGuessWord)[index] == characterSeven) {
                                
                                if (Array(secretWord)[index] == characterSeven) {
                                    
                                    count = count + 1
                                }
                                
                            }
                            
                            
                        }
                        
                        if (count == 0) {
                            
                            
                            let characters = Array(userGuessWord)
                            let i = characters.firstIndex(of: characterSeven)
                            if (i == 1 ) {
                                
                                colorsRowTwo[1] = Color.yellow
                                
                            }
                            
                        }
                        
                        
                        
                        
                        
                    }
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                }
                
                
                
                
                
                
            }
            
            
            if (Array(secretWord).contains(characterEight)) {
                
                
                
                if (Array(secretWord)[2] == characterEight) {
                    
                    
                    colorsRowTwo[2] = Color.green
                    
                    
                }
                
                else {
                    
                    
                    let numTimes =  secretWord.filter{ $0 == characterEight }.count
                     let numTimesTwo = userGuessWord.filter{ $0 == characterEight}.count
                    
                    if (numTimes == numTimesTwo) {
                        
                        
                        colorsRowTwo[2] = Color.yellow
                        
                        
                    }
                    
                    
                    if (numTimes > numTimesTwo) {
                        
                        
                        colorsRowTwo[2] = Color.yellow
                    }
                    
                    
                    
                    if (numTimes < numTimesTwo) {
                        
                        
                        
                        
                        let indexes = [0, 1, 2, 3, 4]
                            
                            
                        var count = 0
                        
                        
                        for index in indexes {
                            
                            if (Array(userGuessWord)[index] == characterEight) {
                                
                                if (Array(secretWord)[index] == characterEight) {
                                    
                                    count = count + 1
                                }
                                
                            }
                            
                            
                        }
                        
                        
                        if (count == 0) {
                            
                            
                            let characters = Array(userGuessWord)
                            let i = characters.firstIndex(of: characterEight)
                            if (i == 2 ) {
                                
                                colorsRowTwo[2] = Color.yellow
                                
                            }
                            
                        }
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                    }
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
            
                    
                    
                    
                    
                    
                    
                    
                    
                    
                }
                
                
            }
            
            
            // CHARACTERNiNE
            
            if (Array(secretWord).contains(characterNine)) {
                
                
                if (Array(secretWord)[3] == characterNine) {
                    
                    
                    colorsRowTwo[3] = Color.green
                    
                    
                }
                
                
                else {
                    
                    
                    
                    let numTimes =  secretWord.filter{ $0 == characterNine }.count
                     let numTimesTwo = userGuessWord.filter{ $0 == characterNine}.count
                    
                    if (numTimes == numTimesTwo) {
                        
                        
                        colorsRowTwo[3] = Color.yellow
                        
                        
                    }
                    
                    
                    if (numTimes > numTimesTwo) {
                     
                        
                        colorsRowTwo[3] = Color.yellow
                    }
                    
                    
                    
                    
                    if (numTimes < numTimesTwo)
                    {
                        
                        
                        let indexes = [0, 1, 2, 3, 4]
                            
                            
                        var count = 0
                        
                        
                        for index in indexes {
                            
                            if (Array(userGuessWord)[index] == characterNine) {
                                
                                if (Array(secretWord)[index] == characterNine) {
                                    
                                    count = count + 1
                                }
                                
                            }
                            
                            
                        }
                        
                        
                        if (count == 0) {
                            
                            
                            let characters = Array(userGuessWord)
                            let i = characters.firstIndex(of: characterNine)
                            if (i == 3 ) {
                                
                                colorsRowTwo[3] = Color.yellow
                                
                            }
                            
                        }
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                    }
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                }
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
            }
            
            
            
            // charACTERTen
            
            
            if (Array(secretWord).contains(characterTen)) {
                
                
                if (Array(secretWord)[4] == characterTen) {
                    
                    
                    colorsRowTwo[4] = Color.green
                    
                    
                }
                
                
                
                else {
                    
                    
                    let numTimes =  secretWord.filter{ $0 == characterTen }.count
                     let numTimesTwo = userGuessWord.filter{ $0 == characterTen}.count
                    
                    if (numTimes == numTimesTwo) {
                        
                        
                        colorsRowTwo[4] = Color.yellow
                        
                        
                    }
                    
                    
                    if (numTimes > numTimesTwo) {
                     
                        
                        colorsRowTwo[4] = Color.yellow
                    }
                    
                    
                    if (numTimes < numTimesTwo) {
                        
                        
                        let indexes = [0, 1, 2, 3, 4]
                            
                            
                        var count = 0
                        
                        
                        for index in indexes {
                            
                            if (Array(userGuessWord)[index] == characterTen) {
                                
                                if (Array(secretWord)[index] == characterTen) {
                                    
                                    count = count + 1
                                }
                                
                            }
                            
                            
                        }
                        
                        
                        if (count == 0) {
                            
                            
                            let characters = Array(userGuessWord)
                            let i = characters.firstIndex(of: characterTen)
                            if (i == 4 ) {
                                
                                colorsRowTwo[4] = Color.yellow
                                
                            }
                            
                        }
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                    }
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                }
                
                
                
            }
            
            
            
            
            
            
            
            
            
            
            
            
        // check if the game is over
            if (colorsRowTwo == [Color.green, Color.green, Color.green, Color.green, Color.green]) {
                
                
                
                // the game is over
                
                
                gameOver = true
                
                
            }
            
        
            
            
        }// end of if userGuesses=2
        
        
        if (userGuesses == 3){
            
         
            
            let characterEleven  = Array(userGuessWord)[0]
           userCharEleven = String(characterEleven)
            
            let characterTwelve =
               Array(userGuessWord)[1]
            userCharTwelve =
                String(characterTwelve)
            
            let characterThirteen =
                Array(userGuessWord)[2]
            userCharThirteen =
                String(characterThirteen)
            
            let characterFourteen =
                Array(userGuessWord)[3]
            userCharFourteen = String(characterFourteen)
            
            let characterFifteen = Array(userGuessWord)[4]
            userCharFifteen = String(characterFifteen)
            
            
            
            
            // characterEleven
            
            if (Array(secretWord).contains(characterEleven)) {
                
                
                if (Array(secretWord)[0] == characterEleven) {
                    
                    
                    colorsRowThree[0] = Color.green
                    
                    
                }
                
                
                
                else {
                    
                    let numTimes =  secretWord.filter{ $0 == characterEleven }.count
                     let numTimesTwo = userGuessWord.filter{ $0 == characterEleven}.count
                    
                    if (numTimes == numTimesTwo) {
                        
                        
                        colorsRowThree[0] = Color.yellow
                        
                        
                    }
                    
                    
                    if (numTimes > numTimesTwo) {
                     
                        
                        colorsRowThree[0] = Color.yellow
                    }
                    
                    
                    if (numTimes < numTimesTwo) {
                        
                        let indexes = [0, 1, 2, 3, 4]
                            
                            
                        var count = 0
                        
                        
                        for index in indexes {
                            
                            if (Array(userGuessWord)[index] == characterEleven) {
                                
                                if (Array(secretWord)[index] == characterEleven) {
                                    
                                    count = count + 1
                                }
                                
                            }
                            
                            
                        }
                       
                        
                        if (count == 0) {
                            
                            
                            let characters = Array(userGuessWord)
                            let i = characters.firstIndex(of: characterEleven)
                            if (i == 0 ) {
                                
                                colorsRowThree[0] = Color.yellow
                                
                            }
                            
                        }
                        
                    
                        
                        
                        
                        
                        
                        
                        
                        
                    }
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                }
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
            } // end of characterEleven
            
            
            
            
            // characterTwelve

            
            if (Array(secretWord).contains(characterTwelve)) {
                
                
                if (Array(secretWord)[1] == characterTwelve) {
                    
                    
                    colorsRowThree[1] = Color.green
                    
                    
                }
                
                
                
                else {
                    
                    
                    let numTimes =  secretWord.filter{ $0 == characterTwelve }.count
                     let numTimesTwo = userGuessWord.filter{ $0 == characterTwelve}.count
                    
                    
                    if (numTimes == numTimesTwo) {
                        
                        
                        colorsRowThree[1] = Color.yellow
                        
                        
                    }
                    
                    
                    if (numTimes > numTimesTwo) {
                     
                        
                        colorsRowThree[1] = Color.yellow
                        
                    }
                    
                    
                    if (numTimes < numTimesTwo) {
                        
                        
                        let indexes = [0, 1, 2, 3, 4]
                            
                            
                        var count = 0
                        
                        
                        for index in indexes {
                            
                            if (Array(userGuessWord)[index] == characterTwelve) {
                                
                                if (Array(secretWord)[index] == characterTwelve) {
                                    
                                    count = count + 1
                                }
                                
                            }
                            
                            
                        }
                        
                        
                        
                        if (count == 0) {
                            
                            
                            let characters = Array(userGuessWord)
                            let i = characters.firstIndex(of: characterTwelve)
                            if (i == 1 ) {
                                
                                colorsRowThree[1] = Color.yellow
                                
                            }
                            
                        }
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                    }
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                }
                
            }
            
            
            
      
            // characterThirteen
            
            
            if (Array(secretWord).contains(characterThirteen)) {
                
                
                if (Array(secretWord)[2] == characterThirteen) {
                    
                    
                    colorsRowThree[2] = Color.green
                    
                    
                }
                
                
                
                else {
                    
                    // num times
                    
                    let numTimes =  secretWord.filter{ $0 == characterThirteen }.count
                     let numTimesTwo = userGuessWord.filter{ $0 == characterThirteen}.count
               
                    
                    if (numTimes == numTimesTwo) {
                        
                        
                        colorsRowThree[2] = Color.yellow
                        
                        
                    }
                    
                    
                    if (numTimes > numTimesTwo) {
                     
                        
                        colorsRowThree[2] = Color.yellow
                        
                    }
                    
                    if (numTimes < numTimesTwo) {
                        
                        
                        
                        
                        let indexes = [0, 1, 2, 3, 4]
                        
                        
                        var count = 0
                        
                        
                        for index in indexes {
                            
                            if (Array(userGuessWord)[index] == characterThirteen) {
                                
                                if (Array(secretWord)[index] == characterThirteen) {
                                    
                                    count = count + 1
                                }
                                
                            }
                            
                            
                        }
                        
                        
                        if (count == 0) {
                            
                            
                            let characters = Array(userGuessWord)
                            let i = characters.firstIndex(of: characterThirteen)
                            if (i == 2) {
                                
                                colorsRowThree[2] = Color.yellow
                                
                            }
                            
                        }
                        
                    }
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                }
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
            }
            
            
            
            
            
            
            
            
            
            
            // characterFourteen
            
            
            if (Array(secretWord).contains(characterFourteen)) {
                
                
                if (Array(secretWord)[3] == characterFourteen) {
                    
                    
                    colorsRowThree[3] = Color.green
                    
                    
                }
                
                else {
                    
                    // num times
                    
                    let numTimes =  secretWord.filter{ $0 == characterFourteen }.count
                     let numTimesTwo = userGuessWord.filter{ $0 == characterFourteen}.count
               
                    
                    if (numTimes == numTimesTwo) {
                        
                        
                        colorsRowThree[3] = Color.yellow
                        
                        
                    }
                    
                    
                    if (numTimes > numTimesTwo) {
                     
                        
                        colorsRowThree[3] = Color.yellow
                        
                    }
                    
                    
                    if (numTimes < numTimesTwo) {
                        
                        
                        let indexes = [0, 1, 2, 3, 4]
                        
                        
                        var count = 0
                        
                        
                        for index in indexes {
                            
                            if (Array(userGuessWord)[index] == characterFourteen) {
                                
                                if (Array(secretWord)[index] == characterFourteen) {
                                    
                                    count = count + 1
                                }
                                
                            }
                            
                            
                        }
                        
                        
                        if (count == 0) {
                            
                            
                            let characters = Array(userGuessWord)
                            let i = characters.firstIndex(of: characterThirteen)
                            if (i == 3) {
                                
                                colorsRowThree[3] = Color.yellow
                                
                            }
                            
                        }
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                    }
                    
                    
                    
                    
                    
                
                    
                    
                    
                    
                    
                    
                    
                    
                }
                
                
                
                
                
                
                
                
                
            }
            
            
            
            
            

            
            // characterFifteen
            
            if (Array(secretWord).contains(characterFifteen)) {
                
                
                if (Array(secretWord)[4] == characterFifteen) {
                    
                    
                    colorsRowThree[4] = Color.green
                    
                    
                }
                
                else {
                    
                    
                    // num times
                    
                    let numTimes =  secretWord.filter{ $0 == characterFifteen }.count
                     let numTimesTwo = userGuessWord.filter{ $0 == characterFifteen}.count
                    
                    
                    if (numTimes == numTimesTwo) {
                        
                        
                        colorsRowThree[4] = Color.yellow
                        
                        
                    }
                    
                    
                    if (numTimes > numTimesTwo) {
                     
                        
                        colorsRowThree[4] = Color.yellow
                        
                    }
                    
                    
                    if (numTimes < numTimesTwo) {
                        
                        
                        
                        let indexes = [0, 1, 2, 3, 4]
                        
                        
                        var count = 0
                        
                        
                        for index in indexes {
                            
                            if (Array(userGuessWord)[index] == characterFifteen) {
                                
                                if (Array(secretWord)[index] == characterFifteen) {
                                    
                                    count = count + 1
                                }
                                
                            }
                            
                            
                        }
                        
                        
                        if (count == 0) {
                            
                            
                            let characters = Array(userGuessWord)
                            let i = characters.firstIndex(of: characterFifteen)
                            if (i == 4) {
                                
                                colorsRowThree[4] = Color.yellow
                                
                            }
                            
                        }
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                    }
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                }
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
            }
            
            
            
            
            if (colorsRowThree == [Color.green, Color.green, Color.green, Color.green, Color.green]) {
                
                
                
                // the game is over
                
                
                gameOver = true
                
                
            }
            
            
            
        } // end of if userGuesses=3
        
        
        
        
        
        if (userGuesses == 4) {
            
            
            let characterSixteen  = Array(userGuessWord)[0]
           userCharSixteen = String(characterSixteen)
            
           
            let characterSeventeen  = Array(userGuessWord)[1]
           userCharSeventeen = String(characterSeventeen)
            
            
            
            let characterEighteen  = Array(userGuessWord)[2]
           userCharEighteen = String(characterEighteen)
            
            
            let characterNineteen  = Array(userGuessWord)[3]
           userCharNineteen = String(characterNineteen)
            
            
            let characterTwenty  = Array(userGuessWord)[4]
           userCharTwenty = String(characterTwenty)
            
            
            
            // characterSixteen
            
            if (Array(secretWord).contains(characterSixteen)) {
                
                
                
                if (Array(secretWord)[0] == characterSixteen) {
                    
                    
                    colorsRowFour[0] = Color.green
                    
                    
                }
                
                else {
                    
                    
                    // num times
                    
                    let numTimes =  secretWord.filter{ $0 == characterSixteen }.count
                     let numTimesTwo = userGuessWord.filter{ $0 == characterSixteen}.count
                
                    
                    if (numTimes == numTimesTwo) {
                        
                        
                        colorsRowFour[0] = Color.yellow
                        
                        
                    }
                    
                    
                    if (numTimes > numTimesTwo) {
                     
                        
                        colorsRowFour[0] = Color.yellow
                        
                    }
                    
                    if (numTimes < numTimesTwo) {
                        
                        
                        let indexes = [0, 1, 2, 3, 4]
                        
                        
                        var count = 0
                        
                        
                        for index in indexes {
                            
                            if (Array(userGuessWord)[index] == characterSixteen) {
                                
                                if (Array(secretWord)[index] == characterSixteen) {
                                    
                                    count = count + 1
                                }
                                
                            }
                            
                            
                        }
                        
                        if (count == 0) {
                            
                            
                            let characters = Array(userGuessWord)
                            let i = characters.firstIndex(of: characterSixteen)
                            if (i == 0) {
                                
                                colorsRowFour[0] = Color.yellow
                                
                            }
                            
                        }
                        
                        
                        
                        
                    }
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                }
                
            } // END OF Array(contains)
            
            
            
            
            
            // characterSeventeen
            
            
            if (Array(secretWord).contains(characterSeventeen)) {
                
                
                
                if (Array(secretWord)[1] == characterSeventeen) {
                    
                    
                    colorsRowFour[1] = Color.green
                    
                    
                }
                
                else {
                    
                    // num times
                    
                    let numTimes =  secretWord.filter{ $0 == characterSeventeen }.count
                     let numTimesTwo = userGuessWord.filter{ $0 == characterSeventeen}.count
                
                    
                    if (numTimes == numTimesTwo) {
                        
                        
                        colorsRowFour[1] = Color.yellow
                        
                        
                    }
                    
                    
                    if (numTimes > numTimesTwo) {
                     
                        
                        colorsRowFour[1] = Color.yellow
                        
                    }
                    
                    
                    if (numTimes < numTimesTwo) {
                        
                        
                        
                        
                        let indexes = [0, 1, 2, 3, 4]
                        
                        
                        var count = 0
                        
                        
                        for index in indexes {
                            
                            if (Array(userGuessWord)[index] == characterSeventeen) {
                                
                                if (Array(secretWord)[index] == characterSeventeen) {
                                    
                                    count = count + 1
                                }
                                
                            }
                            
                            
                        }
                        
                        
                        if (count == 0) {
                            
                            
                            let characters = Array(userGuessWord)
                            let i = characters.firstIndex(of: characterSeventeen)
                            if (i == 1) {
                                
                                colorsRowFour[1] = Color.yellow
                                
                            }
                            
                        }
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                    }
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                }
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
            } // end of Arraycontains
            
            
            
            // characterEighteen
            
            if (Array(secretWord).contains(characterEighteen)) {
                
                
                if (Array(secretWord)[2] == characterEighteen) {
                    
                    
                    colorsRowFour[2] = Color.green
                    
                    
                }
                
                else {
                    
                    // num times
                    
                    let numTimes =  secretWord.filter{ $0 == characterEighteen }.count
                     let numTimesTwo = userGuessWord.filter{ $0 == characterEighteen}.count
                
                    
                    
                    if (numTimes == numTimesTwo) {
                        
                        
                        colorsRowFour[2] = Color.yellow
                        
                        
                    }
                    
                    
                    if (numTimes > numTimesTwo) {
                     
                        
                        colorsRowFour[2] = Color.yellow
                        
                    }
                    
                    
                    if (numTimes < numTimesTwo) {
                        
                        
                        let indexes = [0, 1, 2, 3, 4]
                        
                        
                        var count = 0
                        
                        
                        for index in indexes {
                            
                            if (Array(userGuessWord)[index] == characterEighteen) {
                                
                                if (Array(secretWord)[index] == characterEighteen) {
                                    
                                    count = count + 1
                                }
                                
                            }
                            
                            
                        }
                        
                        
                        
                        if (count == 0) {
                            
                            
                            let characters = Array(userGuessWord)
                            let i = characters.firstIndex(of: characterEighteen)
                            if (i == 2) {
                                
                                colorsRowFour[2] = Color.yellow
                                
                            }
                            
                        }
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                    }
                    
                    
                    
                }
                
                
    
                
                
            } // end of ArrayContains
            
            
            
            
            // characterNineteen
            
            if (Array(secretWord).contains(characterNineteen)) {
                
                
                if (Array(secretWord)[3] == characterNineteen) {
                    
                    
                    colorsRowFour[3] = Color.green
                    
                    
                }
                
                else {
                    
                    // num times
                    
                    
                    
                    
                    let numTimes =  secretWord.filter{ $0 == characterNineteen }.count
                     let numTimesTwo = userGuessWord.filter{ $0 == characterNineteen}.count
                
                    
                    
                    if (numTimes == numTimesTwo) {
                        
                        
                        colorsRowFour[3] = Color.yellow
                        
                        
                    }
                    
                    
                    if (numTimes > numTimesTwo) {
                     
                        
                        colorsRowFour[3] = Color.yellow
                        
                    }
                    
                    
                    if (numTimes < numTimesTwo) {
                        
                     // let
                     // then count
                        
                        let indexes = [0, 1, 2, 3, 4]
                        
                        
                        var count = 0
                        
                        
                        for index in indexes {
                            
                            if (Array(userGuessWord)[index] == characterNineteen) {
                                
                                if (Array(secretWord)[index] == characterNineteen) {
                                    
                                    count = count + 1
                                }
                                
                            }
                            
                            
                        }
                        
                        
                        if (count == 0) {
                            
                            
                            let characters = Array(userGuessWord)
                            let i = characters.firstIndex(of: characterNineteen)
                            if (i == 3) {
                                
                                colorsRowFour[3] = Color.yellow
                                
                            }
                            
                        }
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                    }
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                }
                
                
            
                
                
            } // end of Arraycontains
            
            
            
            
            // characterTwenty
            
            if (Array(secretWord).contains(characterTwenty)) {
                
                
                if (Array(secretWord)[4] == characterTwenty) {
                    
                    
                    colorsRowFour[4] = Color.green
                    
                    
                }
                
                else {
                    
                    
                    // num times
                    
                    
                    
                    
                    let numTimes =  secretWord.filter{ $0 == characterTwenty }.count
                     let numTimesTwo = userGuessWord.filter{ $0 == characterTwenty}.count
                
                    
                    
                    if (numTimes == numTimesTwo) {
                        
                        
                        colorsRowFour[4] = Color.yellow
                        
                        
                    }
                    
                    
                    if (numTimes > numTimesTwo) {
                     
                        
                        colorsRowFour[4] = Color.yellow
                        
                    }
                    
                    
                    if (numTimes < numTimesTwo) {
                        
                        // let
                        // then count
                        
                        let indexes = [0, 1, 2, 3, 4]
                        
                        
                        var count = 0
                        
                        
                        for index in indexes {
                            
                            if (Array(userGuessWord)[index] == characterTwenty) {
                                
                                if (Array(secretWord)[index] == characterTwenty) {
                                    
                                    count = count + 1
                                }
                                
                            }
                            
                            
                        }
                        
                        // then count
                        
                        if (count == 0) {
                            
                            
                            let characters = Array(userGuessWord)
                            let i = characters.firstIndex(of: characterTwenty)
                            if (i == 4) {
                                
                                colorsRowFour[4] = Color.yellow
                                
                            }
                            
                        }
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                    }
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                }
                
                
                
                
                
                
                
                
                
                
                
                
                
                
            } // end of Arraycontains
            
            
            
            
            
            
            
            
            
            if (colorsRowFour == [Color.green, Color.green, Color.green, Color.green, Color.green]) {
                
                
                
                // the game is over
                
                
                gameOver = true
                
                
            }
            
            
            
            
            
            
            
            
            
            
        } // end of if userGuesses = 4
        
        
        
        
        
        if (userGuesses == 5) {
            
            
            let characterTwentyOne  = Array(userGuessWord)[0]
           userCharTwentyOne = String(characterTwentyOne)
            
            
            
            let characterTwentyTwo  = Array(userGuessWord)[1]
           userCharTwentyTwo = String(characterTwentyTwo)
            
            
            let characterTwentyThree  = Array(userGuessWord)[2]
           userCharTwentyThree = String(characterTwentyThree)
            
            
            
            let characterTwentyFour = Array(userGuessWord)[3]
           userCharTwentyFour = String(characterTwentyFour)
            
            
            let characterTwentyFive  = Array(userGuessWord)[4]
           userCharTwentyFive = String(characterTwentyFive)
            
            
            
            
            // characterTwentyOne
            
            if (Array(secretWord).contains(characterTwentyOne)) {
                
                
                if (Array(secretWord)[0] == characterTwentyOne) {
                    
                    
                    colorsRowFive[0] = Color.green
                    
                    
                }
                
                else {
                    
                    
                    // numTimes
                    // numTimesTwo
                    
                    let numTimes =  secretWord.filter{ $0 == characterTwentyOne }.count
                     let numTimesTwo = userGuessWord.filter{ $0 == characterTwentyOne}.count
                    
                    
                    if (numTimes == numTimesTwo) {
                        
                        
                        colorsRowFive[0] = Color.yellow
                        
                        
                    }
                    
                    
                    if (numTimes > numTimesTwo) {
                     
                        
                        colorsRowFive[0] = Color.yellow
                        
                    }
                    
                    
                    
                    if (numTimes < numTimesTwo) {
                        
                        // let
                        
                        let indexes = [0, 1, 2, 3, 4]
                        
                        
                        var count = 0
                        
                        
                        for index in indexes {
                            
                            if (Array(userGuessWord)[index] == characterTwentyOne) {
                                
                                if (Array(secretWord)[index] == characterTwentyOne) {
                                    
                                    count = count + 1
                                }
                                
                            }
                            
                            
                        }
                        
                        
                        
                        // count
                        
                        if (count == 0) {
                            
                            
                            let characters = Array(userGuessWord)
                            let i = characters.firstIndex(of: characterTwentyOne)
                            if (i == 0) {
                                
                                colorsRowFive[0] = Color.yellow
                                
                            }
                            
                        }
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                    }
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                }
                
                
            } // end of Arraycontains
            
            
            
            // characterTwentyTwo
            
            
            if (Array(secretWord).contains(characterTwentyTwo)) {
                
                
                if (Array(secretWord)[1] == characterTwentyTwo) {
                    
                    
                    colorsRowFive[1] = Color.green
                    
                    
                }
                
                else {
                    
                    
                    // numTimes
                    // numTimesTwo
                    
                    let numTimes =  secretWord.filter{ $0 == characterTwentyTwo }.count
                     let numTimesTwo = userGuessWord.filter{ $0 == characterTwentyTwo}.count
                    
                    
                    
                    if (numTimes == numTimesTwo) {
                        
                        
                        colorsRowFive[1] = Color.yellow
                        
                        
                    }
                    
                    
                    if (numTimes > numTimesTwo) {
                     
                        
                        colorsRowFive[1] = Color.yellow
                        
                    }
                    
                    
                    
                    if (numTimes < numTimesTwo) {
                        
                        // let
                        
                        
                        let indexes = [0, 1, 2, 3, 4]
                        
                        
                        var count = 0
                        
                        
                        for index in indexes {
                            
                            if (Array(userGuessWord)[index] == characterTwentyTwo) {
                                
                                if (Array(secretWord)[index] == characterTwentyTwo) {
                                    
                                    count = count + 1
                                }
                                
                            }
                            
                            
                        }
                        
                        
                        
                        
                        
                        
                        
                        // count
                        
                        if (count == 0) {
                            
                            
                            let characters = Array(userGuessWord)
                            let i = characters.firstIndex(of: characterTwentyTwo
                            )
                            if (i == 1) {
                                
                                colorsRowFive[1] = Color.yellow
                                
                            }
                            
                        }
                        
                        
                        
                        
                        
                    }
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                
                    
                    
                    
                    
                    
                }
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
            } // END OF Arraycontains
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            // characterTwentyThree
            
            
            if (Array(secretWord).contains(characterTwentyThree)) {
                
                
                if (Array(secretWord)[2] == characterTwentyThree) {
                    
                    
                    colorsRowFive[2] = Color.green
                    
                    
                }
                
                else {
                    
                    // numTimes
                    // numTimesTwo
                    
                    let numTimes =  secretWord.filter{ $0 == characterTwentyThree
                    }.count
                     let numTimesTwo = userGuessWord.filter{ $0 == characterTwentyThree}.count
                    
                    
                    
                    if (numTimes == numTimesTwo) {
                        
                        
                        colorsRowFive[2] = Color.yellow
                        
                        
                    }
                    
                    
                    if (numTimes > numTimesTwo) {
                     
                        
                        colorsRowFive[2] = Color.yellow
                        
                    }
                    
                    
                    if (numTimes < numTimesTwo) {
                        
                        // let
                        
                        
                        let indexes = [0, 1, 2, 3, 4]
                        
                        
                        var count = 0
                        
                        
                        for index in indexes {
                            
                            if (Array(userGuessWord)[index] == characterTwentyThree) {
                                
                                if (Array(secretWord)[index] == characterTwentyThree) {
                                    
                                    count = count + 1
                                }
                                
                            }
                            
                            
                        }
                        
                        // count
                        
                        if (count == 0) {
                            
                            
                            let characters = Array(userGuessWord)
                            let i = characters.firstIndex(of: characterTwentyThree
                            )
                            if (i == 2) {
                                
                                colorsRowFive[2] = Color.yellow
                                
                            }
                            
                        }
                        
                        
                        
                        
                        
                        
                        
                    }
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                }
                
                
                
                
                
                
                
                
                
                
                
                
                
                
            } // end of Arraycontains
            
            
            
            
            
            
            
            
            
            
            // character Twentyfour
            
            
            if (Array(secretWord).contains(characterTwentyFour)) {
                
                
                if (Array(secretWord)[3] == characterTwentyFour) {
                    
                    
                    colorsRowFive[3] = Color.green
                    
                    
                }
                
                else {
                    
                    
                    // numTimes
                    // numTimesTwo
                    
                    let numTimes =  secretWord.filter{ $0 == characterTwentyFour
                    }.count
                     let numTimesTwo = userGuessWord.filter{ $0 == characterTwentyFour}.count
                    
                    
                    
                    if (numTimes == numTimesTwo) {
                        
                        
                        colorsRowFive[3] = Color.yellow
                        
                        
                    }
                    
                    
                    if (numTimes > numTimesTwo) {
                     
                        
                        colorsRowFive[3] = Color.yellow
                        
                    }
                    
                    
                    
                    if (numTimes < numTimesTwo) {
                        
                        
                        // let
                        
                        let indexes = [0, 1, 2, 3, 4]
                        
                        
                        var count = 0
                        
                        
                        for index in indexes {
                            
                            if (Array(userGuessWord)[index] == characterTwentyFour) {
                                
                                if (Array(secretWord)[index] == characterTwentyFour) {
                                    
                                    count = count + 1
                                }
                                
                            }
                            
                            
                        }
                        
                        
                        if (count == 0) {
                            
                            
                            let characters = Array(userGuessWord)
                            let i = characters.firstIndex(of: characterTwentyFour
                                
                            )
                            if (i == 3) {
                                
                                colorsRowFive[3] = Color.yellow
                                
                            }
                            
                        }
                        
                        
                        
                        
                        
                        
                        
                        
                    }
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                }
                
                
                
                
                
                
                
                
                
                
                
            } // end of Arraycontains
            
            
            
            
            
        
            
            // character TwentyFive
            
            if (Array(secretWord).contains(characterTwentyFive)) {
                
                
                
                if (Array(secretWord)[4] == characterTwentyFive) {
                    
                    
                    colorsRowFive[4] = Color.green
                    
                    
                }
                
                else {
                    
                    // numTimes
                    // numTimesTwo
                    
                    let numTimes =  secretWord.filter{ $0 == characterTwentyFive
                    }.count
                     let numTimesTwo = userGuessWord.filter{ $0 == characterTwentyFive
                     }.count
                    
                    
                    if (numTimes == numTimesTwo) {
                        
                        
                        colorsRowFive[4] = Color.yellow
                        
                        
                    }
                    
                    
                    if (numTimes > numTimesTwo) {
                     
                        
                        colorsRowFive[4] = Color.yellow
                        
                    }
                    
                    
                    if (numTimes < numTimesTwo) {
                        
                        
                        let indexes = [0, 1, 2, 3, 4]
                        
                        
                        var count = 0
                        
                        
                        for index in indexes {
                            
                            if (Array(userGuessWord)[index] == characterTwentyFive) {
                                
                                if (Array(secretWord)[index] == characterTwentyFive) {
                                    
                                    count = count + 1
                                }
                                
                            }
                            
                            
                        }
                        
                        if (count == 0) {
                            
                            
                            let characters = Array(userGuessWord)
                            let i = characters.firstIndex(of: characterTwentyFive
                                
                            )
                            if (i == 4) {
                                
                                colorsRowFive[4] = Color.yellow
                                
                            }
                            
                        }
                        
                        
                        
                        
                
                        
                    }
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                }
                
                
                
                
            } // Arraycontains
            
            
            
            if (colorsRowFive == [Color.green, Color.green, Color.green, Color.green, Color.green]) {
                
                
                
                // the game is over
                
                
                gameOver = true
                
                
            }
        
            
        } // end of if userGuesses = 5
        
        
        
        if (userGuesses == 6) {
            
            // the game is over, regardless of whether the user guessed correctly in the end or not
            
            
            gameOver = true
            
            let characterTwentySix  = Array(userGuessWord)[0]
           userCharTwentySix = String(characterTwentySix)
            
            
            let characterTwentySeven  = Array(userGuessWord)[1]
           userCharTwentySeven = String(characterTwentySeven)
            
            let characterTwentyEight  = Array(userGuessWord)[2]
           userCharTwentyEight = String(characterTwentyEight)
            
            
            let characterTwentyNine  = Array(userGuessWord)[3]
           userCharTwentyNine = String(characterTwentyNine)
            
            let characterThirty  = Array(userGuessWord)[4]
           userCharThirty = String(characterThirty)
            
            
            
            
            
            // characterTwentySix
            
            if (Array(secretWord).contains(characterTwentySix)) {
                
                
                
                if (Array(secretWord)[0] == characterTwentySix) {
                    
                    
                    colorsRowSix[0] = Color.green
                    
                    
                }
                
                else {
                    
                    let numTimes =  secretWord.filter{ $0 == characterTwentySix
                        
                    }.count
                     let numTimesTwo = userGuessWord.filter{ $0 == characterTwentySix
                         
                     }.count
                    
                    
                    if (numTimes == numTimesTwo) {
                        
                        
                        colorsRowSix[0] = Color.yellow
                        
                        
                    }
                    
                    
                    if (numTimes > numTimesTwo) {
                     
                        
                        colorsRowSix[0] = Color.yellow
                        
                    }
                    
                    
                    if (numTimes < numTimesTwo) {
                        
                        
                        let indexes = [0, 1, 2, 3, 4]
                        
                        
                        var count = 0
                        
                        
                        for index in indexes {
                            
                            if (Array(userGuessWord)[index] == characterTwentySix) {
                                
                                if (Array(secretWord)[index] == characterTwentySix) {
                                    
                                    count = count + 1
                                }
                                
                            }
                            
                            
                        }
                        
                        
                        if (count == 0) {
                            
                            
                            let characters = Array(userGuessWord)
                            let i = characters.firstIndex(of: characterTwentySix
                                
                            )
                            if (i == 0) {
                                
                                colorsRowSix[0] = Color.yellow
                                
                            }
                            
                        }
                        
                        
                        
                        
                        
                        
                        
                        
                    }
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                }
                
                
                
            } // end of ArrayContains
            
            
            
            // characterTwentySeven
            
            if (Array(secretWord).contains(characterTwentySeven)) {
                
                if (Array(secretWord)[1] == characterTwentySeven) {
                    
                    
                    colorsRowSix[1] = Color.green
                    
                    
                }
                
                else {
                    
                    
                    let numTimes =  secretWord.filter{ $0 == characterTwentySeven
                        
                    }.count
                     let numTimesTwo = userGuessWord.filter{ $0 == characterTwentySeven
                         
                     }.count
                    
                    
                    
                    
                    
                    if (numTimes == numTimesTwo) {
                        
                        
                        colorsRowSix[1] = Color.yellow
                        
                        
                    }
                    
                    
                    if (numTimes > numTimesTwo) {
                     
                        
                        colorsRowSix[1] = Color.yellow
                        
                    }
                    
                    
                         if (numTimes < numTimesTwo) {
                             
                             
                             let indexes = [0, 1, 2, 3, 4]
                             
                             
                             var count = 0
                             
                             
                             for index in indexes {
                                 
                                 if (Array(userGuessWord)[index] == characterTwentySeven) {
                                     
                                     if (Array(secretWord)[index] == characterTwentySeven) {
                                         
                                         count = count + 1
                                     }
                                     
                                 }
                                 
                                 
                             }
                             
                             if (count == 0) {
                                 
                                 
                                 let characters = Array(userGuessWord)
                                 let i = characters.firstIndex(of: characterTwentySeven
                                     
                                 )
                                 if (i == 1) {
                                     
                                     colorsRowSix[1] = Color.yellow
                                     
                                 }
                                 
                             }
                             
                             
                             
                             
                             
                             
                             
                             
                             
                             
                             
                             
                             
                             
                             
                             
                             
                             
                             
                             
                             
                             
                             
                             
                         }
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                }
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
            } // end of ArrayContains
            
            
            
            // characterTwentyEight
            
            if (Array(secretWord).contains(characterTwentyEight)) {
                
                if (Array(secretWord)[2] == characterTwentyEight) {
                    
                    
                    colorsRowSix[2] = Color.green
                    
                    
                }
                
                else {
                    
                    
                    let numTimes =  secretWord.filter{ $0 == characterTwentyEight
                        
                    }.count
                    
                     let numTimesTwo = userGuessWord.filter{ $0 == characterTwentyEight
                         
                     }.count
                    
                    
                    
                    if (numTimes == numTimesTwo) {
                        
                        
                        colorsRowSix[2] = Color.yellow
                        
                        
                    }
                    
                    
                    if (numTimes > numTimesTwo) {
                     
                        
                        colorsRowSix[2] = Color.yellow
                        
                    }
                    
                    
                    if (numTimes < numTimesTwo) {
                        
                        
                        let indexes = [0, 1, 2, 3, 4]
                        
                        
                        var count = 0
                        
                        
                        for index in indexes {
                            
                            if (Array(userGuessWord)[index] == characterTwentyEight) {
                                
                                if (Array(secretWord)[index] == characterTwentyEight) {
                                    
                                    count = count + 1
                                }
                                
                            }
                            
                            
                        }
                        
                        
                        
                        if (count == 0) {
                            
                            
                            let characters = Array(userGuessWord)
                            let i = characters.firstIndex(of: characterTwentyEight
                                
                            )
                            if (i == 2) {
                                
                                colorsRowSix[2] = Color.yellow
                                
                            }
                            
                        }
                        
                        
                        
                        
                        
                        
                        
                        
                        
            
                    }
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                }
                
                
            } // end of Arraycontains
            
            
            
            // characterTwentyNine
            
            
            if (Array(secretWord).contains(characterTwentyNine)) {
                
              
                if (Array(secretWord)[3] == characterTwentyNine) {
                    
                    
                    colorsRowSix[3] = Color.green
                    
                    
                }
                
                else {
                    
                    let numTimes =  secretWord.filter{ $0 == characterTwentyNine
                        
                    }.count
                    
                     let numTimesTwo = userGuessWord.filter{ $0 == characterTwentyNine
                         
                     }.count
                    
                    
                    if (numTimes == numTimesTwo) {
                        
                        
                        colorsRowSix[3] = Color.yellow
                        
                        
                    }
                    
                    
                    if (numTimes > numTimesTwo) {
                     
                        
                        colorsRowSix[3] = Color.yellow
                        
                    }
                    
                    
                    if (numTimes < numTimesTwo) {
                        
                        
                        let indexes = [0, 1, 2, 3, 4]
                        
                        
                        var count = 0
                        
                        
                        for index in indexes {
                            
                            if (Array(userGuessWord)[index] == characterTwentyNine) {
                                
                                if (Array(secretWord)[index] == characterTwentyNine
                              ) {
                                    
                                    count = count + 1
                                }
                                
                            }
                            
                            
                        }
                        
                        
                        
                        if (count == 0) {
                            
                            
                            let characters = Array(userGuessWord)
                            let i = characters.firstIndex(of: characterTwentyNine
                                
                            )
                            if (i == 3) {
                                
                                colorsRowSix[3] = Color.yellow
                                
                            }
                            
                        }
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                    }
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                }
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
            } // end of Arraycontains
            
            
            
            // characterThirty
            
            
            if (Array(secretWord).contains(characterThirty)) {
                
                
                if (Array(secretWord)[4] == characterThirty) {
                    
                    
                    colorsRowSix[4] = Color.green
                    
                    
                }
                
                else {
                    
                    
                    
                    let numTimes =  secretWord.filter{ $0 == characterThirty
                        
                    }.count
                    
                     let numTimesTwo = userGuessWord.filter{ $0 == characterThirty
                         
                     }.count
                    
                    
                    if (numTimes == numTimesTwo) {
                        
                        
                        colorsRowSix[4] = Color.yellow
                        
                        
                    }
                    
                    
                    if (numTimes > numTimesTwo) {
                     
                        
                        colorsRowSix[4] = Color.yellow
                        
                    }
                    
                    
                    if (numTimes < numTimesTwo) {
                        
                        
                        let indexes = [0, 1, 2, 3, 4]
                        
                        
                        var count = 0
                        
                        
                        for index in indexes {
                            
                            if (Array(userGuessWord)[index] == characterThirty) {
                                
                                if (Array(secretWord)[index] == characterThirty
                              ) {
                                    
                                    count = count + 1
                                }
                                
                            }
                            
                            
                        }
                        
                        
                        if (count == 0) {
                            
                            
                            let characters = Array(userGuessWord)
                            let i = characters.firstIndex(of: characterThirty
                                
                            )
                            if (i == 4) {
                                
                                colorsRowSix[4] = Color.yellow
                                
                            }
                            
                        }
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                    }
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                }
                
                
                
                
                
                
                
                
                
                
                
                
                
                
            } // ArrayContains
            
        
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
        } // end of if userGuesses = 6
        
        
        
        
        
        
            
            

            
            
        } // end of function
        
    
    
    
    
    var body: some View {
        
        
     
        
            VStack {
                
                
          
                
                if (userGuesses == 0) {
                    
                    HStack {
                        
                       
                        
                        // first row
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 2, y: -80)
                            .foregroundColor(colorsRowOne[0])
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 2, y: -80)
                            .foregroundColor(colorsRowOne[1])
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 2, y: -80)
                            .foregroundColor(colorsRowOne[2])
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 2, y: -80)
                            .foregroundColor(colorsRowOne[3])
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 2, y: -80)
                            .foregroundColor(colorsRowOne[4])
                        
                    } // end of HStack
                    
                    
                    
                    
                    HStack {
                        
                        
                        // second row
                        
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowTwo[0])
                        
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowTwo[1])
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowTwo[2])
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowTwo[3])
                      
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowTwo[4])
                        
                        
                
                        
                    } // end of HStack
                    
                    
                    HStack {
                        
                        // third row
                        
                    
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowThree[0])
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowOne[1])
                        
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowOne[2])
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowOne[3])
                     
                    
                    Image(systemName: "square.fill")
                        .resizable()
                        .frame(width: 70.0, height: 70.0)
                        .offset(x: 3, y: -80)
                        .foregroundColor(colorsRowOne[4])
                        
                        
                        
                        
                    }
                    
                    HStack {
                        
                        // fourth row
                        
                        
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowFour[0])
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowFour[1])
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowFour[2])
                        
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowFour[3])
                        
                        
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowFour[4])

                        
                    }
                    
                    
                     
                    HStack {
                        
                        // fifth row
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowOne[0])
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowOne[1])
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowOne[2])
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowOne[3])
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowOne[4])
                        
                        
                        
                    }
                    
                    
                    
                    HStack {
                        
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 2, y: -80)
                            .foregroundColor(colorsRowOne[0])
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x:2, y: -80)
                            .foregroundColor(colorsRowOne[1])
                        
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 2, y: -80)
                            .foregroundColor(colorsRowOne[2])
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 2, y: -80)
                            .foregroundColor(colorsRowOne[3])
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 2, y: -80)
                            .foregroundColor(colorsRowOne[4])
                        
        
                        
                        
                    }
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                } // end of If statement
                    
                    
                    
            
                if (userGuesses == 1) {
                    
                    
                    HStack {
                        
                        // first row
                       
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowOne[0])
                            .overlay(
                                            Text(userCharOne)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)
                          
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowOne[1])
                            .overlay(
                                            Text(userCharTwo)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)
                            
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowOne[2])
                            .overlay(
                                            Text(userCharThree)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)
                        
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowOne[3])
                            .overlay(
                                            Text(userCharFour)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowOne[4])
                            .overlay(
                                            Text(userCharFive)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)
                        
                        
                    } // end of Hstack
                    
                    
                    HStack {
                        
                        // second row
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowTwo[0])
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowTwo[1])
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowTwo[2])
                        
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowTwo[3])
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowTwo[4])
                        
            
                
                        
                    }
                    
                    
                    
                    
                    
                    HStack {
                        
                        // third row
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowThree[0])
                        
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowThree[1])
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowThree[2])
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowThree[3])
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowThree[4])
                        
                        
                    
                    }
                    
                    
                    // fourth row
                    HStack {
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowFour[0])
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowFour[1])
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowFour[2])
                        
                        
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowFour[3])
                        
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowFour[4])
                
                        
                    }
                    
                    
                    
                    
                    // fifth row
                    
                    HStack {
                        
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowFive[0])
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowFive[1])
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowFive[2])
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowFive[3])
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowFive[4])
            
                        
                    }
                    
                    
                    // sixth row
                    
                    HStack {
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowSix[0])
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowSix[1])
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowSix[2])
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowSix[3])
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowSix[4])
                        
                        
                        
                        
                    }
                    
                    
                    
            
                    
                } // if userGuesses=1
                
                
                
                
                
                if (userGuesses == 2) {
                    
                
                    HStack {
                        
                        // first row
        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowOne[0])
                            .overlay(
                                            Text(userCharOne)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowOne[1])
                            .overlay(
                                            Text(userCharTwo)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)
                    
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowOne[2])
                            .overlay(
                                            Text(userCharThree)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)
                        
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowOne[3])
                            .overlay(
                                            Text(userCharFour)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowOne[4])
                            .overlay(
                                            Text(userCharFive)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)
                        
                        
                    } // end of HSTACK - 1st row
                    
                    
                    HStack {
                        // second row
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowTwo[0])
                            .overlay(
                                            Text(userCharSix)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 3, y:-80)
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowTwo[1])
                            .overlay(
                                            Text(userCharSeven)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 3, y:-80)
                        
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowTwo[2])
                            .overlay(
                                            Text(userCharEight)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 3, y:-80)
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowTwo[3])
                            .overlay(
                                            Text(userCharNine)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 3, y:-80)
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowTwo[4])
                            .overlay(
                                            Text(userCharTen)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 3, y:-80)
                        
                        
                        
                        
                        
                    } // end of HStack - 2nd row
                    
                    HStack {
                        
                        // third row
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowThree[0])
                        
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowThree[1])
                        
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowThree[2])
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowThree[3])
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowThree[4])
                        
                        
                    }
                    
                    
                    HStack {
                        
                        // fourth row
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowFour[0])
                    
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowFour[1])
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowFour[2])
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowFour[3])
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowFour[4])
                        
                        
                        
                    } // end of fourth row/HSTACK
                    
                    
                    // fifth row
                
                    
                    HStack {
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowFive[0])
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowFive[1])
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowFive[2])
                        
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowFive[3])
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowFive[4])
                        
                        
                        
                        
                        
                    } // end of fifth row
                    
                    
                    // sixth row
                    HStack {
                        
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowSix[0])
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowSix[1])
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowSix[2])
                        
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowSix[3])
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowSix[4])
                        
                        
                        
                
                        
                    }
                    
                    
                    
        
                    
                } // if userGuesses= 2 END
                
                
                if (userGuesses == 3) {
                    
                    
                    // first row
                    HStack {
                       
                        // first row
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowOne[0])
                            .overlay(
                                            Text(userCharOne)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowOne[1])
                            .overlay(
                                            Text(userCharTwo)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)
                    
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowOne[2])
                            .overlay(
                                            Text(userCharThree)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowOne[3])
                            .overlay(
                                            Text(userCharFour)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowOne[4])
                            .overlay(
                                            Text(userCharFive)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)
                        
                        
                    } // end of Hstack
                    
                    
                    // second row
                    
                    HStack {
                        
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowTwo[0])
                            .overlay(
                                            Text(userCharSix)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 3, y:-80)
                        
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowTwo[1])
                            .overlay(
                                            Text(userCharSeven)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 3, y:-80)
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowTwo[2])
                            .overlay(
                                            Text(userCharEight)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 3, y:-80)
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowTwo[3])
                            .overlay(
                                            Text(userCharNine)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 3, y:-80)
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowTwo[4])
                            .overlay(
                                            Text(userCharTen)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 3, y:-80)
                    } // end of Hstack
                    
                    
                    // third row
                    
                    HStack {
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowThree[0])
                            .overlay(
                                            Text(userCharEleven)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 3, y:-80)
                        
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowThree[1])
                            .overlay(
                                            Text(userCharTwelve)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 3, y:-80)
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowThree[2])
                            .overlay(
                                            Text(userCharThirteen)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 3, y:-80)
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowThree[3])
                            .overlay(
                                            Text(userCharFourteen)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 3, y:-80)
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowThree[4])
                            .overlay(
                                            Text(userCharFifteen)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 3, y:-80)
                        
                    } // end of HStack
                    
                    
                // fourth row
                    
                    HStack {
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowFour[0])
                        
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowFour[1])
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowFour[2])
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowFour[3])
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowFour[4])
                
                        
                        
                        
                    }
                    
                    
                    
                    
                // fifth row
                    
                    HStack {
                        
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowFive[0])
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowFive[1])
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowFive[2])
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowFive[3])
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowFive[4])
                        
            
                        
                        
                    } // end of HStack
                    
                    
                    
    
                    
                // sixth row
                    
                    
                    HStack {
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowSix[0])
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowSix[1])
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowSix[2])
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowSix[3])
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowSix[4])
                        
                        
                        
                        
                        
                        
                        
                        
                    }
                    
                    
        
                    
                    
                    
                    
                    
                    
                } // end of if userGuesses = 3
                
                
                if (userGuesses == 4) {
                    
                    // first row
                    HStack {
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowOne[0])
                            .overlay(
                                            Text(userCharOne)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowOne[1])
                            .overlay(
                                            Text(userCharTwo)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowOne[2])
                            .overlay(
                                            Text(userCharThree)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowOne[3])
                            .overlay(
                                            Text(userCharFour)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowOne[4])
                            .overlay(
                                            Text(userCharFive)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)

            
                        
                        
                    } // end of HSTACK
                    
                    
                    // second row
                    
                    HStack {
                        
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowTwo[0])
                            .overlay(
                                            Text(userCharSix)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowTwo[1])
                            .overlay(
                                            Text(userCharSeven)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowTwo[2])
                            .overlay(
                                            Text(userCharEight)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowTwo[3])
                            .overlay(
                                            Text(userCharNine)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowTwo[4])
                            .overlay(
                                            Text(userCharTen)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)
                        
                
                        
                    } // end of HStack
                    
                    // third row
                    
                    HStack {
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowThree[0])
                            .overlay(
                                            Text(userCharEleven)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowThree[1])
                            .overlay(
                                            Text(userCharTwelve)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowThree[2])
                            .overlay(
                                            Text(userCharThirteen)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowThree[3])
                            .overlay(
                                            Text(userCharFourteen)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)
                        
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowThree[4])
                            .overlay(
                                            Text(userCharFifteen)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)
                        
                        
                    }
                    
                    
                    
                    
                    // fourth row
                    
                    HStack {
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowFour[0])
                            .overlay(
                                            Text(userCharSixteen)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowFour[1])
                            .overlay(
                                            Text(userCharSeventeen)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowFour[2])
                            .overlay(
                                            Text(userCharEighteen)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowFour[3])
                            .overlay(
                                            Text(userCharNineteen)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowFour[4])
                            .overlay(
                                            Text(userCharTwenty)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)
                        
                    
                        
                        
                    } // end of HStack
                    
                    
                   // fifth row
                    
                    HStack {
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowFive[0])
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowFive[1])
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowFive[2])
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowFive[3])
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowFive[4])
            
                        
                    }
                    
                    
                    
                  // sixth row
                    
                    HStack {
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowSix[0])
                        
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowSix[1])
                        
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowSix[2])
                        
                        
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowSix[3])
                        
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowSix[4])
                        
                        
                        
                    }
                    
                    
                } // end of if userGuesses = 4
                
                if (userGuesses == 5){
                    
                    
                    // FIRST ROW
                    
                    HStack {
                        
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowOne[0])
                            .overlay(
                                            Text(userCharOne)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowOne[1])
                            .overlay(
                                            Text(userCharTwo)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowOne[2])
                            .overlay(
                                            Text(userCharThree)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowOne[3])
                            .overlay(
                                            Text(userCharFour)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowOne[4])
                            .overlay(
                                            Text(userCharFive)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)


                        
                        
                    } // end of HStack
                    
                    
                    
                    // second row
                    
                    HStack {
                        
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowTwo[0])
                            .overlay(
                                            Text(userCharSix)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)

                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowTwo[1])
                            .overlay(
                                            Text(userCharSeven)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)

                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowTwo[2])
                            .overlay(
                                            Text(userCharEight)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowTwo[3])
                            .overlay(
                                            Text(userCharNine)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowTwo[4])
                            .overlay(
                                            Text(userCharTen)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)
                        
                        
                        
                        
                    } // end of HStack
                    
                    
                    
                    // third row
                    
                    HStack {
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowThree[0])
                            .overlay(
                                            Text(userCharEleven)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)
                        
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowThree[1])
                            .overlay(
                                            Text(userCharTwelve)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowThree[2])
                            .overlay(
                                            Text(userCharThirteen)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowThree[3])
                            .overlay(
                                            Text(userCharFourteen)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowThree[4])
                            .overlay(
                                            Text(userCharFifteen)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)
                        
                        
                    }
                    
                    
                    // fourth row
                    
                    HStack {
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowFour[0])
                            .overlay(
                                            Text(userCharSixteen)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowFour[1])
                            .overlay(
                                            Text(userCharSeventeen)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowFour[2])
                            .overlay(
                                            Text(userCharEighteen)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowFour[3])
                            .overlay(
                                            Text(userCharNineteen)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowFour[4])
                            .overlay(
                                            Text(userCharTwenty)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)
                        
                        
                        
                        
                        
                        
                        
                        
                        
                
                        
                        
                    }
                    
                    
                
                    
                    // fifth row
                    
                    HStack {
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowFive[0])
                            .overlay(
                                            Text(userCharTwentyOne)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)
                        
                        
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowFive[1])
                            .overlay(
                                            Text(userCharTwentyTwo)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowFive[2])
                            .overlay(
                                            Text(userCharTwentyThree)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowFive[3])
                            .overlay(
                                            Text(userCharTwentyFour)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowFive[4])
                            .overlay(
                                            Text(userCharTwentyFive)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)
                        
                    }
                    
                    
                    
                    
                    // sixth row
                    
                    HStack {
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowSix[0])
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowSix[1])
                        
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowSix[2])

                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowSix[3])
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .offset(x: 3, y: -80)
                            .foregroundColor(colorsRowSix[4])
                        
                    
                        
                    }
                    
                    
                    
                    
                    
                    
                    

                    
                } // end of if userGuesses=5
                
                
                if (userGuesses == 6) {
                    
                    
                    // HStack
                    
                    // FIRST ROW
                    HStack {
                        
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowOne[0])
                            .overlay(
                                            Text(userCharOne)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowOne[1])
                            .overlay(
                                            Text(userCharTwo)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowOne[2])
                            .overlay(
                                            Text(userCharThree)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowOne[3])
                            .overlay(
                                            Text(userCharFour)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowOne[4])
                            .overlay(
                                            Text(userCharFive)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)
                        
                        
                        
                        
    
                    } // end of Hstack
                    
                    
                    // second row
                    
                
                    HStack {
                        
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowTwo[0])
                            .overlay(
                                            Text(userCharSix)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowTwo[1])
                            .overlay(
                                            Text(userCharSeven)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowTwo[2])
                            .overlay(
                                            Text(userCharEight)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)
                        
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowTwo[3])
                            .overlay(
                                            Text(userCharNine)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)
                        
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowTwo[4])
                            .overlay(
                                            Text(userCharTen)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)
                        
                        
                    }  // end of HStack
                    
                    
                    // third row
                    
                    HStack {
                        
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowThree[0])
                            .overlay(
                                            Text(userCharEleven)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowThree[1])
                            .overlay(
                                            Text(userCharTwelve)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)
                        
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowThree[2])
                            .overlay(
                                            Text(userCharThirteen)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)
                        
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowThree[3])
                            .overlay(
                                            Text(userCharFourteen)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)
                        
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowThree[4])
                            .overlay(
                                            Text(userCharFifteen)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)
                        
                        
                        
                        
                    }
                    
                    
                    // fourth row
                    
                    HStack {
                        
                        
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowFour[0])
                            .overlay(
                                            Text(userCharSixteen)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)
                        
                        
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowFour[1])
                            .overlay(
                                            Text(userCharSeventeen)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)
                        
                        
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowFour[2])
                            .overlay(
                                            Text(userCharEighteen)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)
                        
                        
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowFour[3])
                            .overlay(
                                            Text(userCharNineteen)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)
                        
                        
                        
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowFour[4])
                            .overlay(
                                            Text(userCharTwenty)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)
                        
                        
                        
                        
                        
                    
                    }
                    
                    
                    
                    // fifth row
                    
                    HStack {
                        
                        
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowFive[0])
                            .overlay(
                                            Text(userCharTwentyOne)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)
                        
                        
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowFive[1])
                            .overlay(
                                            Text(userCharTwentyTwo)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)
                        
                        
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowFive[2])
                            .overlay(
                                            Text(userCharTwentyThree)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)
                        
                        
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowFive[3])
                            .overlay(
                                            Text(userCharTwentyFour)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)
                        
                        
                        
                        
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowFive[4])
                            .overlay(
                                            Text(userCharTwentyFive)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)
                        
                        
                        
                    }
                    
                    
                    // sixth row
                    
                    HStack {
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowSix[0])
                            .overlay(
                                            Text(userCharTwentySix)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)
                        
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowSix[1])
                            .overlay(
                                            Text(userCharTwentySeven)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)
                        
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowSix[2])
                            .overlay(
                                            Text(userCharTwentyEight)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)
                        
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowSix[3])
                            .overlay(
                                            Text(userCharTwentyNine)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)
                        
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 70.0, height: 70.0)
                            .foregroundColor(colorsRowSix[4])
                            .overlay(
                                            Text(userCharThirty)
                                                .foregroundColor(.black)
                                                .font(.system(size: 36))
                                                .fontWeight(.heavy)
                                            , alignment: .center
                                        )
                            .offset(x: 2, y:-80)
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                    }
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
    
                    
                } // end of if userGuesses=6
                
                
                
        
        
               
                    
                    TextField("type your FIVE-LETTER guess here...", text: $userGuessWord)
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center
                        ).frame(width: 300).textFieldStyle(RoundedBorderTextFieldStyle.roundedBorder)
                        .textInputAutocapitalization(.characters)
                        .border(Color.black)
                        .offset(y: -40)
                
                    
            
                
                
                
                Button("GUESS") {
                    
                    checkGuess()
                    
                    
                }
                
                    .foregroundStyle(.black).border(Color.red).bold()
                    .controlSize(.large)
                    .buttonStyle(.borderedProminent)
                    .font(.custom( "crayonkids", size: 25.0)).disabled(gameOver)
                    
                 
                  Text("guesses:" + String(userGuesses))
                    .font(.custom( "crayonkids", size: 25.0)).offset(y: 15)
                    
                  
                   
                    
            
                
                
                
                    
                    
               
                    
            }.navigationBarBackButtonHidden() // end of VStack
                
                
             
        
        
        
        
        
        
        
        
        
        
        
        
        
        
            } // end of view
            
            
            
            
            
            
            
            
        } // end of class declaration
    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
    
}


