//
//  SKRegion.swift
//  SpriteKit Reference
//
//  Created by Roman Martinez on 5/4/18.
//  Copyright © 2018 Roman Martinez. All rights reserved.
//

import UIKit
import SpriteKit

class MySKRegion: SKRegion {
	// A definition of an arbitrary area. Typically used to define the region affected by a physics field node
	
	
	/*
	// Init shortcuts
	// ------------------------------
	init(size:)			// Creates a rectangular region centered on the origin with the given size
	init(radius:)		// Creates a circular region centered on the origin with the given radius
	init(path:)			// Creates a new region based on a given path (should use the even-odd winding rule)
	infinite()			// Type method. Returns an infinite region
	*/
	
	
	// [custom initializer to avoid overriding the default ones]
	convenience init(test: String) {
		self.init()
		
		
		/*
		// More init shortcuts
		// ------------------------------
		inverse()				// returns the inverse region
		byDifference(from:)		// returns a new region by substracting another one
		byIntersection(with:)	// returns a new region by intersecting another one
		byUnion(with:)			// returns a new region by adding another one
		*/
		
		
		// Region properties and methods
		// ------------------------------
		// path					// get the path that defines the region. Assigned at creation, cannot be changed
		// contains(_:)			// returns whether or not a given point is contained within the region
		
		
	}
}
