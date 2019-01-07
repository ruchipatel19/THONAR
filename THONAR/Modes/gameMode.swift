//
//  gameMode.swift
//  THONAR
//
//  Created by Kevin Gardner on 12/16/18.
//  Copyright © 2018 THON. All rights reserved.
//

import Foundation
import ARKit
import SceneKit
import UIKit

class GameMode: Mode {
    override func renderer(nodeFor anchor: ARAnchor) -> SCNNode? {
        return nil
    }
    
    override func viewWillAppear(forView view: ARSCNView) {
        view.scene.rootNode.enumerateChildNodes { (node, stop) in
            node.removeFromParentNode() }
        
        // Run the view's session
        view.session.run(self.configuration)
    }
    
    public override init() {
        super.init()
    }
}
