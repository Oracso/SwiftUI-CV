//
//  EducationView.swift
//  CVTemplate
//
//  Created by Oscar Hardy on 16/01/2024.
//

import SwiftUI

struct EducationView: View {
    
    let education: [Education]
    
    var body: some View {
        
        VStack {
            
            SectionHeading(title: "Education")
            
            ForEach(education, id: \.self) { edu in
                HStack {
                    BulletPointText(text: edu.courseView())
                    .font(.system(size: .microsoftSize(11)))
                    Spacer()
                    Text(edu.year)
                        .font(.system(size: .microsoftSize(10)))
                        .fontWeight(.heavy)
                        .secondaryColourTheme()
                }
                .padding(.horizontal)
            }
            .padding(.horizontal)
            
            
        }
        
        .a4Width()
        
    }
}

#Preview {
    EducationView(education: Education.examples)
        .environmentObject(CVFormattingManager())
        .previewBorder()
}
