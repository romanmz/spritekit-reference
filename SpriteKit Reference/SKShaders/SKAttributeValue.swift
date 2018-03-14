//
//  SKAttributeValue.swift
//  SpriteKit Reference
//
//  Created by Roman Martinez on 14/3/18.
//  Copyright © 2018 Roman Martinez. All rights reserved.
//

import UIKit
import SpriteKit

class MySKAttributeValue: SKAttributeValue {
	
	// [custom initializer to avoid overriding the default ones]
	convenience init(test: String) {
		self.init()
		
		
		// Setting the value
		// ------------------------------
		// Each attribute can hold only one value at once, these different properties represent the same value as different types
		floatValue = 0.33
		let _ = vectorFloat2Value
		let _ = vectorFloat3Value
		let _ = vectorFloat4Value
		
		
	}
}
