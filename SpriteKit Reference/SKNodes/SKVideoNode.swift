//
//  SKVideoNode.swift
//  SpriteKit Reference
//
//  Created by Roman Martinez on 17/3/18.
//  Copyright © 2018 Roman Martinez. All rights reserved.
//

import UIKit
import GameKit

class MySKVideoNode: SKVideoNode {
	// You can use video nodes to animate visual behaviors that would be expensive to define using a collection of textures
	// this node provides very basic controls, for more advanced functionality initialize the node using an existing AVPlayer object
	
	
	/*
	// Init shortcuts
	// ------------------------------
	init(fileNamed:)				// Loads a video from a file in the app bundle
	init(url:)						// Loads a video from a URL
	init(avPlayer:)					// Initializes a video node using an existing AVPlayer object
	*/
	
	
	// [custom initializer to avoid overriding the default ones]
	convenience init(test: String) {
		self.init()
		
		
		// Video properties
		// ------------------------------
		let _ = size				// get/set the size of the video. Defaults to the size of the initialized video
		let _ = anchorPoint			// get/set the anchor point of the video. Defaults to the center (0.5,0.5)
		
		
		// Video playback
		// ------------------------------
		pause()						// Pauses the video
		play()						// Plays the video
		
		
	}
}
