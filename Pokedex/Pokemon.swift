//
//  Pokemon.swift
//  Pokedex
//
//  Created by Corey Baines on 6/01/2016.
//  Copyright © 2016 Corey Baines. All rights reserved.
//

import Foundation
import Alamofire

class Pokemon {
    private var _name: String!
    private var _pokedexId: Int!
    private var _description: String!
    private var _type: String!
    private var _defense: String!
    private var _height: String!
    private var _weight: String!
    private var _attack: String!
    private var _nextEvolutionText: String!
    private var _nextEvolutionId: String!
    private var _nextEvolitionLevel: String!
    private var _pokemonUrl: String!

    var name: String {
        return _name
    }
    
    var pokedexId: Int {
        return _pokedexId
    }
    
    var description: String {
        get {
            if _description == nil {
                _description = ""
            }
        return _description
        }
    }
    
    var type: String {
        get {
            if _type == nil {
                _type = ""
            }
        return _type
        }
    }
    
    var defense: String {
        get {
            if _defense == nil {
                _defense = ""
            }
        return _defense
        }
    }
    
    var height: String {
        get {
            if _height == nil {
                _height = ""
            }
        return _height
        }
    }
    
    var weight: String {
        get {
            if _weight == nil {
                _weight = ""
            }
        return _weight
        }
    }
    
    var attack: String {
        get {
            if _attack == nil {
                _attack = ""
            }
        return _attack
        }
    }
    
    var nextEvolutionText: String {
        get {
            if _nextEvolutionText == nil {
                _nextEvolutionText = ""
            }
            return _nextEvolutionText
        }
    }
    
    var nextEvolutionId: String {
        get {
            if _nextEvolutionId == nil {
                _nextEvolutionId = ""
            }
            return _nextEvolutionId
        }
    }
    
    var nextEvolutionLevel: String {
        get {
            if _nextEvolitionLevel == nil {
                _nextEvolitionLevel = ""
            }
            return _nextEvolitionLevel
        }
    }
    
    init(name: String, pokedexId: Int) {
        self._name = name
        self._pokedexId = pokedexId
        
        _pokemonUrl = "\(URL_BASE)\(URL_POKEMON)\(self.pokedexId)/"
    }
    
    func downloadPokemonDetails(completed: DownloadComplete) {
        
        if let url = NSURL(string: _pokemonUrl) {
            Alamofire.request(.GET, url).responseJSON { response in
                let result = response.result
                if let dict = result.value as? Dictionary<String, AnyObject> {
                    
                    //MARK: JSON TO FEILDS
                    if let weight = dict["weight"] as? String {
                        self._weight = weight
                    }
                    
                    if let height = dict["height"] as? String {
                        self._height = height
                    }
                    
                    if let attack = dict["attack"] as? Int {
                        self._attack = "\(attack)"
                    }
                    
                    if let defense = dict["defense"] as? Int {
                        self._defense = "\(defense)"
                    }
                    
                    print(self._weight)
                    print(self._height)
                    if self._attack == nil {
                        print("nil")
                    } else {
                        print(self._attack)
                    }
                    if self._defense == nil {
                        print("nil")
                    } else {
                        print(self._defense)
                    }
                    
                    if let types = dict["types"] as? [Dictionary<String, String>] where types.count > 0 {
                        if let name = types[0] ["name"] {
                            self._type = name.capitalizedString
                        }
                        
                        if types.count > 1 {
                            for var x = 1; x < types.count; x++ {
                                if let name = types[x] ["name"] {
                                    self._type! += "/\(name.capitalizedString)"
                                }
                            }
                        }
                    } else {
                        self._type = ""
                    }
                    
                    print(self._type)
                    
                    if let descArry = dict["descriptions"] as? [Dictionary<String, String>] where descArry.count > 0{
                        
                        if let descUrl = descArry[0] ["resource_uri"] {
                            if let nsurl = NSURL(string: "\(URL_BASE)\(descUrl)") {
                                Alamofire.request(.GET, nsurl).responseJSON { response in
                                    let result = response.result
                                    if let descDict = result.value as? Dictionary<String, AnyObject> {
                                        //print(descDict.debugDescription)
                                        if let description = descDict["description"] as? String {
                                            let newDescription = description.stringByReplacingOccurrencesOfString("POKMON", withString: "Pokemon")
                                            self._description = newDescription
                                            print(self._description)
                                        }
                                    }
                                    completed()
                                }
                            }
                        } else {
                            self._description = ""
                        }
                    }
                    
                    if let evolutions = dict["evolutions"] as? [Dictionary<String, AnyObject>] where evolutions.count > 0 {
                        if let to = evolutions[0]["to"] as? String {
                            //MEGA is not found and not supported right now
                            if to.rangeOfString("mega") == nil {
                                if let uri = evolutions[0] [ "resource_uri"] as? String {
                                    let newString = uri.stringByReplacingOccurrencesOfString("/api/v1/pokemon/", withString: "")
                                    let num = newString.stringByReplacingOccurrencesOfString("/", withString: "")
                                    
                                    self._nextEvolutionId = num
                                    self._nextEvolutionText = to
                                    
                                    if let level = evolutions[0] ["level"] as? Int {
                                        self._nextEvolitionLevel = "\(level)"
                                    }
                                }
                            } else {
                                
                            }
                        }
                    }
                }
                
            }
            
        }
        
    }


}




















