//
//  SkyView.swift
//  Weather
//
//  Created by Minji lee on 10/21/23.
//

import SwiftUI

struct SkyView: View {
    var body: some View {
        ZStack {
            Sky()
            HStack(spacing: 20) {
                Rain()
                Snow()
            }
        }
    }
}

#Preview {
    SkyView()
}
