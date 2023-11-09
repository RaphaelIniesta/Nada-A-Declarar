//
//  HomeView.swift
//  NadaADeclarar
//
//  Created by Raphael Iniesta Reis on 31/10/23.
//

import SwiftUI

struct HomeView: View {
    var planetas: [String] = ["AddPlaneta", "PlanetaAzul", "PlanetaVermelho", "PlanetaVerde", "PlanetaRoxo"]
    var descricao: [String] = ["Criar Planeta", "Nubank", "INSS", "XP Invest", "C6"]
    
    var body: some View {
        // Comentário
        NavigationStack {
            ZStack {
                HStack(alignment: .top) {
                    VStack(alignment: .leading) {
                        SidebarView("Nada a Declarar", .title)
                            .frame(width: 135)
                            .padding(.top, 25)
                        SidebarView("Início", .item)
                        SidebarView("Seus Planetas", .item)
                        SidebarView("Estrelas", .item)
                        
                        Spacer()
                    }
                    .frame(width: 313)
                    .frame(maxHeight: .infinity)
                    .background(Color("HomeColor"))
                    
                    VStack(alignment: .leading) {
                        TextView("Planetas Recentes", .title)
                        
                        TextView("Organize os informes de rendimento", .subtitle)
                        
                        Recentes()
                    }
                    .padding(.top, 77)
                    .padding(.leading, 40)
                    
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    HomeView()
}


