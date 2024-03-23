//
//  HeroesLogic.swift
//  HeroesApp
//
//  Created by Fran Malo on 23/3/24.
//

import Foundation

final class HeroesLogic {
    static let shared = HeroesLogic()
    
    let interactor: DataInteractor
    let heroes: [Heroe]
    
    init(interactor: DataInteractor = HeroesInteractor.shared) {
        self.interactor = interactor
        self.heroes = (try? interactor.getHeroes()) ?? []
    }
    
    func getHeroe(indexPath: IndexPath) -> Heroe {
        heroes[indexPath.row]
    }
    
    func removeHeroe(heroe: Heroe) {}
    
    func moveHeroe(heroe: Heroe) {}

    func updateHeroe(heroe: Heroe) {}

}


