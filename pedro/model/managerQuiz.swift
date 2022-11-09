//
//  managerQuiz.swift
//  pedro
//
//  Created by ICMMAC08-5617 on 09/11/22.
//

import Foundation

class managerQuiz {
    var quizes:[Quiz] = [
        Quiz(pergunta: "Em que ano o flamengo ganhou o mundial do liverpool?", respostas: ["81","92","82","83"], respostaCerta: 1),
        Quiz(pergunta: "contra quem o flamengo ganhou o brasleirao de 2022?", respostas: ["Corinthians","Palmeiras","Gremio","Vasco"], respostaCerta: 1),
        Quiz(pergunta: "O numero de jogadores em campo", respostas: ["12","11","10","5"], respostaCerta: 2),
        Quiz(pergunta: "Qual o nome original do clube?", respostas: ["clube de regatas do flamengo","clube oficial do flamengo","clube original do flamengo","clube de araras do flamengo"], respostaCerta: 1),
        Quiz(pergunta: "oq aconteceu em dezembro de 81 de tão importante para o flamengo?", respostas: ["mundial","Brasileirao","Carioca","Copinha"], respostaCerta: 1),
                         
    ]
    var index = 0
    
    func  reloadQuiz() -> Quiz {
        index = Int.random(in: 0...4)
        quizes = quizes.shuffled()
        return quizes[index]
        
        
    }
    
}
