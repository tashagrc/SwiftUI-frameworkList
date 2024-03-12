//
//  XDismissButtonView.swift
//  SwiftUI-frameworkList
//
//  Created by Natasha Radika on 21/03/24.
//

import SwiftUI

struct XDismissButtonView: View {
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        HStack {
            Spacer()
            Button {
                isShowingDetailView = false
            } label: {
                // color label itu hitam di lightmode, putih di darkmode
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
            }
        }.padding()
    }
}

#Preview {
    XDismissButtonView(isShowingDetailView: .constant(false))
}
