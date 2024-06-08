//
//  FrameAppTitleView.swift
//  Frame
//
//  Created by Lewechi Godsfavour on 31/05/2023.
//

import SwiftUI

struct FrameAppTitleView: View {
    
    let framework: Framework
    
    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundColor(Color(.label))
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
}

struct FrameAppTitleView_Previews: PreviewProvider {
    static var previews: some View {
        FrameAppTitleView(framework: MockData.sampleFramework)
            .preferredColorScheme(.dark)
    }
}
