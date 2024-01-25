//
//  TextAndImage.swift
//  CVTemplate
//
//  Created by Oscar Hardy on 17/01/2024.
//

import SwiftUI

struct TextAndImage: View {
    let text: String
    let image: String
    var customImage = false
    var body: some View {
        HStack(spacing: 5) {
            if customImage {
                Image(image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 14)
            } else {
                Image(systemName: image)
            }
            Text(text)
                .secondaryColourTheme()
        }
    }
}

#Preview {
    TextAndImage(text: "this is my github", image: "github-mark", customImage: true)
        .environmentObject(CVFormattingManager())
}


extension TextAndImage {
    static let examples: [TextAndImage] = [
        TextAndImage(text: CVData.example.personalDetails.location, image: "mappin.and.ellipse.circle"),
        TextAndImage(text: CVData.example.personalDetails.mobileNumber, image: "phone.connection"),
        TextAndImage(text: CVData.example.personalDetails.email, image: "envelope"),
        TextAndImage(text: "https://github.com/Oracso", image: "github-mark", customImage: true)
    ]
}

struct CustomLabelDetails {
    let text: String
    let imageName: String
}
