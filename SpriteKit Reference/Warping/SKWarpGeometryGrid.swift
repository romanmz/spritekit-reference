//
//  SKWarpGeometryGrid.swift
//  SpriteKit Reference
//
//  Created by Roman Martinez on 29/3/18.
//  Copyright © 2018 Roman Martinez. All rights reserved.
//

import UIKit
import SpriteKit

class MySKWarpGeometryGrid: SKWarpGeometryGrid {
	// Implements geometry warping using a simple grid of vertices
	
	
	/*
	// Initializers
	// ------------------------------
	init(columns:rows:sourcePositions:destinationPositions:)	// Set the number of vertices, their normalized inital positions, and their target positions
	init(columns:rows:)											// Set the number of vertices, with both their initial and target positions evenly spaced (no warping occurs)
																// you can use this option to initialize a node's warping grid, and then animate it using a different grid
	*/
	
	
	// [custom initializer to avoid overriding the default ones]
	convenience init(test: String) {
		self.init(
			columns: 2,
			rows: 2,
			sourcePositions: [
				float2(0, 0.0), float2(0.5, 0.0), float2(1, 0.0),
				float2(0, 0.5), float2(0.5, 0.5), float2(1, 0.5),
				float2(0, 1.0), float2(0.5, 1.0), float2(1, 1.0),
			],
			destinationPositions: [
				float2(-0.25, -0.5), float2(0.5, -0.75), float2(1.25, -0.5),
				float2(+0.25, +0.5), float2(0.5, +0.50), float2(0.75, +0.5),
				float2(-0.25, +1.5), float2(0.5, +1.75), float2(1.25, +1.5),
			]
		)
		
		
		// Warp geometry grid properties and methods
		// ------------------------------
		let _ = numberOfColumns							// get the number of grid columns
		let _ = numberOfRows							// get the number of grid rows
		let _ = vertexCount								// get the total number of vertices
		sourcePosition(at: 0)							// returns the source position of a given vertex
		destPosition(at: 0)								// returns the destination position of a given vertex
		// replacingBySourcePositions(positions:)		// updates the list of source positions
		// replacingByDestinationPositions(positions:)	// updates the list of destination positions
		
		
	}
}
