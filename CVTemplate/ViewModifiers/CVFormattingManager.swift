//
//  CVFormattingManager.swift
//  CVTemplate
//
//  Created by Oscar Hardy on 16/01/2024.
//

import Foundation
import SwiftUI


class CVFormattingManager: ObservableObject {
    
    
    @Published var primaryColourTheme: Color = Color(red: 194/255, green: 215/255, blue: 155/255)
    @Published var secondaryColourTheme = Color(red: 62/255, green: 80/255, blue: 30/255)
    
    @Published var secondaryHeadingTheme = Color(red: 206/255, green: 222/255, blue: 175/255)
    
    
//    @Published var primaryTextColour = Color(red: 206/255, green: 222/255, blue: 175/255)
    @Published var secondaryTextColour = Color(red: 109/255, green: 109/255, blue: 109/255)
    @Published var tertiaryTextColour = Color(red: 72/255, green: 72/255, blue: 72/255)
    
    
    
    @Published var pointsBetweenMargin: Double = 545.2
    
    
    
}

