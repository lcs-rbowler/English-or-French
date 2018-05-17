//
//  main.swift
//  English or French?
//

import Foundation

// INPUT
// Collect and filter user input here

var lines = 0

while 1 == 1 {
    
    print("How many lines?")
    
    // No nil
    guard let givenInput = readLine() else {
        continue
    }
    
    // Make a string
    guard let givenLines = Int(givenInput) else {
        continue
    }
    
    // Set limits
    if givenLines < 0 || givenLines > 10000 {
        continue
    }
    
    lines = givenLines
    break
}

var frenchCharacterCount = 0
var englishCharacterCount = 0

print("Please enter the \(lines) lines of text:")
    
for _ in 1...lines {
        
    guard let givenLine = readLine() else {
            
        continue
            
    }
    for letter in givenLine {
            
        switch letter {
        case "S", "s":
            frenchCharacterCount += 1
        case "T", "t":
            englishCharacterCount += 1
        default:
            continue
        }
            
    }
        
}


// PROCESS
// Implement the primary logic of the problem here
// Some output may be given here if you desire

// Example of how to collect multiple input lines
let expectedLines = 4
print("Please enter the \(expectedLines) of text:")
for _ in 1...expectedLines {
    
    // Get the input (use guard-let to guarantee it is not nil)
    // and then print it out
    guard let givenLine = readLine() else {
        // If someone enters nil input, just skip to the next line
        continue
    }
    
    // Now we have the line, we can print it out, analyze it as needed, et cetera
    print(givenLine)
    
}

// OUTPUT
// Report results to the user here

if englishCharacterCount > frenchCharacterCount {
    print("It's probably English text")
} else {
    print("It's probably French Text")
}
