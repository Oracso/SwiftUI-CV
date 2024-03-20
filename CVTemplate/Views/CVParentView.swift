//
//  CVParentView.swift
//  CVTemplate
//
//  Created by Oscar Hardy on 16/01/2024.
//

import SwiftUI

struct CVParentView: View {
    
    let cvData = CVData.example
    
    @StateObject var cvFormattingManager = CVFormattingManager()
    
    var body: some View {
        
//                LazyHGrid(rows: [GridItem(.adaptive(minimum: 595.2, maximum: 595.2))], content: {
//                LazyVGrid(columns: [GridItem(.adaptive(minimum: 841.8, maximum: 841.8))], content: {
        //        VStack {
        ScrollView {
            HeadingView(personalDetails: cvData.personalDetails)
            
            PersonalStatementView(personalStatement: cvData.personalStatement)
            
            WorkExperienceView(workExperiences: cvData.workExperiences)
            
            EducationView(education: cvData.education)
            
            TechnicalSkillsView(technicalSkills: cvData.technicalSkills)
            
            ReferencesView(references: cvData.references)
            
        }
                          
//        )
 
        .border(cvFormattingManager.primaryColourTheme, width: 5)
        
        
        .a4View()
        
        
        .environmentObject(cvFormattingManager)
     
        .scaleEffect(1.5)
        
    }
}

#Preview {
    CVParentView()
}

//https://forums.developer.apple.com/forums/thread/730876
//https://www.hackingwithswift.com/forums/swiftui/export-to-pdf-multi-page-pdf/19775

//https://developer.apple.com/documentation/uikit/uiprintpaper/1623529-papersize


//https://www.youtube.com/watch?v=KRSiK6TAO_4
