//
//  TextView.swift
//  NadaADeclarar
//
//  Created by Raphael Iniesta Reis on 30/10/23.
//

import SwiftUI

enum TextType {
    case title
    case body
}

struct TextView: View {
    var text: String
    var type: TextType
    
    init(_ text: String, _ type: TextType) {
        self.text = text
        self.type = type
    }
    var body: some View {
        Text(text)
            .font(Font.custom("Montserrat", size: 48))
            .multilineTextAlignment(.center)
            .foregroundColor(Color(red: 21 / 255, green: 0 / 255, blue: 34 / 255))
            .fontWeight(type == .title ? .black : type == .body ? .light : .regular)

    }
}

#Preview {
    TextView("Banana", .title)
}
