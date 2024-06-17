//
//  FrameworkGridView.swift
//  SwiftUI-SA-Frameworks
//
//  Created by Miran Hrupački on 13.06.2024..
//

import SwiftUI

struct FrameworkGridView: View {
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(MockData.frameworks) { framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
            .sheet(isPresented: $viewModel.isShowingDetailsView) {
                FrameworkDetailView(framework: viewModel.selectedFramework ?? MockData.sampleFramework,
                                    isShowingDetailView: $viewModel.isShowingDetailsView)
            }
        }
    }
}

#Preview {
    FrameworkGridView()
        .preferredColorScheme(.dark)
}
