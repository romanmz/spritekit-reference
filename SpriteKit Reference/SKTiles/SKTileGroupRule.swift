//
//  SKTileGroupRule.swift
//  SpriteKit Reference
//
//  Created by Roman Martinez on 18/3/18.
//  Copyright © 2018 Roman Martinez. All rights reserved.
//

import UIKit
import GameplayKit

class MySKTileGroupRule: SKTileGroupRule {
	// A tile group rule is an individual 'fragment' (e.g. center, corner, edge, etc) of a particula 'type' of tile (tile group). It defines two types of behavious:
	// 1. When a tile group is placed on a spot on a map that has 'automapping' enabled, the adjacency rules defined here will be used to determine
	//    whether or not this fragment in particular can be placed on that spot, based on the existing neighbouring tiles
	// 2. If this fragment is selected to be placed on a map (either programatically or through automapping), it will randomly select one of the 'tile definitions'
	//    that belong to this rule, biasing the result towards the definitions with higher placement weights
	
	// [custom initializer to avoid overriding the default ones]
	convenience init(test: String) {
		self.init()
		
		
		// Tile group rule properties
		// ------------------------------
		name = "standard rule"			// get/set the name of the tile group rule
		adjacency = .adjacencyAll		// get/set the conditions that need to be met to allow this fragment to be placed on a given spot (you can mix multiple)
		tileDefinitions = [MySKTileDefinition(test: "test")]	// get/set the list of tile definitions that represent this tile type fragment
		
		
		/*
		// Adjacency rules
		// ------------------------------
		
		// Basics:
		.adjacencyUp
		.adjacencyUpperRight
		.adjacencyRight
		.adjacencyLowerRight
		.adjacencyDown
		.adjacencyLowerLeft
		.adjacencyLeft
		.adjacencyUpperLeft
		.adjacencyAll					// equals 'center' in 3x3 grids
		
		// Shortcuts for edges (3x3 grids):
		adjacencyUpEdge
		adjacencyUpperRightEdge
		adjacencyRightEdge
		adjacencyLowerRightEdge
		adjacencyDownEdge
		adjacencyLowerLeftEdge
		adjacencyLeftEdge
		adjacencyUpperLeftEdge
		
		// Shortcuts for corners (3x3 grids):
		adjacencyUpperRightCorner
		adjacencyLowerRightCorner
		adjacencyLowerLeftCorner
		adjacencyUpperLeftCorner
		
		// Basics for flat hex grids (deprecated):
		hexFlatAdjacencyUp
		hexFlatAdjacencyUpperRight
		hexFlatAdjacencyLowerRight
		hexFlatAdjacencyDown
		hexFlatAdjacencyLowerLeft
		hexFlatAdjacencyUpperLeft
		hexFlatAdjacencyAll
		
		// Basics for pointy hex grids (deprecated):
		hexPointyAdjacencyUpperLeft
		hexPointyAdjacencyUpperRight
		hexPointyAdjacencyRight
		hexPointyAdjacencyLowerRight
		hexPointyAdjacencyLowerLeft
		hexPointyAdjacencyLeft
		hexPointyAdjacencyAdd
		*/
		
		
	}
}
