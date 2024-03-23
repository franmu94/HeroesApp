//
//  HeroesInteractor.swift
//  HeroesApp
//
//  Created by Fran Malo on 23/3/24.
//

import Foundation


protocol DataInteractor {
    func getHeroes() throws -> [Heroe]
}

struct HeroesInteractor: DataInteractor, JSONLoader{
    static let shared = HeroesInteractor()
    
    private init() {}
    
    
    func getHeroes() throws -> [Heroe] {
        guard let jsonUrl = Bundle.main.url(forResource: "SuperHeroes", withExtension: "json") else { return [] }
        let data = try Data(contentsOf: jsonUrl)
        return try getJSON(url: jsonUrl, type: [Heroe].self)
    }
    
    
}


