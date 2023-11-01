//
//  CriarView.swift
//  NadaADeclarar
//
//  Created by Raphael Iniesta Reis on 01/11/23.
//

import SwiftUI

struct Recentes: View {
    
    var planetas: [String] = ["AddPlaneta", "PlanetaAzul", "PlanetaVermelho", "PlanetaVerde", "PlanetaRoxo"]
    var descricao: [String] = ["Criar Planeta", "Nubank", "INSS", "XP Invest", "C6"]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                NavigationLink(destination: CriarView()) {
                    VStack {
                        Image("AddPlaneta")
                        TextView("Criar Planeta", .subtitle)
                    }
                }
                ForEach(1...planetas.count-1, id:\.self) { i in
                    NavigationLink(destination: CriarView()) {
                        VStack {
                            Image(planetas[i])
                            TextView(descricao[i], .subtitle)
                        }
                        .padding()
                    }
                }
            }
        }
    }
}

#Preview {
    Recentes()
}
