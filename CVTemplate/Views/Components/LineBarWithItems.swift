//
//  LineBarWithItems.swift
//  CVTemplate
//
//  Created by Oscar Hardy on 20/01/2024.
//

import SwiftUI

struct LineBarWithItems: View {
    
    @EnvironmentObject var formattingManager: CVFormattingManager
    
    let items: [TextAndImage]
    
    var body: some View {
        
        VStack {
            
            HStack {
                
                ForEach(items, id: \.text) { item in
                    Spacer()
                    item
                    Spacer()

                }

            }
            
            .font(.system(size: .microsoftSize(9)))
            
            Rectangle()
                .frame(height: 4)
                .primaryColourTheme()

                .padding(.top, -3)
                
            
        }
        .frame(maxWidth: formattingManager.pointsBetweenMargin)
        .a4Width()
        
        
    }
}

#Preview {
    LineBarWithItems(items: TextAndImage.examples)
        .environmentObject(CVFormattingManager())
        .previewBorder()
}
