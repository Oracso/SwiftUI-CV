//
//  TechnicalSkills.swift
//  CVTemplate
//
//  Created by Oscar Hardy on 23/01/2024.
//

import Foundation

struct TechnicalSkills {
    let advanced: [String]
        let intermediate: [String]
    let basic: [String]
}


extension TechnicalSkills {
    static let example = TechnicalSkills(
        advanced: ["Swift", "Jira", "Microsoft Office 365 (Word, PowerPoint, Excel, Teams, Outlook, SharePoint)"],
        intermediate: ["Python", "JSON"],
        basic: ["SQL", "Git", "HTML", "TypeScript", "XML"]
    )
}
