//
//  BulletPointText.swift
//  CVTemplate
//
//  Created by Oscar Hardy on 17/01/2024.
//

import SwiftUI

struct BulletPointText: View {
    init(text: String) {
        self.text = Text(text)
    }
    init(text: Text) {
        self.text = text
    }
    
    let text: Text
    
    var body: some View {
        HStack(alignment: .top) {
            VStack {
                Text("•")
            }
            VStack {
                text
            }
        }
    }
}

#Preview {
    BulletPointText(text: "")
}
