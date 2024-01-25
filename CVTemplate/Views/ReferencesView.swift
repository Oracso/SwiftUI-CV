//
//  ReferencesView.swift
//  CVTemplate
//
//  Created by Oscar Hardy on 16/01/2024.
//

import SwiftUI

struct ReferencesView: View {
    
    let references: [String]
    
    var body: some View {
        
        VStack {
            
            SectionHeading(title: "References")
            
            ForEach(references, id: \.self) { ref in
                HStack {
                    Text(ref)
                        .font(.system(size: .microsoftSize(11)))
                        .padding(.horizontal)
                    Spacer()
                }
                
            }
            
        }
        .padding(.horizontal)
        .padding(.bottom, 15)
        
        .a4Width()
        
        
    }
}

#Preview {
    ReferencesView(references: ["Available upon request"])
        .environmentObject(CVFormattingManager())
        .previewBorder()
}
