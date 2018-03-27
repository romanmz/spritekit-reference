//
//  SKReferenceNode.swift
//  SpriteKit Reference
//
//  Created by Roman Martinez on 17/3/18.
//  Copyright © 2018 Roman Martinez. All rights reserved.
//

import UIKit
import SpriteKit

class MySKReferenceNode: SKReferenceNode {
	// You use reference nodes to create the contents from a spritekit scene file (sks)
	// this makes it easy to share similar content across different scenes
	
	
	/*
	// Init shortcuts
	// ------------------------------
	init(fileNamed:)				// Loads a scene from a file in the app bundle
	init(url:)						// Loads a scene from a URL
	*/
	
	
	// [custom initializer to avoid overriding the default ones]
	convenience init?(test: String) {
		let fileName: String? = "sample-reference-node.sks"
		self.init(fileNamed: fileName)
		
		
		// Load contents
		// ------------------------------
		resolve()					// Loads the contents from the file. If the contents have already been loaded, this method deletes them and loads a fresh copy of the tree
	}
	override func didLoad(_ node: SKNode?) {
		// This method is called right after the file's contents have been loaded
	}
	
	
}
