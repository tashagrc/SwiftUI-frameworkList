//
//  AFButton.swift
//  SwiftUI-frameworkList
//
//  Created by Natasha Radika on 12/03/24.
//

// this is reusable button
import SwiftUI

struct AFButton: View {
    var title: String
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 280, height: 50)
            .background(Color.red)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}

#Preview {
    AFButton(title: "Learn More")
}
