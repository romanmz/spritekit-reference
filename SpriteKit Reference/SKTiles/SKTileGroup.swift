//
//  SKTileGroup.swift
//  SpriteKit Reference
//
//  Created by Roman Martinez on 18/3/18.
//  Copyright © 2018 Roman Martinez. All rights reserved.
//

import UIKit
import SpriteKit

class MySKTileGroup: SKTileGroup {
	// A tile group is a single 'type' of tile (e.g. grass, water, stone, sand, etc)
	// it contains a collection of tile 'fragments' (tile group rules) that should cover most or all possible placement scenarios (corners, edges, center, etc)
	
	
	/*
	// Init shortcuts
	// ------------------------------
	init(tileDefinition:)		// Creates the tile group based on a single tile definition
	SKTileGroup.empty()			// Type method. This will return an empty tile group, which can be used to 'erase' tiles on a map
	*/
	
	
	// [custom initializer to avoid overriding the default ones]
	convenience init(test: String) {
		self.init()
		
		
		// Tile group properties
		// ------------------------------
		name = "standard group"							// get/set the name of the tile group
		rules = [MySKTileGroupRule(test: "test")]		// get/set the list of group rules to use. It should ideally include enough rules to cover all possible placement scenarios
		
		
	}
}
