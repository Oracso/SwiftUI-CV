//
//  PersonalStatementView.swift
//  CVTemplate
//
//  Created by Oscar Hardy on 16/01/2024.
//

import SwiftUI

struct PersonalStatementView: View {
    let personalStatement: PersonalStatement
    var body: some View {
        VStack {
            
            Text(personalStatement.title)
                .font(.system(size: .microsoftSize(11)))
                .secondaryColourTheme()
                .bold()
            
            Text(personalStatement.statement)
                .font(.system(size: .microsoftSize(11)))
                .multilineTextAlignment(.leading)
            
                .padding(.trailing, 5)
            
                .padding(.horizontal)
            
        }
        
        .padding(.horizontal)
        
        .a4Width()
        
    }
}

#Preview {
    PersonalStatementView(personalStatement: .example)
        .environmentObject(CVFormattingManager())
        .previewBorder()
}
