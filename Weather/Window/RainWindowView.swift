//
//  RainWindowView.swift
//  Weather
//
//  Created by Minji lee on 10/21/23.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct RainWindowView: View {
    var body: some View {
        
        VStack {
            Text("비, Rain")
                .font(.extraLargeTitle)
            
            Rain()
            
            Text("대기 중의 수증기의 지름 0.2mm 이상의 물방울이 되어 지상으로 떨어지는 현상을 말한다. 약 10만 개의 구름방울이 뭉쳐야 1개의 빗방울이 되는데 이렇게 많은 양의 구름방울이 모이는 원인에 대해서는 현재 빙정설과 병합설로 설명한다. 이 경우는 강우의 물리적인 설명이지만 기상학적인 조건에 의한 강우도 있다.")
        }
        
        
    }
}

#Preview {
    RainWindowView()
}
