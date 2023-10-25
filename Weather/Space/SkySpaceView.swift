//
//  SkySpaceView.swift
//  Weather
//
//  Created by Minji lee on 10/21/23.
//

import SwiftUI

struct SkySpaceView: View {
    @Environment(\.openImmersiveSpace) private var openImmersiveSpace
    @Environment(\.dismissImmersiveSpace) private var dismissImmersiveSpace
    
    @State private var isSpaceHidden = true
    
    var body: some View {
        VStack(spacing: 20) {
            
            Spacer()
            
            Text("하늘에 떠 있는 눈 구름과 비 구름 보러가기!")
                .font(.title)
            
            Button(action: {
                Task {
                    if isSpaceHidden {
                        await openImmersiveSpace(id: "ImmersiveSpace")
                        isSpaceHidden = false
                    } else {
                        await dismissImmersiveSpace()
                        isSpaceHidden = true
                    }
                }
            }, label: {
                Text(isSpaceHidden ? "Show sky" : "Close sky")
            })
            
            Spacer()
        }
    }
}

#Preview {
    SkySpaceView()
}
