//
//  SKTransition.swift
//  SpriteKit Reference
//
//  Created by Roman Martinez on 27/3/18.
//  Copyright © 2018 Roman Martinez. All rights reserved.
//

import UIKit
import SpriteKit

class MySKTransition: SKTransition {
	// Transitions allow you to add animations when transitioning from one scene into another
	// The 'scene' property on the View is immediately updated once a transition begins
	
	
	/*
	// Type methods - Initializers
	// ------------------------------
	crossFade(withDuration:)
	doorway(withDuration:)
	doorsCloseHorizontal(withDuration:)
	doorsCloseVertical(withDuration:)
	doorsOpenHorizontal(withDuration:)
	doorsOpenVertical(withDuration:)
	fade(withDuration:)
	fade(with:duration:)				// outgoing scene fades to a given colour
	flipHorizontal(withDuration:)
	flipVertical(withDuration:)
	moveIn(with:duration:)				// options are .up, .down, .left, and .right
	push(with:duration:)				// same options
	reveal(with:duration:)				// same options
	
	
	// Init shortcuts
	// ------------------------------
	init(ciFilter:duration:)			// Uses a Core Image filter to perform the transition (inputImage:inputTargetImage:)->outputImage
	*/
	
	
	// [custom initializer to avoid overriding the default ones]
	convenience init(test: String) {
		self.init()
		
		
		// Transition properties
		// ------------------------------
		pausesIncomingScene = false		// get/set whether or not the incoming scene should be paused during the transition. Defaults to true
		pausesOutgoingScene = false		// get/set whether or not the outgoing scene should be paused during the transition. Defaults to true
		
		
	}
}
