//
//  SnowVolumeView.swift
//  Weather
//
//  Created by Minji lee on 10/25/23.
//

import SwiftUI

struct SnowVolumeView: View {
    @Environment(\.openWindow) private var openWindow
    @Environment(\.dismissWindow) private var dismissWindow
    
    @State private var isVolumeHidden = true
    
    var body: some View {
        VStack(spacing: 20) {
            
            Spacer()
            
            Text("눈, Snow")
                .font(.extraLargeTitle)
            
            Text("구름으로부터 내리는 얼음 결정으로 여러 형태를 띠며 보통 2㎜ 정도의 크기이다. 서로 엉겨붙어 눈송이로 내리기도 한다. 눈이 내리는 현상을 지칭하기도 하는데, 눈이 내리는 정도를 눈의 강도라 하여 시정이나 눈이 쌓이는 모습으로 그 강도를 정한다. 적설량은 어떤 기간동안 누적된 눈의 양이고, 강수량은 받은 눈을 녹인 물의 깊이이다.")
            
            Toggle("Show Snow", isOn: $isVolumeHidden)
                .onChange(of: isVolumeHidden) { _, isHidden in
                if isHidden {
                    dismissWindow(id: "SnowModel")
                } else {
                    openWindow(id: "SnowModel")
                }
                
            }
            .toggleStyle(.button)
            
            Spacer()
        }
    }
}

#Preview {
    SnowVolumeView()
}
