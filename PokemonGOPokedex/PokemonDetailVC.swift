//
//  PokemonDetailVC.swift
//  PokemonGOPokedex
//
//  Created by Brandon Gregoire on 2016-08-19.
//  Copyright © 2016 brandongregoire. All rights reserved.
//

import UIKit

class PokemonDetailVC: UIViewController {

    var pokemon: Pokemon!
    
    @IBOutlet var nameLbl: UILabel!
    @IBOutlet var mainImg: UIImageView!
    @IBOutlet var descriptionLbl: UILabel!
    @IBOutlet var typeLbl: UILabel!
    @IBOutlet var defenseLbl: UILabel!
    @IBOutlet var heightLbl: UILabel!
    @IBOutlet var pokedexIDLbl: UILabel!
    @IBOutlet var weightLbl: UILabel!
    @IBOutlet var basicAttackLbl: UILabel!
    @IBOutlet var currentEvoImg: UIImageView!
    @IBOutlet var nextEvoImg: UIImageView!
    @IBOutlet var evoLbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        nameLbl.text = pokemon.name
        pokemon.downloadPokemonDetail {
            //Whatever is wrote here is only called when the network call is complete
            self.updateUI()
        }
    }
    
    func updateUI() {
        
    }

    @IBAction func backBtnPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
