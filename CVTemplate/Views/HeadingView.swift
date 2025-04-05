//
//  HeadingView.swift
//  CVTemplate
//
//  Created by Oscar Hardy on 16/01/2024.
//

import SwiftUI

struct HeadingView: View {
    
    let personalDetails: PersonalDetails
    
    var body: some View {
        
        VStack {
            
            Text(personalDetails.name)
                .secondaryColourTheme()
                .bold()
            
                .frame(maxWidth: 495.2)
                .font(.system(size: .microsoftSize(30)))
                .primaryColourTheme()
//                .padding(.top, 10)
                .padding(.top, 5)
                .padding(.bottom, 2)
            
            LineBarWithItems(items: TextAndImage.examples)
            
            
        }
        
        .a4Width()
        
        .overlay {
            HStack {
                Spacer()
                Text("This CV was built using SwiftUI")
                    .font(.system(size: .microsoftSize(8)))
            }
            .padding(.top, -26)
            .padding(.trailing, 13)
        }
        
    }
}

#Preview {
    HeadingView(personalDetails: .example)
        .environmentObject(CVFormattingManager())
        .previewBorder()
}
