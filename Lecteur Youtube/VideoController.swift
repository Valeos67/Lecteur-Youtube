//
//  VideoController.swift
//  Lecteur Youtube
//
//  Created by Valentin SCHERER on 15/08/2018.
//  Copyright © 2018 Valentin SCHERER. All rights reserved.
//

import UIKit
import WebKit


class VideoController: UIViewController {
    
    
    @IBOutlet weak var webview: WKWebView!
    

    var chanson: Chanson?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if chanson != nil {
            chargerVideo(chanson: chanson!)
            }
    }

    func chargerVideo(chanson: Chanson) {
        if let url = URL(string: chanson.videoURL) {
            let request = URLRequest(url: url)
            webview.load(request)
    }
}
}

