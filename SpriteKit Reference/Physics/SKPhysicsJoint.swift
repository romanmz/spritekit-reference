//
//  SKPhysicsJoint.swift
//  SpriteKit Reference
//
//  Created by Roman Martinez on 5/4/18.
//  Copyright © 2018 Roman Martinez. All rights reserved.
//

import UIKit
import SpriteKit

class MySKPhysicsJoint: SKPhysicsJoint {
	// You use joints to link physics bodies and give them special behaviours
	// This is an abstract class that defines the common properties and methods for all types of joints
	// To activate a joint, both of its bodies need to be attached to nodes already added to the scene, and the joint needs to be added to the physics world
	
	
	// [custom initializer to avoid overriding the default ones]
	convenience init(test: String) {
		self.init()
		
		
		// Physics joint properties and methods
		// ------------------------------
		// bodyA			// get/set the first physics body
		// bodyB			// get/set the second physics body
		// reactionForce	// get the current force directed towards the joint's anchor (in Newtons)
		// reactionTorque	// get the current torque directed towards the joint's anchor (in Newton-meters)
		
		
	}
}
