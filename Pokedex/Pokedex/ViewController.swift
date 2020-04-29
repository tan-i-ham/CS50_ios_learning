//
//  ViewController.swift
//  Pokedex
//
//  Created by Chen, Yi-Han a on 2020/04/29.
//  Copyright © 2020 CS50. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    let pokemon: [Pokemon] = [
        Pokemon(name: "Pikachu", number: 1),
        Pokemon(name: "frog", number: 21)
    ]
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pokemon.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PokemonCell", for: indexPath)
        cell.textLabel?.text = pokemon[indexPath.row].name
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "PokemonSegue" {
            if let destination = segue.destination as? PokemonViewController{
                destination.pokemon = pokemon[tableView.indexPathForSelectedRow!.row]
            }
        }
    }

}

