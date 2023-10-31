//
//  Onboarding-three.swift
//  NadaADeclarar
//
//  Created by Igor Bragança Toledo on 31/10/23.
//

import SwiftUI

struct OnboardingThreeView: View {
    var body: some View {
        VStack(alignment: .trailing){
            VStack{
                TextView("E não se esqueça dos pagamentos a terceiros, com a ajuda das anotações dos Alienígenas Fiscais!", .body)
                    .padding(.vertical, 50)
                ButtonRectangleView(placeholder: "Embarcar")
            }
            .frame(width: 407)
            .padding(.leading, 660)
        }
        .background(Image("Onboarding 3") .ignoresSafeArea())
    }
}
#Preview {
    OnboardingThreeView()
}
