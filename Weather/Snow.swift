//
//  Snow.swift
//  Weather
//
//  Created by Minji lee on 10/21/23.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct Snow: View {
    var body: some View {
        Model3D(named: "Snow", bundle: realityKitContentBundle) {
            phase in
            switch phase {
            case .empty:
                Text("Waiting")
            case .failure(let error):
                Text(error.localizedDescription)
            case .success(let model):
                model
                    .resizable()
                    .scaleEffect(CGSize(width: 0.3, height: 0.3))
            }
        }
    }
}

#Preview {
    Snow()
}
