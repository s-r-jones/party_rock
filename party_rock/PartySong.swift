//
//  PartySong.swift
//  party_rock
//
//  Created by Sam Jones on 9/27/16.
//  Copyright © 2016 Sam Jones. All rights reserved.
//

import Foundation

class PartySong {
    private var _videoURL: String!
    private var _videoImageURL: String!
    private var _videoTitle: String!
    
    //getters 
    var videoURL: String {
        return _videoURL
    }
    
    var videoImageURL: String {
        return _videoImageURL
    }
    
    var videoTitle: String {
        return _videoTitle
    }
    
    
    //initializers
    init(videoURL: String, videoImageURL: String, videoTitle: String) {
        
        _videoURL = videoURL
        _videoImageURL = videoImageURL
        _videoTitle = videoTitle
    }
}
