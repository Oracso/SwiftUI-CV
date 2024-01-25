//
//  CourseDetails.swift
//  CVTemplate
//
//  Created by Oscar Hardy on 23/01/2024.
//

import Foundation
import SwiftUI

struct CourseDetails: Hashable {
    let courseType: String
    let courseName: String
    let separator: String
    
    var second: Bool = false
    var secondType: String?
    var secondName: String?
    var secondSeparator: String?
}


extension CourseDetails {
    func courseView() -> Text {
        if second {
            return Text(courseType).bold().italic() + Text(" \(separator) ") + Text(courseName) + Text(" & ") + Text(secondType ?? "").bold().italic() + Text(" ") + Text(secondName ?? "")
        } else {
            return Text(courseType).bold() + Text(" ") + Text(courseName)
        }
    }
}

extension CourseDetails {
    static let example1 = CourseDetails(courseType: "Access to Higher Education Course", courseName: "Biochemistry", separator: "-")
    static let example2 = CourseDetails(courseType: "3 A Levels", courseName: "(Mathematics, Economics & Philosophy)", separator: "", second: true,  secondType: "1 AS Level", secondName: "(Physics)", secondSeparator: "")
    static let example3 = CourseDetails(courseType: "12 GCCEs", courseName: "Mathematics & English", separator: "including")
}
