//
//  SectionHeading.swift
//  CVTemplate
//
//  Created by Oscar Hardy on 16/01/2024.
//

import SwiftUI

struct SectionHeading: View {
    
    let title: String
    
    var body: some View {
        Text(title)
            .tertiaryTextColour()
        
            .multilineTextAlignment(.center)
            .headingModifier()
        
    }
}

#Preview {
    SectionHeading(title: "Work & Related Experience")
        .environmentObject(CVFormattingManager())
}
