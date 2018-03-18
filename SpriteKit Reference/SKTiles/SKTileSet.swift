//
//  SKTileSet.swift
//  SpriteKit Reference
//
//  Created by Roman Martinez on 18/3/18.
//  Copyright © 2018 Roman Martinez. All rights reserved.
//

import UIKit
import SpriteKit

class MySKTileSet: SKTileSet {
	// A tile set defines the layout to use to create the tile map
	// and puts together one or more tile groups that define how to fill in the map spots
	
	
	/*
	// Init shortcuts
	// ------------------------------
	init(named:)					// Creates the set from an .sks tile set file from the bundle
	init(from:)						// Same but loads the file from an URL
	*/
	
	
	// [custom initializer to avoid overriding the default ones]
	convenience init(test: String) {
		self.init()
		
		
		// Tile set properties
		// ------------------------------
		name = "standard set"						// get/set the name of the tile set
		type = .grid								// get/set how the tiles will be arranged when placed in a tile map. Defaults to .grid
		tileGroups = [MySKTileGroup(test: "test")]	// get/set the list of tile groups that will be used on the map
		
		
		// Tile map defaults
		// ------------------------------
		defaultTileSize = CGSize(width: 20, height: 20)	// get/set the default size for the tiles, in case the map node doesn't specify one
		defaultTileGroup = MySKTileGroup(test: "test")	// get/set the group to use whenever there's map spots that require rules that none of the groups match
		
		
	}
}
