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
	// Given a list of tile definitions, when this group rule runs:
	// 1. it determines where to place the tile relative to existing ones based on the defined adjacency rule
	// 2. it renders the tile by randomly selecting one of the tile definitions, biasing the result towards tiles with higher placement weights
	
	
	// [custom initializer to avoid overriding the default ones]
	convenience init(test: String) {
		self.init()
		
		
		// Tile group rule properties
		// ------------------------------
		name = "standard rule"									// get/set the name of the tile group rule
		adjacency = .adjacencyAll								// get/set the rule to determine how the tiles from this group will be placed relative to others
		tileDefinitions = [MySKTileDefinition(test: "test")]	// get/set the list of tiles that can potentially be displayed on the same spot
		
		
	}
}
