//
//  SafariView.swift
//  SwiftUI-frameworkList
//
//  Created by Natasha Radika on 12/03/24.
//

// connect dgn Ui Kit utk launch ke website
import SwiftUI
import SafariServices

struct SafariView: UIViewControllerRepresentable {
    
    let url: URL
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
        SFSafariViewController(url: url)
    }
    
    // kalo ada _ nya artinya parameter gausah punya label saat dipanggil
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {
        
    }
}
