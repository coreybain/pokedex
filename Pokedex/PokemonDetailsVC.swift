//
//  PokemonDetailsVC.swift
//  Pokedex
//
//  Created by Corey Baines on 9/01/2016.
//  Copyright © 2016 Corey Baines. All rights reserved.
//

import UIKit
import AVFoundation

class PokemonDetailsVC: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var defenseLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var pokedexLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var attackLabel: UILabel!
    @IBOutlet weak var evolutionLabel: UILabel!
    @IBOutlet weak var currentEvolutionImage: UIImageView!
    @IBOutlet weak var nextEvolutionImage: UIImageView!
    @IBOutlet weak var loadingView: UIView!
    @IBOutlet weak var loadingImage: UIImageView!
    @IBOutlet weak var loadingText: UILabel!
    @IBOutlet weak var evolutionArrow: UIImageView!
    
    var pokemon: Pokemon!
    
    override func viewDidLoad() {
        nameLabel.text = pokemon.name.capitalizedString
        let img = UIImage(named: "\(pokemon.pokedexId)")
        loadingView.alpha = 1
        loadingImage.image = img
        loadingText.text = "Loading \(pokemon.name.capitalizedString)"
        mainImage.image = img
        currentEvolutionImage.image = img
        
        pokemon.downloadPokemonDetails { () -> () in
            // THIS WILL BE CALLED AFTER DOWNLOAD IS DONE
            self.updateUI()
        }
    }
    
    func updateUI() {
        descriptionLabel.text = pokemon.description
        typeLabel.text = pokemon.type
        defenseLabel.text = pokemon.defense
        heightLabel.text = pokemon.height
        weightLabel.text = pokemon.weight
        attackLabel.text = pokemon.attack
        pokedexLabel.text = "\(pokemon.pokedexId)"
        
        if pokemon.nextEvolutionId == "" {
            evolutionLabel.text = " No Evolution"
            nextEvolutionImage.hidden = true
            evolutionArrow.hidden = true
            
        } else {
            nextEvolutionImage.hidden = false
            nextEvolutionImage.image = UIImage(named: pokemon.nextEvolutionId)
            var str = "Next Evolution: \(pokemon.nextEvolutionText)"
            if pokemon.nextEvolutionLevel != "" {
                str += "  -->  Level: \(pokemon.nextEvolutionLevel)"
            }
            evolutionLabel.text = str
        }
        loadingView.alpha = 0
    }
    
    @IBAction func backButtonPressed(sender: AnyObject) {
        
        dismissViewControllerAnimated(true, completion: nil)
        
    }
    
    
}
