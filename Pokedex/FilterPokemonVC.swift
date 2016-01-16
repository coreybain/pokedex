//
//  FilterPokemonVC.swift
//  Pokedex
//
//  Created by Corey Baines on 9/01/2016.
//  Copyright © 2016 Corey Baines. All rights reserved.
//

import UIKit

class FilterPokemonVC: UIViewController {

    @IBOutlet var pokemonTypeButtons: [UIButton]!
    @IBOutlet weak var normalTypeButton: UIButton!
    @IBOutlet weak var fireTypeButton: UIButton!
    @IBOutlet weak var waterTypeButton: UIButton!
    @IBOutlet weak var electricTypeButton: UIButton!
    @IBOutlet weak var grassTypeButton: UIButton!
    @IBOutlet weak var iceTypeButton: UIButton!
    @IBOutlet weak var fightingTypeButton: UIButton!
    @IBOutlet weak var poisonTypeButton: UIButton!
    @IBOutlet weak var groundTypeButton: UIButton!
    @IBOutlet weak var flyingTypeButton: UIButton!
    @IBOutlet weak var physicTypeButton: UIButton!
    @IBOutlet weak var bugTypeButton: UIButton!
    @IBOutlet weak var rockTypeButton: UIButton!
    @IBOutlet weak var ghostTypeButton: UIButton!
    @IBOutlet weak var dragonTypeButton: UIButton!
    @IBOutlet weak var darkTypeButton: UIButton!
    @IBOutlet weak var steelTypeButton: UIButton!
    @IBOutlet weak var fairyTypeButton: UIButton!
    
