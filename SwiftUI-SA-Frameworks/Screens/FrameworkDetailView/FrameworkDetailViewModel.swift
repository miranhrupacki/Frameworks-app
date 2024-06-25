//
//  FrameworkDetailViewModel.swift
//  SwiftUI-SA-Frameworks
//
//  Created by Miran Hrupački on 25.06.2024..
//

import Foundation

final class FrameworkDetailViewModel: ObservableObject {
    let framework: Framework
    
    init(framework: Framework) {
        self.framework = framework
    }
}
