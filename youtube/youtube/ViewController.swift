//
//  ViewController.swift
//  youtube
//
//  Created by Mac on 10/03/2020.
//  Copyright © 2020 Mac. All rights reserved.
//

import UIKit
import YoutubePlayer_in_WKWebView
class ViewController: UIViewController {
@IBOutlet weak var playerView: WKYTPlayerView!
    override func viewDidLoad() {
        print (getYoutubeId(youtubeUrl: "https://www.youtube.com/watch?v=Y7ojcTR78qE&spfreload=9"))
        playerView.load(withVideoId: getYoutubeId(youtubeUrl: "https://www.youtube.com/watch?v=Y7ojcTR78qE&spfreload=9")!)
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func getYoutubeId(youtubeUrl: String) -> String? {
        return URLComponents(string: youtubeUrl)?.queryItems?.first(where: { $0.name == "v" })?.value
    }
}

