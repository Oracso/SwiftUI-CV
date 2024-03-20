//
//  HeadingModifiers.swift
//  CVTemplate
//
//  Created by Oscar Hardy on 16/01/2024.
//

import Foundation
import SwiftUI

struct HeadingModifier: ViewModifier {
    @EnvironmentObject var formattingManager: CVFormattingManager
    let size: Int
    func body(content: Content) -> some View {
        content
            .bold()
            .frame(maxWidth: formattingManager.pointsBetweenMargin)
            .font(.system(size: .microsoftSize(size)))
            .background(formattingManager.primaryColourTheme)
            .clipShape(.buttonBorder)
            .padding(.top, 5)
            .padding(.bottom, 5)
        
    }
}

extension View {
    func headingModifier(_ size: Int = 11) -> some View {
        modifier(HeadingModifier(size: size))
    }
}




extension CGFloat {
    static func microsoftSize(_ size: Int) -> Double {
        Double(size) * 0.996
    }
}

extension CGFloat {
    static func sizeInMM(_ size: Int) -> Double {
        (Double(size) / 25.4) * 72
    }
}



//1 Apple point = 0.352778 mm
             
//595.2 x 841.8

//1 point = 1/72 inch
//12 point = 1/6

//595.2 x 841.8 = 210mm x 297mm
//595.2 x 841.8 = 8.3in x 11.7in

// 71.7 = 1 inch

// 0.996 = 1/72 inch



// PDF Image Size:
//1462 x 1042
//1542 x 1122

