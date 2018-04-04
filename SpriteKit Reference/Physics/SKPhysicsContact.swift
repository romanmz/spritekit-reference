//
//  SKPhysicsContact.swift
//  SpriteKit Reference
//
//  Created by Roman Martinez on 4/4/18.
//  Copyright © 2018 Roman Martinez. All rights reserved.
//

import UIKit
import SpriteKit

class MySKPhysicsContact: SKPhysicsContact {
	// This class describes a contact point between two physics bodies with matching category and contact bit masks
	// It's passed as the argument of both methods of the 'SKPhysicsContactDelegate' protocol
	// and is called by objects assigned to a physics world 'contactDelegate' property
	
	
	override init() {
		super.init()
		
		
		// Physics contact properties
		// ------------------------------
		let _ = bodyA				// get the first physics body
		let _ = bodyB				// get the second physics body
		let _ = contactPoint		// get the contact point between the two physics bodies in scene coordinates
		let _ = contactNormal		// get the normal vector that describes the direction of the collision
		let _ = collisionImpulse	// get the force with which the two bodies struck each other, in Newton-seconds
		
		
	}
}
