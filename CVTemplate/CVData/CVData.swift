//
//  CVData.swift
//  CVTemplate
//
//  Created by Oscar Hardy on 16/01/2024.
//

import Foundation

struct CVData {
    
    let name: String
    
    
    let mobileNumber: String
    let email: String
    
    let location: String
    
    let personalStatement: PersonalStatement
    
    let workExperience: [WorkExperience]
    
    let education: [Education]
    
    let technicalSkills: TechnicalSkills
    
    let references: [String]
}

struct PersonalStatement {
    
    let title: String
    let statement: String
    
}

struct WorkExperience {
    let jobTitle: String
    let company: String
    let dates: String
    let statements: [String]
}

struct Education {
    let courseName: String
    let year: String
}

struct TechnicalSkills {
    let advanced: [String]
    //    let intermediate: [String]
    let basic: [String]
}

extension CVData {
    static let example = CVData(
        name: "Oscar Hardy",
        mobileNumber: "07594439553",
        email: "oscarhardy@hotmail.co.uk",
        location: "London, UK",
        personalStatement: PersonalStatement.example,
        workExperience: WorkExperience.examples,
        education: Education.examples,
        technicalSkills: TechnicalSkills.example,
        references: ["Available upon request"]
    )
}

// TODO: How to add editable versions
extension PersonalStatement {
    static let example = PersonalStatement(
        title: "CREATIVE, CURIOUS AND COLLABORATIVE",
        statement: "A detail-oriented and proficient learner with a breadth of knowledge and experience in driving forward successful high-stake projects that exceed client expectations. My goal as a Swift Developer is to utilise my experience and capability to make a unique contribution to the industry and add value to your organisation through employing and further developing my professional expertise."
    )
}

extension WorkExperience {
    static let examples: [WorkExperience] = [
        WorkExperience(
            jobTitle: "Swift Developer",
            company: "Freelance",
            dates: "Jan 2021 - Present",
            statements: ["Designed and developed multiple projects using Swift 5.9, involving building complex user interfaces with SwiftUI.", "Effectively incorporated data structures and concurrency, in addition to a solid understanding of OOP principles, methodologies, design principles, patterns, and architectures to develop fully scalable and maintainable code.", "Managed the development lifecycle of designs on multiple targets (MacOS, iOS, WatchOS)", "Capable using a range of Apple’s frameworks (CoreData, CloudKit, Combine, Core Location, Swift Charts, Notification Centre, WidgetKit, Foundation, UIKit, SwiftUI)", "Proficient in writing unit/integration tests, as well as troubleshooting and debugging (XCTest) to produce fully testable code.", "Effectively implemented version control using Git/GitHub to ensure maintainable code.", "Working knowledge of MVVM, MVP, VIPER and SOLID architecture/programming principles."]
        ),
        WorkExperience(
            jobTitle: "Learning Consultant",
            company: "Department of Work & Pensions (DWP)",
            dates: "May 2023 - Present",
            statements: ["Managed large datasets and databases with sensitive data, whilst maintaining GDPR principles.", "Led the successful design, delivery, and maintenance of learning materials for multiple internal teams within strict deadlines.", "Advertised, screened and managed cohorts obtaining new professional qualifications.", "Trained and up-skilled a variety of stakeholders through presentations with the goal of propagating learning techniques and resources to the wider team.", "Appointed secretariat for senior leaders to orchestrate communications, including developing and sending out agendas and acting as a notary for principal meetings."]
        ),
        WorkExperience(
            jobTitle: "Service Innovation Lead",
            company: "Department of Work & Pensions (DWP)",
            dates: "Feb 2022 – Jul 2022",
            statements: ["Responsible for supporting all West London job centres with their technical and operational issues.", "Facilitated creation, maintenance and management of JIRA tickets and user stories, encouraging agile product management.", "Collated and presented data with business strategy & senior management teams of complex issues to enable coordination with and education for the wider team.", "Handled client queries through policy enforcement and training.", "Evaluated ticket history to ensure client requests were met and raised further tickets to direct work to other teams."]
        ),
        WorkExperience(
            jobTitle: "Work Coach",
            company: "Department of Work & Pensions (DWP)",
            dates: "Dec 2022 - May 2023 / Feb 2021 - Feb 2022",
            statements: ["Mentored and coached individuals utilising my in-depth working knowledge of the Universal Credit system to assist in employment and development opportunities.", "Fostered and inspired talented individuals to pursue equal opportunities, for example Generation UK, and various other accessible coding bootcamps and training courses.", "Developed advanced communication techniques in high-stakes discussions to ensure the best outcome for my clients in an empathetic and patient manner."]
        ),
        WorkExperience(
            jobTitle: "Rock Climbing Centre Manager",
            company: "Mt. Palace",
            dates: "Jul 2018 – Sep 2020",
            statements: ["Instituted operating procedures, risk assessments and policies for the organisation.", "Operated as a lead technical advisor and liaised with external industry experts to ensure best practices and legal compliance.", "Interviewed and trained staff in addition to coordinating a team of 5+ individuals by effectively communicating and delegating tasks to ensure the smooth running of day-to-day operations."]
        ),
        WorkExperience(
            jobTitle: "Rock Climbing Instructor",
            company: "Freelance",
            dates: "Jun 2017 – Present",
            statements: ["Planned and led indoor and outdoor rock climbing coaching sessions for all ages and levels, while ensuring group safety and management using my training and expertise in the field.", "Awarded 15+ qualifications & CPD, including 1 for which I was one of the youngest to achieve."]
        ),
        WorkExperience(
            jobTitle: "Scientific Ethics Committee Member Volunteer",
            company: "Health Research Authority (NHS)",
            dates: "Oct 2022 – Present",
            statements: ["Analysed and investigated scientific study proposals involving human participants to identify ethical queries requiring further appraisal.", "Collaborated with and presented work to committee members and research representatives to provide recommendations and a fair evaluation to subsequently grant approval or denial."]
        ),
    ]
}

extension Education {
    static let examples: [Education] = [
        Education(courseName: "Access to Higher Education Course - Biochemistry", year: "2023"),
        Education(courseName: "3 A Levels (Mathematics, Economics & Philosophy) & 1 AS Level (Physics)", year: "2016 - 2017"),
        Education(courseName: "12 GCCEs including Mathematics & English", year: "2015")
    ]
}

extension TechnicalSkills {
    static let example = TechnicalSkills(
        advanced: ["Swift", "Jira", "Microsoft Office 365 (Word, PowerPoint, Excel, Teams, Outlook, SharePoint)"],
        basic: ["JSON", "XML", "Python", "SQL", "Git", "HTML", "TypeScript"]
    )
}
