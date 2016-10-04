//
//  PartyCellTableViewCell.swift
//  party_rock
//
//  Created by Sam Jones on 9/27/16.
//  Copyright © 2016 Sam Jones. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {

    @IBOutlet weak var videoPreviewImage: UIImageView!
    @IBOutlet weak var videoTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func updateUI(partySong: PartySong){
        videoTitle.text = partySong.videoTitle
        
        let url = URL(string: partySong.videoImageURL)!
        
        //get the image and videos async on background-thread then take data back to ui-thread
        
        DispatchQueue.global().async {
            do {
                let data = try Data(contentsOf: url)
                DispatchQueue.global().sync {
                    self.videoPreviewImage.image = UIImage(data: data)
                }
            } catch {
                // handle errors
            }
        }
        
    }
}
