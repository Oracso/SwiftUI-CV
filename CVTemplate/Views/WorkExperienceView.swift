//
//  WorkExperienceView.swift
//  CVTemplate
//
//  Created by Oscar Hardy on 16/01/2024.
//

import SwiftUI

struct WorkExperienceView: View {
    
    let workExperiences: [WorkExperience]
    
    var body: some View {
        
        VStack {
            
            SectionHeading(title: "Work & Relevant Experience")
//                .padding(.bottom, -10)
            ForEach(workExperiences, id: \.self) { workExperience in
                WorkExperienceComponentView(workExperience: workExperience)
                    .padding(.horizontal)
                    .padding(.vertical, 1)
            }
        }
//        .padding(.top, -5)
//        .padding(.top, 5)
        
        
        .a4Width()
        
        
    }
}

#Preview {
    WorkExperienceView(workExperiences: WorkExperience.examples)
        .environmentObject(CVFormattingManager())
        .previewBorder()
}
