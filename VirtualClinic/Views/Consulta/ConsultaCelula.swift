//
//  ConsultaCelula.swift
//  VirtualClinic
//
//  Created by Mackley Magalhães da Silva on 30/08/21.
//

import SwiftUI

struct ConsultaCelula: View {
    
    var consulta: Consulta
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var body: some View {
        GeometryReader { geometry in
            VStack(alignment: .leading){
                HStack{
                    VStack{
                        Image(consulta.imagem)
                            .resizable()
                            .frame(width: 120, height: self.horizontalSizeClass == .compact ? 125 : 200)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            .clipped()
                        Text("Icones Pay")
                            .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.004, green: 0.691, blue: 0.63)/*@END_MENU_TOKEN@*/)
                    }
                    VStack(alignment: .leading){
                        Text(consulta.titulo)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .font(.largeTitle)
                            .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.004, green: 0.691, blue: 0.63)/*@END_MENU_TOKEN@*/)
                        Text(consulta.profissional)
                            .font(.title2)
                            .fontWeight(.semibold)
                            .foregroundColor(Color(red: 0.007, green: 0.468, blue: 0.727))
                        Text("Médico - CRM: 12312312")
                            .font(.caption)
                            .foregroundColor(Color(red: 0.007, green: 0.468, blue: 0.727))
                        Text("Atua em:")
                            .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.004, green: 0.691, blue: 0.63)/*@END_MENU_TOKEN@*/)
                        Text(consulta.atendimento)
                            .foregroundColor(Color(red: 0.007, green: 0.468, blue: 0.727))
                        
                    }
                }
            }
        }
        .frame(width: 300, height: 160)
        .shadow(radius: 5,x:1,y:1)
        
    }
}

struct ConsultaCelula_Previews: PreviewProvider {
    static var previews: some View {
    
        ConsultaCelula(consulta: listaConsultas[0])
    }
}
