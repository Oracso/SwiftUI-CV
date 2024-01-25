//
//  CVData.swift
//  CVTemplate
//
//  Created by Oscar Hardy on 16/01/2024.
//

import Foundation

struct CVData {
    
    let personalDetails: PersonalDetails
    
    let personalStatement: PersonalStatement
    
    let workExperiences: [WorkExperience]
    
    let education: [Education]
    
    let technicalSkills: TechnicalSkills
    
    let references: [String]
}


extension CVData {
    static let example = CVData(
        personalDetails: .example,
        personalStatement: .example,
        workExperiences: WorkExperience.examples,
        education: Education.examples,
        technicalSkills: .example,
        references: ["Available upon request"]
    )
}





