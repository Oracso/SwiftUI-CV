//
//  PersonalDetails.swift
//  CVTemplate
//
//  Created by Oscar Hardy on 23/01/2024.
//

import Foundation

struct PersonalDetails {
    let name: String
    
    let mobileNumber: String
    let email: String
    
    let location: String
    
    let gitHub: String
    let linkedIn: String
}


extension PersonalDetails {
    static let example = PersonalDetails(
        name: "OSCAR HARDY",
        mobileNumber: "07594439553",
        email: "oscarhardy@hotmail.co.uk",
        location: "London, UK",
        gitHub: "",
        linkedIn: ""
    )
}
