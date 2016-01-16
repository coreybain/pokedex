//
//  ViewController.swift
//  Pokedex
//
//  Created by Corey Baines on 6/01/2016.
//  Copyright © 2016 Corey Baines. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UISearchBarDelegate, UIPopoverPresentationControllerDelegate {
    
    @IBOutlet weak var collection: UICollectionView!
    @IBOutlet weak var volumeButton: UIButton!
    @IBOutlet weak var searchBar: UISearchBar!
    
    var pokemon = [Pokemon]()
    var filterPokemon = [Pokemon]()
    var musicPlayer: AVAudioPlayer!
    var inSearchMode = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collection.delegate = self
        collection.dataSource = self
        searchBar.delegate = self
        searchBar.returnKeyType = UIReturnKeyType.Done
        
        initAudio()
        parsePokemonCSV()
    }
    
    func initAudio() {
        if let path = NSBundle.mainBundle().pathForResource("music", ofType: "mp3") {
            do {
                musicPlayer = try AVAudioPlayer(contentsOfURL: NSURL(string: path)!)
                musicPlayer.prepareToPlay()
                musicPlayer.numberOfLoops = -1
                musicPlayer.volume = 0.1
                musicPlayer.play()
            } catch let err as NSError {
                print(err.debugDescription)
            }
        }
        
    }
    
    func parsePokemonCSV() {
        if let path = NSBundle.mainBundle().pathForResource("pokemon", ofType: "csv") {
            do {
                let csv = try CSV(contentsOfURL: path)
                let rows = csv.rows
                for row in rows {
                    if let pokeId = Int(row["id"]!) {
                        if let name = row["identifier"] {
                            let poke = Pokemon(name: name, pokedexId: pokeId)
                            pokemon.append(poke)
                        }
                    }
                }
            } catch let err as NSError {
                print(err.debugDescription)
            }
        }
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCellWithReuseIdentifier("PokeCell", forIndexPath: indexPath) as? PokeCell {
            
            let poke: Pokemon!
            
            if inSearchMode {
                poke = filterPokemon[indexPath.row]
            } else {
                poke = pokemon[indexPath.row]
            }
            cell.configureCell(poke)
            return cell
        } else {
            return UICollectionViewCell()
        }
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        
        var poke: Pokemon!
        
        if inSearchMode {
            poke = filterPokemon[indexPath.row]
        } else {
            poke = pokemon[indexPath.row]
        }
        
        performSegueWithIdentifier("PokemonDetailVC", sender: poke)
        
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if inSearchMode{
            return filterPokemon.count
        }
        return pokemon.count
    }
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        return CGSizeMake(105, 105)
    }
    
    @IBAction func musicButtonPressed(sender: AnyObject) {
        
        if musicPlayer.playing {
            musicPlayer.stop()
            volumeButton.setImage(UIImage(named: "volume_off.png"), forState: .Normal)
        } else {
            musicPlayer.play()
            volumeButton.setImage(UIImage(named: "volume_on.png"), forState: .Normal)
        }
        
    }
    
    func searchBarSearchButtonClicked(searchBar: UISearchBar) {
        view.endEditing(true)
    }
    
    func searchBar(searchBar: UISearchBar, textDidChange searchText: String) {
        if searchBar.text == nil || searchBar.text == "" {
            inSearchMode = false
            view.endEditing(true)
            collection.reloadData()
        } else {
            inSearchMode = true
            let lower = searchBar.text!.lowercaseString
            filterPokemon = pokemon.filter({$0.name.rangeOfString(lower) != nil})
            collection.reloadData()
        }
    }
    
    //MARK: Prepare for Segue methods
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if(segue.identifier == "PokemonDetailVC") {
            if let detailsVC = segue.destinationViewController as? PokemonDetailsVC {
                if let poke = sender as? Pokemon {
                    detailsVC.pokemon = poke
                }
            }
        } /*else if (segue.identifier == "filterPopover") {
            let filterPopoverVC = segue.destinationViewController 
            filterPopoverVC.modalPresentationStyle = UIModalPresentationStyle.Popover
            filterPopoverVC.popoverPresentationController!.delegate = self
        }*/
    }
    /*
    func adaptivePresentationStyleForPresentationController(controller: UIPresentationController) -> UIModalPresentationStyle {
        return UIModalPresentationStyle.None
    }
    */
    
    
    @IBAction func filterButtonPressed(sender: AnyObject) {
    }
}

