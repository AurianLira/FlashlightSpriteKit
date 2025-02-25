//
//  ContentView.swift
//  lanterna
//
//  Created by Aurian Moura de Lira on 29/11/24.
//

import SwiftUI
import SpriteKit

struct ContentView: View {
    var scene: SKScene {
        let scene = FlashlightScene()
        scene.scaleMode = .resizeFill
        return scene
    }

    var body: some View {

        SpriteView(scene: scene)
            .edgesIgnoringSafeArea(.all) 
    }
}

#Preview {
    ContentView()
}
