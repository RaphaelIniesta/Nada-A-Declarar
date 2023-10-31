//
//  Onboarding-two.swift
//  NadaADeclarar
//
//  Created by Raphael Iniesta Reis on 31/10/23.
//

import SwiftUI

struct Onboarding_two: View {
    var body: some View {
        VStack {
            TextView("Neste Universo Fiscal, organize seus gastos em cada Planeta Tributário!", .body)
                .frame(width: 837)
            
            ButtonView()
        }
    }
}

#Preview {
    Onboarding_two()
}
