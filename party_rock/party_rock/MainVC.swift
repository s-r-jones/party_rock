//
//  ViewController.swift
//  party_rock
//
//  Created by Sam Jones on 9/27/16.
//  Copyright © 2016 Sam Jones. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var partySongs = [PartySong]()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        let p1 = PartySong(videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/rSSpqOyF8wc\" frameborder=\"0\" allowfullscreen></iframe>", videoImageURL: "http://vignette2.wikia.nocookie.net/spaceghost/images/4/49/Space_Ghost.jpg/revision/latest?cb=20101203010813", videoTitle: "SPACE GHOST")
        let p2 = PartySong(videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/zDP_lfh7Sfg\" frameborder=\"0\" allowfullscreen></iframe>", videoImageURL: "http://statici.behindthevoiceactors.com/behindthevoiceactors/_img/chars/moltar-space-ghost-coast-to-coast-4.06.jpg", videoTitle: "MOLTAR")
        let p3 = PartySong(videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/VGzQ32o8PXc\" frameborder=\"0\" allowfullscreen></iframe>", videoImageURL: "https://i.ytimg.com/vi/TZOzNvfYKoY/hqdefault.jpg", videoTitle: "BRAK")
        let p4 = PartySong(videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/skBF4T-CCEo\" frameborder=\"0\" allowfullscreen></iframe>", videoImageURL: "http://vignette1.wikia.nocookie.net/spaceghost/images/a/a4/Zorak.jpg/revision/latest?cb=20110707214108", videoTitle: "ZORAK")
        let p5 = PartySong(videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/XCp6g4mnK9c\" frameborder=\"0\" allowfullscreen></iframe>", videoImageURL: "http://images.designntrend.com/data/images/full/92697/birdman.jpg?w=780", videoTitle: "BIRD MAN")
        
        partySongs.append(p1)
        partySongs.append(p2)
        partySongs.append(p3)
        partySongs.append(p4)
        partySongs.append(p5)
    }
    
    
    
   

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PartyCell", for: indexPath) as? PartyCell {
            
            let partySong = partySongs[indexPath.row]
            
            cell.updateUI(partySong: partySong)
            
            return cell
        } else {
            return UITableViewCell()
        }
        
        
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return partySongs.count
    }


}

