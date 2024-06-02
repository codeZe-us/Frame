//
//  FrameAppGridModel.swift
//  Frame
//
//  Created by Lewechi Godsfavour on 01/06/2024.
//

import SwiftUI

final class FrameAppGridViewModel: ObservableObject {
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    
    @Published var isShowingDetailView = false
}
