//
//  FrameworkGridViewModel.swift
//  SwiftUI-frameworkList
//
//  Created by Natasha Radika on 12/03/24.
//

import SwiftUI

// mvvm
final class FrameworkGridViewModel: ObservableObject {
    var selectedFramework: Framework? {
        didSet { // utk trigger yg bawah
            isShowingDetailView = true
        }
    }
    
    // cara trigger yg ini
    // @Published artiinya kalau property berubah, subscriber akan terima new value
    // dipake di grid
    @Published var isShowingDetailView = false
    
    // horizontalnya ada 3
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
}
