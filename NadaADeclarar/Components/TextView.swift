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
    case bold
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
            .font(type == .title ? Font.custom("Montserrat", size: 48) : type == .subtitle ? Font.custom("Montserrat", size: 28) : type == .body ? Font.custom("Montserrat", size: 36) : Font.custom("Montserrat", size: 22))
            .fontWeight(type == .title ? .black : type == .body || type == .subtitle ? .regular : .semibold)
            .multilineTextAlignment(.center)
            .foregroundColor(type == .title || type == .body || type == .bold ? Color(red: 54/255, green: 0/255, blue: 86/255) : Color(red: 45/255, green: 45/255, blue: 45/255))
    }
}

#Preview {
    VStack{
        TextView("Batata frita grande", .title)
        TextView("Bata frita pequena", .subtitle)
        TextView("Batata frita media", .body)
        TextView("Pão de Mel", .bold)
    }

}

