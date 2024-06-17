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
            List {
                ForEach(MockData.frameworks) { framework in
                    NavigationLink(destination: FrameworkDetailView(framework: framework,
                                                                    isShowingDetailView: $viewModel.isShowingDetailsView)) {
                        FrameworkTitleView(framework: framework)
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
        }
    }
}

#Preview {
    FrameworkGridView()
        .preferredColorScheme(.dark)
}
