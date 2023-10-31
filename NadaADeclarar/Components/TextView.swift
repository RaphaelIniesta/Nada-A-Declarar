//
//  TextView.swift
//  NadaADeclarar
//
//  Created by Raphael Iniesta Reis on 30/10/23.
//

import SwiftUI

enum TextType {
    case title
    case subtitle
    case body
}

struct TextView: View {
    var text: String
    var type: TextType
    var width: Int
    
    init(_ text: String, _ type: TextType, _ width: Int = 10000000) {
        self.text = text
        self.type = type
        self.width = width
    }
    var body: some View {
        Text(text)
//            .font(Font.custom("Montserrat-Black", size: 48))
            .font(type == .title ? Font.custom("Montserrat", size: 48) : type == .subtitle ? Font.custom("Montserrat", size: 28) : Font.custom("Montserrat", size: 36))
            .fontWeight(type == .title ? .black : .regular)
            .multilineTextAlignment(.center)
            .foregroundColor(type == .title || type == .body ? Color(red: 54/255, green: 0/255, blue: 86/255) : Color(red: 45/255, green: 45/255, blue: 45/255))
    }
}

#Preview {
    VStack{
        TextView("Banana", .title)
        TextView("Banana", .subtitle)
        TextView("Banana", .body)
    }

}

