//
//  FrameworkGridView.swift
//  SwiftUI-SA-Frameworks
//
//  Created by Miran Hrupački on 13.06.2024..
//

import SwiftUI

struct FrameworkGridView: View {
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(MockData.frameworks) { framework in
                    NavigationLink(destination: FrameworkDetailView(viewModel: FrameworkDetailViewModel(framework: framework))) {
                        FrameworkTitleView(framework: framework)
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
        }
        .accentColor(Color(.label))
    }
}

#Preview {
    FrameworkGridView()
        .preferredColorScheme(.dark)
}
