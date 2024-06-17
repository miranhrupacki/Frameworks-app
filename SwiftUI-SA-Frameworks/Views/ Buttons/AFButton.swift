//
//  AFButton.swift
//  SwiftUI-SA-Frameworks
//
//  Created by Miran Hrupački on 13.06.2024..
//

import SwiftUI

struct AFButton: View {
    let title: String
    
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .foregroundStyle(.white)
            .frame(width: 280, height: 50)
            .background(.red)
            .clipShape(.buttonBorder)
    }
}

#Preview {
    AFButton(title: "Test Title")
}
