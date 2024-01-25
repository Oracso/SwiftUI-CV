//
//  CVParentView.swift
//  CVTemplate
//
//  Created by Oscar Hardy on 16/01/2024.
//

import SwiftUI

struct CVParentView: View {
    
    let cvData = CVData.example
    
    var body: some View {
        
        VStack {
            
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            
        }
        
        .frame(width: 595.2, height: 841.8)
        .border(Color.blue)
        
        .background(Color.white)
        
    }
}

#Preview {
    CVParentView()
}

//https://forums.developer.apple.com/forums/thread/730876
//https://www.hackingwithswift.com/forums/swiftui/export-to-pdf-multi-page-pdf/19775

//https://developer.apple.com/documentation/uikit/uiprintpaper/1623529-papersize


//https://www.youtube.com/watch?v=KRSiK6TAO_4
