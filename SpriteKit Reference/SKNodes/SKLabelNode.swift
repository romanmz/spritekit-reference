//
//  SKLabelNode.swift
//  SpriteKit Reference
//
//  Created by Roman Martinez on 17/3/18.
//  Copyright © 2018 Roman Martinez. All rights reserved.
//

import UIKit
import SpriteKit

class MySKLabelNode: SKLabelNode {
	// Label nodes make it easy to add display text to the game
	// the size of the node is determined implicitly based on the fontName, fontSize, text, numberOfLines and preferredMaxLayoutWidth
	
	// [custom initializer to avoid overriding the default ones]
	convenience init(test: String) {
		self.init()
		
		
		// Label properties
		// ------------------------------
		text = "Lorem ipsum"					// get/set the text string to display
		// attributedText: NSAttributedString?	// get/set the text string to display using attributed text
		fontName = "Chalkduster"				// get/set the font family to use. Defaults to "Helvetica Neue Ultra Light"
		fontSize = 12							// get/set the font size in points. Defaults to 32
		fontColor = .yellow						// get/set the color of the text. Defaults to .white
		
		
		// Text box
		// ------------------------------
		verticalAlignmentMode = .baseline	// get/set vertical alignment. Options are .baseline, .center, .top, and .bottom. Defaults to .baseline
		horizontalAlignmentMode = .center	// get/set horizontal alignment. Options are .center, .left, and .right Defaults to .center
		numberOfLines = 2					// get/set the maximum number of lines of text that the node can hold
		preferredMaxLayoutWidth = 200		// get/set the maximum width of the lines of text
		lineBreakMode = .byTruncatingTail	// get/set how to handle line breaks when the text is longer than the container box
		
		
		/*
		// Color and blending
		// ------------------------------
		// Works the same as in sprite nodes:
		color: UIColor?
		colorBlendFactor: CGFloat
		blendMode: SKBlendMode
		*/
		
		
	}
}
