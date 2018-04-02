//
//  SKPhysicsWorld.swift
//  SpriteKit Reference
//
//  Created by Roman Martinez on 2/4/18.
//  Copyright © 2018 Roman Martinez. All rights reserved.
//

import UIKit
import SpriteKit

class MySKPhysicsWorld: SKPhysicsWorld {
	// Defines the physics simulation settings for a scene
	// You don't really have to create a physics world object manually, just work with the existing physicsWorld property on scene objects
	
	
	// [custom initializer to avoid overriding the default ones]
	convenience init(test: String) {
		self.init()
		
		
		// Global properties
		// ------------------------------
		gravity = CGVector(dx: 0, dy: 9.8)	// get/set the gravitaional acceleration applied to physics bodies as meters per second. Defaults to (0.0, 9.8)
		speed = 1.0							// get/set the speed at which the simulation should run. 1.0 is normal speed, 2.0 would be twice, 0.0 will pause it. Defaults to 1.0
		contactDelegate = nil				// get/set the object to use as a delegate to handle collisions between physics bodies ???
		
		
		// Adding SKPhysicsJoints ???
		// ------------------------------
		// add(_:)							// adds a joint to the physics simulation
		// remove(_:)						// removes a specific joint from the simulation
		// removeAllJoints()				// removes all existing joints from the simulation
		
		
		// Detecting physics bodies
		// ------------------------------
		// body(alongRayStart:end:)						// returns the first physics body that intersects the given ray (line). it's not necessarily the closest one
		// body(at:)									// same but checking a point
		// body(in:)									// same but checking a rectangle
		// enumerateBodies(alongRayStart:end:using:)	// finds and runs a callback on all physics bodies that intersect the given ray.
														// the callback receives 4 arguments: physicsBody, pointOfContact, normalVector, stopLoop
		// enumerateBodies(at:using:)					// same but checking a point. The callback receives 2 arguments: physicsBody, stopLoop
		// enumerateBodies(in:using:)					// same but checking a rectangle. The callback receives 2 arguments: physicsBody, stopLoop
		
		
		// Detecting force fields
		// ------------------------------
		// sampleFields(at:)				// returns the sum of all the forces that are being applied to a given point in the scene
											// this is based on a hypotetical physics body placed on that point, with a mass of 1, no charge, no velocity, and affected by all fields
		
		
	}
}
