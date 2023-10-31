//
//  HomeView.swift
//  NadaADeclarar
//
//  Created by Raphael Iniesta Reis on 31/10/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
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
//            .padding(.trailing, 900)
            
            TextView("Planetas Recentes", .title)
                .padding(.top, 77)
        }
    }
}

#Preview {
    HomeView()
}


