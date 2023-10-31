//
//  ButtonView.swift
//  NadaADeclarar
//
//  Created by Igor Bragança Toledo on 30/10/23.
//

//Teste github

import Foundation
import SwiftUI

struct ButtonView: View {
    var body: some View {
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
            Image(systemName: "arrow.right")
                .resizable()
                .frame(width: 50, height: 50)
                .foregroundColor(.white)
                .padding(30)
                .background(Color(red: 54 / 255, green: 0 / 255, blue: 95 / 255))
                .cornerRadius(200)
        })
    }
}

#Preview {
    ButtonView()
}
