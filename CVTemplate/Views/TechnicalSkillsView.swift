//
//  TechnicalSkillsView.swift
//  CVTemplate
//
//  Created by Oscar Hardy on 16/01/2024.
//

import SwiftUI

struct TechnicalSkillsView: View {
    
    let technicalSkills: TechnicalSkills
    
    var body: some View {
        
        VStack {
            
            SectionHeading(title: "Technical Skills")
                .padding(.bottom, .microsoftSize(-12))
            
            HStack(alignment: .top) {
                
                // MARK: Advanced Skills
                VStack(alignment: .leading) {
                    SectionHeading(title: "Advanced")
                        .padding(.horizontal, 30)
                    ForEach(technicalSkills.advanced, id: \.self) { advanced in
                        BulletPointText(text: advanced)
                            .font(.system(size: .microsoftSize(11)))
                    }
                    .padding(.leading, 50)
                    .padding(.trailing, 5)
                }
                
                // MARK: Intermediate Skills
                VStack(alignment: .leading) {
                    SectionHeading(title: "Intermediate")
                        .padding(.horizontal, 30)
                    ForEach(technicalSkills.intermediate, id: \.self) { intermediate in
                        BulletPointText(text: intermediate)
                            .font(.system(size: .microsoftSize(11)))
                    }
                    .padding(.leading, 50)
                    .padding(.trailing, 5)
                }
                
                // MARK: Basic Skills
                VStack(alignment: .leading) {
                    SectionHeading(title: "Basic")
                        .padding(.horizontal, 30)
                    ForEach(technicalSkills.basic, id: \.self) { basic in
                        BulletPointText(text: basic)
                            .font(.system(size: .microsoftSize(11)))
                    }
                    .padding(.horizontal, 50)
                }
                
            }
            
            .padding(.horizontal)
            
        }
        
        .a4Width()
        
    }
}

#Preview {
    TechnicalSkillsView(technicalSkills: .example)
        .environmentObject(CVFormattingManager())
        .previewBorder()
}
