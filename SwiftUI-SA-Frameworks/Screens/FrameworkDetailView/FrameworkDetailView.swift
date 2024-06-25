//
//  FrameworkDetailView.swift
//  SwiftUI-SA-Frameworks
//
//  Created by Miran Hrupački on 13.06.2024..
//

import SwiftUI

struct FrameworkDetailView: View {
    @ObservedObject var viewModel: FrameworkDetailViewModel
    
    var body: some View {
        ScrollView {
            Text(viewModel.framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
            
            ZStack {
                Image(viewModel.framework.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Rectangle()
                    .foregroundColor(.clear)
                    .background(LinearGradient(gradient: Gradient(colors: [.clear, .gray]), startPoint: .top, endPoint: .bottom))
                    .clipShape(.buttonBorder)
            }
            
            .frame(maxWidth: .infinity)
            
            Text(viewModel.framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Link(destination: URL(string: viewModel.framework.urlString) ?? URL(string: "www.apple.com")!, label: {
                Label("Learn More", systemImage: "book.fill")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .frame(width: 280, height: 50)
                    .background(.red)
                    .clipShape(.buttonBorder)
            })
            
//            Button {
//                viewModel.isShowingSafariView = true
//            } label: {
////                AFButton(title: "Learn More")
//                Label("Learn More", systemImage: "book.fill")
//            }
//            .buttonStyle(.bordered)
//            .controlSize(.large)
//            .tint(.red)
        }
//        .fullScreenCover(isPresented: $viewModel.isShowingSafariView, content: {
//            SafariView(url: URL(string: viewModel.framework.urlString) ?? URL(string: "www.apple.com")!)
//        })
    }
}

#Preview {
    FrameworkDetailView(viewModel: FrameworkDetailViewModel(framework: MockData.sampleFramework))
}
