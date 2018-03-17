//
//  SKCropNode.swift
//  SpriteKit Reference
//
//  Created by Roman Martinez on 17/3/18.
//  Copyright © 2018 Roman Martinez. All rights reserved.
//

import UIKit
import GameKit

class MySKCropNode: SKCropNode {
	// Crop nodes allow you to limit the rendering of child nodes to a specific area defined by another node
	// This mask node can be of any type, so you could have dynamic and animated nodes acting as masks
	
	// [custom initializer to avoid overriding the default ones]
	convenience init(test: String) {
		self.init()
		
		
		// Mask properties
		// ------------------------------
		maskNode = MySKSpriteNode(test: "test")		// get/set the node to be used as masking area. It can be a child node of the current but not of any others
		// [adding a child node for testing]
		addChild( MySKShapeNode(test: "test"))
		
		
	}
}
