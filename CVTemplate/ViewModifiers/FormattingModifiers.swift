//
//  FormattingModifiers.swift
//  CVTemplate
//
//  Created by Oscar Hardy on 25/01/2024.
//

import Foundation
import SwiftUI


// MARK: - Primary Colour Theme

struct PrimaryColourTheme: ViewModifier {
    @EnvironmentObject var formattingManager: CVFormattingManager
    func body(content: Content) -> some View {
        content
            .foregroundStyle(formattingManager.primaryColourTheme)
    }
}


extension View {
    func primaryColourTheme() -> some View {
        modifier(PrimaryColourTheme())
    }
}


// MARK: - Secondary Colour Theme

struct SecondaryColourTheme: ViewModifier {
    @EnvironmentObject var formattingManager: CVFormattingManager
    func body(content: Content) -> some View {
        content
            .foregroundStyle(formattingManager.secondaryColourTheme)
    }
}


extension View {
    func secondaryColourTheme() -> some View {
        modifier(SecondaryColourTheme())
    }
}

// MARK: - Secondary Heading Theme

struct SecondaryHeadingTheme: ViewModifier {
    @EnvironmentObject var formattingManager: CVFormattingManager
    func body(content: Content) -> some View {
        content
            .foregroundStyle(formattingManager.secondaryHeadingTheme)
    }
}


extension View {
    func secondaryHeadingTheme() -> some View {
        modifier(SecondaryHeadingTheme())
    }
}

// MARK: - Secondary Text Colour

struct SecondaryTextColour: ViewModifier {
    @EnvironmentObject var formattingManager: CVFormattingManager
    func body(content: Content) -> some View {
        content
            .foregroundStyle(formattingManager.secondaryTextColour)
    }
}

extension View {
    func secondaryTextColour() -> some View {
        modifier(SecondaryTextColour())
    }
}

// MARK: - Tertiary Text Colour

struct TertiaryTextColour: ViewModifier {
    @EnvironmentObject var formattingManager: CVFormattingManager
    func body(content: Content) -> some View {
        content
            .foregroundStyle(formattingManager.tertiaryTextColour)
    }
}

extension View {
    func tertiaryTextColour() -> some View {
        modifier(TertiaryTextColour())
    }
}
