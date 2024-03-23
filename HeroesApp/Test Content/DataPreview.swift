//
//  DataPreview.swift
//  HeroesApp
//
//  Created by Fran Malo on 23/3/24.
//

import Foundation

struct ScoreInteractorTest: DataInteractor, JSONLoader {
    func getHeroes() throws -> [Heroe] {
        guard let url = Bundle.main.url(forResource: "HeroesDataTest", withExtension: "json") else { return [] }
        return try getJSON(url: url, type: [Heroe].self)
    }
}
