//
//  Onboarding-one.swift
//  NadaADeclarar
//
//  Created by Raphael Iniesta Reis on 31/10/23.
//

import SwiftUI

struct Onboarding_one: View {
    var body: some View {
        VStack(alignment: .leading) {
            TextView("NADA A DECLARAR", .title)
            TextView("... e se prepare para decolar", .subtitle)
            TextView("nesta Jornada Espacial!", .subtitle)
            
            ButtonView()
                .padding(.leading, 150)
        }
        .padding(.trailing, 550)
        .background(Image("Onboarding 1")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .ignoresSafeArea())
    }
}

#Preview {
    Onboarding_one()
}
