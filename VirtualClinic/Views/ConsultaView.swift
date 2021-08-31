//
//  ConsultView.swift
//  VirtualClinic
//
//  Created by Mackley Magalhães da Silva on 30/08/21.
//

import SwiftUI

struct ConsultaView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    var body: some View {
        NavigationView{
            GeometryReader { view in
                List(listaConsultas){ consulta in
                    NavigationLink(
                        destination:ConsultaDetalhes(consulta: consulta)
                            .navigationTitle(consulta.titulo)){
                        ConsultaCelula(consulta: consulta)
                    }
                    
                }
            }
            .edgesIgnoringSafeArea(.all)
            .navigationBarTitle(Text("Consultas Recentes"), displayMode: .automatic)
        }
        .navigationViewStyle(StackNavigationViewStyle())
        
    }
}

struct ConsultView_Previews: PreviewProvider {
    static var previews: some View {
        ConsultaView()
    }
}
