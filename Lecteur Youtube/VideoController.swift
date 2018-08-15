//
//  VideoController.swift
//  Lecteur Youtube
//
//  Created by Valentin SCHERER on 15/08/2018.
//  Copyright © 2018 Valentin SCHERER. All rights reserved.
//

import UIKit

class VideoController: UIViewController {

    var chanson: Chanson?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .blue
        if chanson != nil {
            title = chanson?.titre
        }
    }


}
