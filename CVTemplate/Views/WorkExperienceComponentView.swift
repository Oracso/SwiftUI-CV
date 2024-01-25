//
//  WorkExperienceComponentView.swift
//  CVTemplate
//
//  Created by Oscar Hardy on 16/01/2024.
//

import SwiftUI

struct WorkExperienceComponentView: View {
    
    let workExperience: WorkExperience
    
    var body: some View {
        
        VStack {
            
            HStack {
                Text(workExperience.jobTitle)
                    .font(.system(size: .microsoftSize(13)))
                    .bold()
                Spacer()
            }
            
            HStack {
                Text(workExperience.company)
                    .secondaryTextColour()
                    .bold()
                Spacer()
                Text(workExperience.dates)
                    .secondaryColourTheme()
                    .fontWeight(.heavy)
            }
            
            .font(.system(size: .microsoftSize(10)))
            
            
            ForEach(workExperience.statements, id: \.self) { statement in
                HStack {
                    BulletPointText(text: statement)
                        .font(.system(size: .microsoftSize(11)))
                    Spacer()
                }
                
            }
            
            
        }
        
        .padding(.horizontal)
        
        
    }
}

#Preview {
    WorkExperienceComponentView(workExperience: WorkExperience.examples.randomElement()!)
        .environmentObject(CVFormattingManager())
        .previewBorder()
}
