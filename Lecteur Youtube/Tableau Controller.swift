//
//  Tableau Controller.swift
//  Lecteur Youtube
//
//  Created by Valentin SCHERER on 15/08/2018.
//  Copyright © 2018 Valentin SCHERER. All rights reserved.
//

import UIKit

class Tableau_Controller: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableview: UITableView!
    
    var chansons = [Chanson]()
    
    let identifiantCell = "ChansonCell"

    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.delegate = self
        tableview.dataSource = self
        ajouterChanson()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chansons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let chanson = chansons[indexPath.row]
        if let cell = tableView.dequeueReusableCell(withIdentifier: identifiantCell) as? ChansonCell {
         cell.creeCell(chanson)
            return cell
        }
        
        
        return UITableViewCell()
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 170
    }
    
    
    func ajouterChanson() {
        chansons = [Chanson]()
        let cool = Chanson(artiste: "Maroon 5", titre: "Girls Like You ft. Cardi B", code: "aJOTlE1K90k")
        chansons.append(cool)
        
        let bien = Chanson(artiste: "Orelsan", titre: "Tout va bien", code: "dq6G2YWoRqA")
        chansons.append(bien)
        
        let basique = Chanson(artiste: "Orelsan", titre: "Basique", code: "2bjk26RwjyU")
        chansons.append(basique)
        
        let ronde = Chanson(artiste: "Orelsan", titre: "La terre est ronde", code: "oGdhZyS2ozo")
        chansons.append(ronde)
        
        let san = Chanson(artiste: "Orelsan", titre: "San", code: "PejyoeG_TmA")
        chansons.append(san)
        
        let seul = Chanson(artiste: "Orelsan", titre: "Si seul", code: "cz-PLtXh7Lo")
        chansons.append(seul)
        
        let inacheves = Chanson(artiste: "Casseurs Flowteurs", titre: "Inachevés", code: "MW1eQZ_PEb4")
        chansons.append(inacheves)
        
//        Reloaddata
        tableview.reloadData()
        
        
        
    }
    
    
}
