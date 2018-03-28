//
//  SKReachConstraints.swift
//  SpriteKit Reference
//
//  Created by Roman Martinez on 28/3/18.
//  Copyright © 2018 Roman Martinez. All rights reserved.
//

import UIKit
import GameKit

class MySKReachConstraints: SKReachConstraints {
	// You add reachConstraints to a node to limit how much it can rotate when it is part of a 'reach' action (inverse kinematics)
	
	// [custom initializer to avoid overriding the default ones]
	convenience init(test: String) {
		self.init()
		
		
		// Reach constraint properties
		// ------------------------------
		lowerAngleLimit = 0.0			// get/set the minimum angle possible after being rotated by a reach event
		upperAngleLimit = CGFloat.pi	// get/set the maximum angle possible after being rotated by a reach event
		
		
	}
}
