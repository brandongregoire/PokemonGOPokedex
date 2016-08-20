//
//  Pokemon.swift
//  PokemonGOPokedex
//
//  Created by Brandon Gregoire on 2016-08-19.
//  Copyright © 2016 brandongregoire. All rights reserved.
//

import Foundation
import Alamofire

class Pokemon {
    
    private var _name: String!
    private var _pokedexID: Int!
    private var _description: String!
    private var _type: String!
    private var _defense: String!
    private var _height: String!
    private var _weight: String!
    private var _base: Int!
    private var _nextEvolutionText: String!
    private var _pokemonURL: String!
    
    var name: String {
        return _name
    }
    
    var pokedexID: Int {
        return _pokedexID
    }
    
    init(name: String, pokedexID: Int) {
        
        self._name = name
        self._pokedexID = pokedexID
        
        self._pokemonURL = "\(URL_BASE)\(URL_POKEMON)\(self.pokedexID)/"
    }
    
    func downloadPokemonDetail(completed: DownloadComplete) {
        Alamofire.request(_pokemonURL, withMethod: .get).responseJSON { (response) in
            print(response.result.value)
            if let dict = response.result.value as? Dictionary<String, AnyObject> {
                
                if let weight = dict["weight"] as? String {
                    
                    self._weight = weight
                }
                
                if let height = dict["height"] as? String {
                    
                    self._height = height
                }
                
                if let attack = dict["attack"] as? Int {
                    
                    self._base = attack
                }
                
                if let defense = dict["defense"] as? String {
                    
                    self._defense = defense
                }
                
                print(self._weight)
                print(self._height)
                print(self._base)
                print(self._defense)
            }
        }
    }
}

