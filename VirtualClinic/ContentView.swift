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
                    Label("Consultas", systemImage: "doc.text.below.ecg")
                }
            ProdutosView()
                .tabItem{
                    Label("Produtos", systemImage: "cart")
                }
            ServicosView()
                .tabItem{
                    Label("Serviços", systemImage: "lifepreserver")
                }
            MinhaContaView()
                .tabItem{
                    Label("Minha Conta", systemImage: "person.circle")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
