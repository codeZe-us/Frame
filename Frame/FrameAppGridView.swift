//
//  FrameAppGridView.swift
//  Frame
//
//  Created by Lewechi Godsfavour on 30/05/2023.
//

import SwiftUI

struct FrameAppGridView: View {
    @StateObject var viewModel = FrameAppGridViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(MockData.frameworks) { framework in
                        FrameAppTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
            .sheet(isPresented: $viewModel.isShowingDetailView){
                FrameworkDetailView(framework: viewModel.selectedFramework
                                    ?? MockData.sampleFramework,
                                    isShowingDetailView: $viewModel.isShowingDetailView
                )
            }
//            .sheet(isPresented: $viewModel.isShowingDetailView){
//                FrameworkDetailView(framework: viewModel.selectedFramework!,
//                                    isShowingDetailView: $viewModel.isShowingDetailView)
//            }
        }
    }
}

struct FrameAppGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameAppGridView()
            .preferredColorScheme(.light)
            
    }
}
