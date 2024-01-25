//
//  LineBar.swift
//  CVTemplate
//
//  Created by Oscar Hardy on 17/01/2024.
//

import SwiftUI

struct LineBar: View {
    @EnvironmentObject var formattingManager: CVFormattingManager
    var body: some View {
        
            Rectangle()
                .frame(height: 4)
                .primaryColourTheme()
                .frame(maxWidth: formattingManager.pointsBetweenMargin)
        
        
    }
}

#Preview {
    LineBar()
        .environmentObject(CVFormattingManager())
}
