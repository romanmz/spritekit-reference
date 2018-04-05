//
//  SKPhysicsJointSpring.swift
//  SpriteKit Reference
//
//  Created by Roman Martinez on 6/4/18.
//  Copyright © 2018 Roman Martinez. All rights reserved.
//

import UIKit
import SpriteKit

class MySKPhysicsJointSpring: SKPhysicsJointSpring {
	// Simulates a spring connecting two physics bodies (the farther the bodies move from each other, the stronger the force applied to bring them back together)
	
	
	/*
	// Type methods - Initializers
	// ------------------------------
	joint(withBodyA:bodyB:anchorA:anchorB:)		// Connects two bodies using two anchor points (relative to the scene)
	*/
	
	
	// [custom initializer to avoid overriding the default ones]
	convenience init(test: String) {
		self.init()
		
		
		// Joint properties
		// ------------------------------
		// frequency		// get/set the amount of stiffness of the spring (lower is more bouncy). Defaults to 0
		// damping			// get/set the amount of friction applied to the spring's movements after bouncing. Defaults to 0
		
		
	}
}
