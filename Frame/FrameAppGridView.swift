//
//  FrameAppGridView.swift
//  Frame
//
//  Created by Lewechi Godsfavour on 30/05/2024.
//

import SwiftUI

struct FrameAppGridView: View {
    var body: some View {
        VStack {
            Image("app-clip")
                .resizable()
                .frame(width: 90, height: 90)
            Text("App-Clips")
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundColor(Color(.label))
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
}

struct FrameAppGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameAppGridView()
            .preferredColorScheme(.dark)
    }
}
