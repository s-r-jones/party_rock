//
//  VideoVC.swift
//  party_rock
//
//  Created by Sam Jones on 9/27/16.
//  Copyright © 2016 Sam Jones. All rights reserved.
//

import UIKit

class VideoVC: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!
    
    private var _partySong: PartySong!
    
    var partySong: PartySong {
        get {
            return _partySong
        } set {
            _partySong = newValue
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        webView.loadHTMLString(partySong.videoImageURL, baseURL: nil)

        // Do any additional setup after loading the view.
    }

   

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
