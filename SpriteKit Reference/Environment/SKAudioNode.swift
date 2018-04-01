//
//  SKAudioNode.swift
//  SpriteKit Reference
//
//  Created by Roman Martinez on 29/3/18.
//  Copyright © 2018 Roman Martinez. All rights reserved.
//

import UIKit
import SpriteKit

class MySKAudioNode: SKAudioNode {
	// You can quickly add sounds to a scene by using the audio node, they are played using AVFoundation
	// The scene has an 'audioEngine' property that allows overall control of volume and playback
	
	
	/*
	// Init shortcuts
	// ------------------------------
	init(fileNamed:)			Initialize the node based on an audio file from the bundle
	init(url:)					Initialize the node from a URL
	*/
	
	
	// [custom initializer to avoid overriding the default ones]
	convenience init(test: String) {
		self.init(fileNamed: "sample-audio.caf")
		
		
		// Audio node properties
		// ------------------------------
		let _ = avAudioNode		// get/set the current audio asset
		isPositional = true		// get/set whether or not the audio should be altered based on the position of the node (relative to the scene's listener node)
		autoplayLooped = false	// get/set whether or not the audio should play automatically after being added to the scene, and if it will be looped
		
		
	}
}
