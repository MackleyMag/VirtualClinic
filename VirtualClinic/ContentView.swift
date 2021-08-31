//
//  ContentView.swift
//  VirtualClinic
//
//  Created by Mackley Magalhães da Silva on 30/08/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            ConsultaView()
                .tabItem{
                    Label("Consultas", systemImage: "list.dash")
                }
            ProdutosView()
                .tabItem{
                    Label("Produtos", systemImage: "square.and.pencil")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
