//
//  SKCameraNode.swift
//  SpriteKit Reference
//
//  Created by Roman Martinez on 29/3/18.
//  Copyright © 2018 Roman Martinez. All rights reserved.
//

import UIKit
import SpriteKit

class MySKCameraNode: SKCameraNode {
	// To use a camera node, add it as a child node of a presented scene, and set it as the scene's 'camera' property
	// When a camera is being used, it changes two behaviours on the scene:
	// 1. The scene moves around so that its center always matches the origin point of the camera (so the camera is always pointing towards the center of the scene)
	// 2. If the scale, position or rotation of a camera changes, the opposite change is applied to the entire scene (e.g. making the camera bigger will make the scene look smaller)
	// X. This doesn't apply to nodes that are children of the camera. Those are positioned relative to the camera, and the camera's transformations doesn't affect them
	//		this means that you can use them to add fixed interface elements to the scene
	
	// [custom initializer to avoid overriding the default ones]
	convenience init(test: String) {
		self.init()
		
		
		// Getting currently visible nodes
		// ------------------------------
		containedNodeSet()				// returns the list of all nodes that are currently within the camera's viewport
		// contains(_ node: SKNode)		// checks whether or not a given node is currently within the camera's viewport
		
		
	}
}
