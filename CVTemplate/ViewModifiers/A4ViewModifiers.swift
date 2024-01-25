//
//  A4ViewModifiers.swift
//  CVTemplate
//
//  Created by Oscar Hardy on 16/01/2024.
//

import Foundation
import SwiftUI


// MARK: - A4 View

struct A4View: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 595.2, height: 841.8)
    }
}

extension View {
    func a4View() -> some View {
        modifier(A4View())
    }
}


// MARK: - A4 Width

struct A4Width: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 595.2)
    }
}

extension View {
    func a4Width() -> some View {
        modifier(A4Width())
    }
}


// MARK: -  A4 Height

struct A4Height: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(height: 841.8)
    }
}

extension View {
    func a4Height() -> some View {
        modifier(A4Height())
    }
}


// MARK: - Preview Border

struct PreviewBorder: ViewModifier {
    func body(content: Content) -> some View {
        content
            .border(Color.blue)
    }
}

extension View {
    func previewBorder() -> some View {
        modifier(PreviewBorder())
    }
}




