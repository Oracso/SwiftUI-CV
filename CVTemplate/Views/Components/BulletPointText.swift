//
//  BulletPointText.swift
//  CVTemplate
//
//  Created by Oscar Hardy on 17/01/2024.
//

import SwiftUI

struct BulletPointText: View {
    let text: String
    var body: some View {
        HStack(alignment: .top) {
            VStack {
                Text("•")
//                    .padding(.trailing, 5) // Adjust the spacing as needed
            }
            
            VStack {
                Text(text)
//                    .fixedSize(horizontal: false, vertical: true)
//                    .padding(.leading, 5) // Adjust the spacing as needed
            }
            
        }
        //        Text("• \(text)")
    }
}

#Preview {
    BulletPointText(text: "")
}
