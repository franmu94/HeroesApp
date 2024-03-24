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
    var heroes: [Heroe]
    
    init(interactor: DataInteractor = HeroesInteractor.shared) {
        self.interactor = interactor
        self.heroes = (try? interactor.getHeroes()) ?? []
    }
    
    func getHeroe(indexPath: IndexPath) -> Heroe {
        heroes[indexPath.row]
    }
    
    func removeHeroe(indexPath: IndexPath) {
        heroes.remove(at: indexPath.row)
    }
    
    func moveHeroe(indexPath: IndexPath, to: IndexPath) {
        heroes.swapAt(indexPath.row, to.row)
    }

    func updateHeroe(heroe: Heroe) {}

}


