//
//  SKFieldNode.swift
//  SpriteKit Reference
//
//  Created by Roman Martinez on 4/4/18.
//  Copyright © 2018 Roman Martinez. All rights reserved.
//

import UIKit
import SpriteKit

class MySKFieldNode: SKFieldNode {
	// Field nodes apply custom effects to physics bodies
	
	
	/*
	// Type methods - Initializers
	// ------------------------------
	dragField()										// Reduces the velocity of bodies (Stoke's law)
	magneticField()									// Spins bodies around their own origin point based on their charge and velocity properties (Lorentz equation pt 2)
													// If the field strength is positive bodies will spin counterclockwise, and viceversa. falloff is set to 2
	electricField()									// Repels bodies from the node based on their charge property (Lorentz equation pt 1). falloff is set to 2
	springField()									// Attracts bodies towards the node in a spring-like manner. falloff is set to -1 (the further away, the stronger the pull)
	vortexField()									// Applies constant perpendicular acceleration to all bodies (strength as meters per second)
	radialGravityField()							// Applies constant acceleration to all bodies towards the node (strength as meters per second). falloff is set to 2
	linearGravityField(withVector:)					// Applies constant acceleration to all bodies towards a given direction (vector as meters per second)
	velocityField(withVector:)						// Applies constant velocity to all bodies towards a given direction (vector as meters per second)
	velocityField(with:)							// Applies constant velocity to all bodies based on a given normal texture
	noiseField(withSmoothness:animationSpeed:)		// Applies constant acceleration to all bodies in random directions
	turbulenceField(withSmoothness:animationSpeed:)	// Applies acceleration in random directions based on each body's velocity
	customField(evaluationBlock:)					// Executes a callback block on every frame, block gets position, velocity, mass, charge and deltaTime, returns a vector_float3
	*/
	
	
	// [custom initializer to avoid overriding the default ones]
	convenience init(test: String) {
		self.init()
		
		
		// Enabling the field node
		// ------------------------------
		isEnabled = true				// get/set whether or not the field node is active
		isExclusive = false				// get/set whether or not bodies affectd by this field should ignore all other fields. Defaults to false
		region = SKRegion.infinite()	// get/set the area (defined as a SKRegion object) that the field affects. Defaults to infinite
		minimumRadius = 0.1				// get/set the minimum value to use to clamp the distance between the field and a body on distance-based effects. Defaults to almost zero
		categoryBitMask = 0b1			// get/set the category number for the field. Defaults to all 32 bits
		
		
		// Field node properties
		// ------------------------------
		strength = 1.0					// get/set the strength of the field. Defaults to 1.0
		falloff = 0						// get/set the rate at which the effects of the field should decay over distance. Defaults to 0 (no decay)
		animationSpeed = 0				// get/set the rate at which the force changes direction (noise and turbulence fields only). Defaults to 0 (no change over time)
		smoothness = 1.0				// get/set the smoothness of the generated force (noise and turbulence fields only). Values from 0 to 1
		// direction					// get/set the direction of the force (linear gravity and velocity fields only)
		// texture						// get/set the normal texture used to define the velocity of the bodies (velocity fields only)
		
		
	}
}
