//
//  Sky.swift
//  Weather
//
//  Created by Minji lee on 10/21/23.
//

import SwiftUI
import RealityKit

struct Sky: View {
    var body: some View {
        RealityView { content in
            
            guard let resource = try? await TextureResource(named: "sky") else {
                fatalError("Unable to load sky texture.")
            }
            
            var material = UnlitMaterial()
            material.color = .init(texture: .init(resource))
            
            let entity = Entity()
            entity.components.set(ModelComponent(mesh: .generateSphere(radius: 1000), materials: [material]))
            
            entity.scale *= .init(x: -1, y: 1, z: 1)
            
            content.add(entity)
        }
    }
}

#Preview {
    Sky()
}
