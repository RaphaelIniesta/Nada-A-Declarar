//
//  ButtonView.swift
//  NadaADeclarar
//
//  Created by Igor Bragança Toledo on 30/10/23.
//

//Teste nova branch

import Foundation
import SwiftUI

struct ButtonView: View {
    var body: some View {
        NavigationLink(value: "Ola", label: {
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

struct ButtonRectangleView: View {
    var placeholder: String
    var body: some View {
        NavigationLink(value: "Embarcar", label: {
            Text(placeholder)
                .font(Font.custom("Montserrat", size: 38))
                .fontWeight(.black)
                .frame(width: 275, height: 75)
                .foregroundColor(.white)
                .background(Color(red: 54 / 255, green: 0 / 255, blue: 95 / 255))
                .cornerRadius(15)
        })
    }
}

#Preview {
    VStack{
        ButtonView()
            .padding(.vertical, 30)
        ButtonRectangleView(placeholder: "Embarcar")
    }
}
