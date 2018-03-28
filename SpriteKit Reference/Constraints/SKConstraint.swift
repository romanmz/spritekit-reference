//
//  SKConstraint.swift
//  SpriteKit Reference
//
//  Created by Roman Martinez on 28/3/18.
//  Copyright © 2018 Roman Martinez. All rights reserved.
//

import UIKit
import SpriteKit

class MySKConstraint: SKConstraint {
	// You add constraints to a node to ensure its properties always have values within a given range
	// The constraints can be relative to an individual point or to other nodes
	// Once a constraint is created you can't change its values, but you can enable and disable it as necessary
	
	
	/*
	// Type methods - Initializers
	// ------------------------------
	
	// Constrain position
	positionX(_:y:)			// Restrict how much the node can move along both axes
	positionX(_:)			// Restrict how much the node can move along the X axis
	positionY(_:)			// Restrict how much the node can move along the Y axis
	
	// Constraint orientation
	orient(to:offset:)		// Make the node always face another node
	orient(to:offset:)		// Make the node always face a given point
	orient(to:in:offset:)	// Make the node always face a given point in another node's coordinates
	zRotation(_:)			// Restrict how much the node can be rotated
	
	// Constraint distance: lowerLimit = how much to repel from target, upperLimit = how much to attract to target
	distance(_:to:)			// Keep the node at a certain distance from another node
	distance(_:to:)			// Keep the node at a certain distance from a given point
	distance(_:to:in:)		// Keep the node at a certain distance from a given point in another node's coordinates
	*/
	
	
	// [custom initializer to avoid overriding the default ones]
	convenience init(test: String) {
		self.init()
		
		
		// Constraint properties
		// ------------------------------
		let _ = referenceNode	// get/set the node's coordinates system that the constraints and ranges should use as reference. Defaults to nil (uses the node's parent)
		enabled = true			// get/set whether or not the constraints should actually be applied
		
		
	}
}
