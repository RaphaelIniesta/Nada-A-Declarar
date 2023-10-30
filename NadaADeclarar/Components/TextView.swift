//
//  Components.swift
//  NadaADeclarar
//
//  Created by Raphael Iniesta Reis on 30/10/23.
//

import SwiftUI

struct TextView: View {
    var text: String
    
    init(_ text: String) {
        self.text = text
    }
    var body: some View {
        Text("\(text)")
    }
}

#Preview {
    Text("Texto Legal :)")
}
