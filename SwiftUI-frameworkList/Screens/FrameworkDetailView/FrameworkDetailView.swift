//
//  FrameworkDetailView.swift
//  SwiftUI-frameworkList
//
//  Created by Natasha Radika on 12/03/24.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework: Framework
    
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack {
            XDismissButtonView(isShowingDetailView: $isShowingDetailView)
            
            Spacer()
            
            FrameworkTitleView(framework: framework)
            Text(framework.description).font(.body).padding()
            
            Spacer()
            
            Button {
                isShowingSafariView = true
            } label: {
                AFButton(title: "Learn More")
            } // atur bagaimana safarinya dipresentasikan
            
            
        } // buat tampilan safarinya jd fullscreen
        .fullScreenCover(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
        })
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: Framework(name: "Test", imageName: "app-clip", urlString: "lalala", description: "sjfgsj"), isShowingDetailView: .constant(false))
    }
}


