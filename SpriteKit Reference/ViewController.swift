//
//  ViewController.swift
//  SpriteKit Reference
//
//  Created by Roman Martinez on 6/3/18.
//  Copyright © 2018 Roman Martinez. All rights reserved.
//

import UIKit
import SpriteKit

class ViewController: UIViewController {
	
	// ViewController properties
	var skView: MySKView { return view as! MySKView }
	override var prefersStatusBarHidden: Bool { return true }
	
	// Initialize
	override func viewDidLoad() {
		super.viewDidLoad()
		// manually adding the SKView as a subview:
		// skView = MySKView(frame: view.frame)
		// view.insertSubview(skView, at: 0)
	}
	
	// Event: Button was pressed
	@IBAction func didPressChangeButton(_ sender: UIButton) {
		skView.toggleScene()
	}
	@IBAction func didPressPauseButton(_ sender: UIButton) {
		skView.pauseScene()
	}
}
