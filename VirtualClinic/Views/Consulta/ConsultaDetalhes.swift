//
//  ConsultaDetalhes.swift
//  VirtualClinic
//
//  Created by Mackley Magalhães da Silva on 31/08/21.
//

import SwiftUI

struct ConsultaDetalhes: View {
    
    let consulta: Consulta
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                VStack {
                    VStack(alignment: .leading){
                        Image(consulta.imagem)
                            .resizable()
                            .frame(minWidth: 300, idealWidth: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxWidth: 300, minHeight: 300, idealHeight: 100, maxHeight: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                    }
                    Text(consulta.profissional)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .padding(.bottom)
                }
            }
            VStack(alignment: .leading){
                Text("Atendendo nas cidades de:")
                    .font(.subheadline)
                Text(consulta.atendimento)
                    .font(.title2)
                    .padding(.bottom)
                Text(consulta.textodescritivo)
            }
        }
    }
}

struct ConsultaDetalhes_Previews: PreviewProvider {
    static var previews: some View {
        ConsultaDetalhes(consulta: listaConsultas[1])
    }
}
