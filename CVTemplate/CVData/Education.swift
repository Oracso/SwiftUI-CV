//
//  Education.swift
//  CVTemplate
//
//  Created by Oscar Hardy on 23/01/2024.
//

import Foundation
import SwiftUI

struct Education: Hashable {
    let courseDetails: CourseDetails
    let year: String
}

extension Education {
    func courseView() -> Text {
        courseDetails.courseView()
    }
}

extension Education {
    static let examples: [Education] = [
        Education(courseDetails: .example1, year: "2023"),
        Education(courseDetails: .example2, year: "2016 - 2017"),
        Education(courseDetails: .example3, year: "2015"),
    ]
}
