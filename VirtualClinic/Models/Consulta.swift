//
//  Consulta.swift
//  VirtualClinic
//
//  Created by Mackley Magalhães da Silva on 31/08/21.
//

import Foundation

struct Consulta: Hashable, Codable, Identifiable {
    
    var id: Int
    var titulo: String
    var imagem: String
    var atendimento: String
    var profissional: String
    var pagamento: Pagamento
    var textodescritivo: String
    
}
struct Pagamento: Hashable, Codable {
    var cash: Bool
    var card: Bool
    var paypal: Bool
}
