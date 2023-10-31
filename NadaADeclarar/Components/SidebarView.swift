//
//  SidebarView.swift
//  NadaADeclarar
//
//  Created by Raphael Iniesta Reis on 31/10/23.
//

import SwiftUI

enum SidebarType {
    case title
    case item
}

struct SidebarView: View {
    var text: String
    var type: SidebarType
    
    init(_ text: String, _ type: SidebarType) {
        self.text = text
        self.type = type
    }
    
    var body: some View {
        Text(text)
            .foregroundColor(type == .title ? Color(.white) : Color(.lightGray))
            .font(type == .title ? Font.custom("Montserrat", size: 30) : Font.custom("Montserrat", size: 26))
            .fontWeight(type == .title ? .black : .medium)
            .padding(.bottom, type == .title ? 77 : 30)
        
    }
}

#Preview {
    VStack {
        SidebarView("Teste 1", .title)
        SidebarView("Teste 2", .item)
    }.background(Color("HomeColor"))
}

// Item Padding: 52
// Title Padding: 122

//30
//77