    var normalType: Bool = false
    var fireType: Bool = false
    var waterType: Bool = false
    var electricType: Bool = false
    var grassType: Bool = false
    var iceType: Bool = false
    var fightingType: Bool = false
    var poisonType: Bool = false
    var groundType: Bool = false
    var flyingType: Bool = false
    var physicType: Bool = false
    var bugType: Bool = false
    var rockType: Bool = false
    var ghostType: Bool = false
    var dragonType: Bool = false
    var darkType: Bool = false
    var steelType: Bool = false
    var fairyType: Bool = false
    
    
    override func viewDidLoad() {
        
        for pokemonTypeButtons in self.pokemonTypeButtons {
            pokemonTypeButtons.backgroundColor = UIColor.clearColor()
            pokemonTypeButtons.layer.cornerRadius = 8
            pokemonTypeButtons.layer.borderWidth = 1
            pokemonTypeButtons.layer.borderColor = UIColor.blueColor().CGColor
        }
        
    }
    
    
    @IBAction func normalPressed(sender: UIButton!) {
        if normalType == false {
            normalTypeButton.backgroundColor = UIColor.blueColor()
            normalTypeButton.layer.cornerRadius = 8
            normalTypeButton.layer.borderWidth = 1
            normalTypeButton.layer.borderColor = UIColor.whiteColor().CGColor
            normalType = true
        } else if normalType == true {
            normalTypeButton.backgroundColor = UIColor.clearColor()
            normalTypeButton.layer.cornerRadius = 8
            normalTypeButton.layer.borderWidth = 1
            normalTypeButton.layer.borderColor = UIColor.blueColor().CGColor
            normalType = false
        }
    }
    @IBAction func firePressed(sender: AnyObject) {
        if fireType == false {
            fireTypeButton.backgroundColor = UIColor.blueColor()
            fireTypeButton.layer.cornerRadius = 8
            fireTypeButton.layer.borderWidth = 1
            fireTypeButton.layer.borderColor = UIColor.whiteColor().CGColor
            normalType = true
        } else if fireType == true {
            fireTypeButton.backgroundColor = UIColor.clearColor()
            fireTypeButton.layer.cornerRadius = 8
            fireTypeButton.layer.borderWidth = 1
            fireTypeButton.layer.borderColor = UIColor.blueColor().CGColor
            fireType = false
        }
    }
    @IBAction func waterPressed(sender: AnyObject) {
        if waterType == false {
            waterTypeButton.backgroundColor = UIColor.blueColor()
            waterTypeButton.layer.cornerRadius = 8
            waterTypeButton.layer.borderWidth = 1
            waterTypeButton.layer.borderColor = UIColor.whiteColor().CGColor
            waterType = true
        } else if waterType == true {
            waterTypeButton.backgroundColor = UIColor.clearColor()
            waterTypeButton.layer.cornerRadius = 8
            waterTypeButton.layer.borderWidth = 1
            waterTypeButton.layer.borderColor = UIColor.blueColor().CGColor
            waterType = false
        }
    }
    @IBAction func electricPressed(sender: AnyObject) {
        if electricType == false {
            electricTypeButton.backgroundColor = UIColor.blueColor()
            electricTypeButton.layer.cornerRadius = 8
            electricTypeButton.layer.borderWidth = 1
            electricTypeButton.layer.borderColor = UIColor.whiteColor().CGColor
            electricType = true
        } else if electricType == true {
            electricTypeButton.backgroundColor = UIColor.clearColor()
            electricTypeButton.layer.cornerRadius = 8
            electricTypeButton.layer.borderWidth = 1
            electricTypeButton.layer.borderColor = UIColor.blueColor().CGColor
            electricType = false
        }
    }
    @IBAction func grassPressed(sender: AnyObject) {
        if grassType == false {
            grassTypeButton.backgroundColor = UIColor.blueColor()
            grassTypeButton.layer.cornerRadius = 8
            grassTypeButton.layer.borderWidth = 1
            grassTypeButton.layer.borderColor = UIColor.whiteColor().CGColor
            grassType = true
        } else if grassType == true {
            grassTypeButton.backgroundColor = UIColor.clearColor()
            grassTypeButton.layer.cornerRadius = 8
            grassTypeButton.layer.borderWidth = 1
            grassTypeButton.layer.borderColor = UIColor.blueColor().CGColor
            grassType = false
        }
    }
    @IBAction func icePressed(sender: AnyObject) {
        if iceType == false {
            iceTypeButton.backgroundColor = UIColor.blueColor()
            iceTypeButton.layer.cornerRadius = 8
            iceTypeButton.layer.borderWidth = 1
            iceTypeButton.layer.borderColor = UIColor.whiteColor().CGColor
            iceType = true
        } else if iceType == true {
            iceTypeButton.backgroundColor = UIColor.clearColor()
            iceTypeButton.layer.cornerRadius = 8
            iceTypeButton.layer.borderWidth = 1
            iceTypeButton.layer.borderColor = UIColor.blueColor().CGColor
            iceType = false
        }
    }
    @IBAction func fightingPressed(sender: AnyObject) {
        if fightingType == false {
            fightingTypeButton.backgroundColor = UIColor.blueColor()
            fightingTypeButton.layer.cornerRadius = 8
            fightingTypeButton.layer.borderWidth = 1
            fightingTypeButton.layer.borderColor = UIColor.whiteColor().CGColor
            fightingType = true
        } else if fightingType == true {
            fightingTypeButton.backgroundColor = UIColor.clearColor()
            fightingTypeButton.layer.cornerRadius = 8
            fightingTypeButton.layer.borderWidth = 1
            fightingTypeButton.layer.borderColor = UIColor.blueColor().CGColor
            fightingType = false
        }
    }
    @IBAction func poisonPressed(sender: AnyObject) {
        if poisonType == false {
            poisonTypeButton.backgroundColor = UIColor.blueColor()
            poisonTypeButton.layer.cornerRadius = 8
            poisonTypeButton.layer.borderWidth = 1
            poisonTypeButton.layer.borderColor = UIColor.whiteColor().CGColor
            poisonType = true
        } else if poisonType == true {
            poisonTypeButton.backgroundColor = UIColor.clearColor()
            poisonTypeButton.layer.cornerRadius = 8
            poisonTypeButton.layer.borderWidth = 1
            poisonTypeButton.layer.borderColor = UIColor.blueColor().CGColor
            poisonType = false
        }
    }
    @IBAction func groundPressed(sender: AnyObject) {
        if groundType == false {
            groundTypeButton.backgroundColor = UIColor.blueColor()
            groundTypeButton.layer.cornerRadius = 8
            groundTypeButton.layer.borderWidth = 1
            groundTypeButton.layer.borderColor = UIColor.whiteColor().CGColor
            groundType = true
        } else if groundType == true {
            groundTypeButton.backgroundColor = UIColor.clearColor()
            groundTypeButton.layer.cornerRadius = 8
            groundTypeButton.layer.borderWidth = 1
            groundTypeButton.layer.borderColor = UIColor.blueColor().CGColor
            groundType = false
        }
    }
    @IBAction func flyingPressed(sender: AnyObject) {
        if flyingType == false {
            flyingTypeButton.backgroundColor = UIColor.blueColor()
            flyingTypeButton.layer.cornerRadius = 8
            flyingTypeButton.layer.borderWidth = 1
            flyingTypeButton.layer.borderColor = UIColor.whiteColor().CGColor
            flyingType = true
        } else if flyingType == true {
            flyingTypeButton.backgroundColor = UIColor.clearColor()
            flyingTypeButton.layer.cornerRadius = 8
            flyingTypeButton.layer.borderWidth = 1
            flyingTypeButton.layer.borderColor = UIColor.blueColor().CGColor
            flyingType = false
        }
    }
    @IBAction func physicPressed(sender: AnyObject) {
        if physicType == false {
            physicTypeButton.backgroundColor = UIColor.blueColor()
            physicTypeButton.layer.cornerRadius = 8
            physicTypeButton.layer.borderWidth = 1
            physicTypeButton.layer.borderColor = UIColor.whiteColor().CGColor
            physicType = true
        } else if physicType == true {
            physicTypeButton.backgroundColor = UIColor.clearColor()
            physicTypeButton.layer.cornerRadius = 8
            physicTypeButton.layer.borderWidth = 1
            physicTypeButton.layer.borderColor = UIColor.blueColor().CGColor
            physicType = false
        }
    }
    @IBAction func bugPressed(sender: AnyObject) {
        if bugType == false {
            bugTypeButton.backgroundColor = UIColor.blueColor()
            bugTypeButton.layer.cornerRadius = 8
            bugTypeButton.layer.borderWidth = 1
            bugTypeButton.layer.borderColor = UIColor.whiteColor().CGColor
            bugType = true
        } else if bugType == true {
            bugTypeButton.backgroundColor = UIColor.clearColor()
            bugTypeButton.layer.cornerRadius = 8
            bugTypeButton.layer.borderWidth = 1
            bugTypeButton.layer.borderColor = UIColor.blueColor().CGColor
            bugType = false
        }
    }
    @IBAction func rockPressed(sender: AnyObject) {
        if rockType == false {
            rockTypeButton.backgroundColor = UIColor.blueColor()
            rockTypeButton.layer.cornerRadius = 8
            rockTypeButton.layer.borderWidth = 1
            rockTypeButton.layer.borderColor = UIColor.whiteColor().CGColor
            rockType = true
        } else if rockType == true {
            rockTypeButton.backgroundColor = UIColor.clearColor()
            rockTypeButton.layer.cornerRadius = 8
            rockTypeButton.layer.borderWidth = 1
            rockTypeButton.layer.borderColor = UIColor.blueColor().CGColor
            rockType = false
        }
    }
    @IBAction func ghostPressed(sender: AnyObject) {
        if ghostType == false {
            ghostTypeButton.backgroundColor = UIColor.blueColor()
            ghostTypeButton.layer.cornerRadius = 8
            ghostTypeButton.layer.borderWidth = 1
            ghostTypeButton.layer.borderColor = UIColor.whiteColor().CGColor
            ghostType = true
        } else if ghostType == true {
            ghostTypeButton.backgroundColor = UIColor.clearColor()
            ghostTypeButton.layer.cornerRadius = 8
            ghostTypeButton.layer.borderWidth = 1
            ghostTypeButton.layer.borderColor = UIColor.blueColor().CGColor
            ghostType = false
        }
    }
    @IBAction func dragonPressed(sender: AnyObject) {
        if dragonType == false {
            dragonTypeButton.backgroundColor = UIColor.blueColor()
            dragonTypeButton.layer.cornerRadius = 8
            dragonTypeButton.layer.borderWidth = 1
            dragonTypeButton.layer.borderColor = UIColor.whiteColor().CGColor
            dragonType = true
        } else if dragonType == true {
            dragonTypeButton.backgroundColor = UIColor.clearColor()
            dragonTypeButton.layer.cornerRadius = 8
            dragonTypeButton.layer.borderWidth = 1
            dragonTypeButton.layer.borderColor = UIColor.blueColor().CGColor
            dragonType = false
        }
    }
    @IBAction func darkPressed(sender: AnyObject) {
        if darkType == false {
            darkTypeButton.backgroundColor = UIColor.blueColor()
            darkTypeButton.layer.cornerRadius = 8
            darkTypeButton.layer.borderWidth = 1
            darkTypeButton.layer.borderColor = UIColor.whiteColor().CGColor
            darkType = true
        } else if darkType == true {
            darkTypeButton.backgroundColor = UIColor.clearColor()
            darkTypeButton.layer.cornerRadius = 8
            darkTypeButton.layer.borderWidth = 1
            darkTypeButton.layer.borderColor = UIColor.blueColor().CGColor
            darkType = false
        }
    }
    @IBAction func steelPressed(sender: AnyObject) {
        if steelType == false {
            steelTypeButton.backgroundColor = UIColor.blueColor()
            steelTypeButton.layer.cornerRadius = 8
            steelTypeButton.layer.borderWidth = 1
            steelTypeButton.layer.borderColor = UIColor.whiteColor().CGColor
            steelType = true
        } else if steelType == true {
            steelTypeButton.backgroundColor = UIColor.clearColor()
            steelTypeButton.layer.cornerRadius = 8
            steelTypeButton.layer.borderWidth = 1
            steelTypeButton.layer.borderColor = UIColor.blueColor().CGColor
            steelType = false
        }
    }
    @IBAction func fairyPressed(sender: AnyObject) {
        if fairyType == false {
            fairyTypeButton.backgroundColor = UIColor.blueColor()
            fairyTypeButton.layer.cornerRadius = 8
            fairyTypeButton.layer.borderWidth = 1
            fairyTypeButton.layer.borderColor = UIColor.whiteColor().CGColor
            fairyType = true
        } else if fairyType == true {
            fairyTypeButton.backgroundColor = UIColor.clearColor()
            fairyTypeButton.layer.cornerRadius = 8
            fairyTypeButton.layer.borderWidth = 1
            fairyTypeButton.layer.borderColor = UIColor.blueColor().CGColor
            fairyType = false
        }
    }

    @IBAction func cancelButtonPressed(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }








}