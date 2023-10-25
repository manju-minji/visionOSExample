//
//  SnowWindowView.swift
//  Weather
//
//  Created by Minji lee on 10/21/23.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct SnowWindowView: View {
    var body: some View {
        VStack {
            Text("눈, Snow")
                .font(.extraLargeTitle)
            
            Snow()
            
            Text("구름으로부터 내리는 얼음 결정으로 여러 형태를 띠며 보통 2㎜ 정도의 크기이다. 서로 엉겨붙어 눈송이로 내리기도 한다. 눈이 내리는 현상을 지칭하기도 하는데, 눈이 내리는 정도를 눈의 강도라 하여 시정이나 눈이 쌓이는 모습으로 그 강도를 정한다. 적설량은 어떤 기간동안 누적된 눈의 양이고, 강수량은 받은 눈을 녹인 물의 깊이이다.")
        }
    }
}

#Preview {
    SnowWindowView()
}
