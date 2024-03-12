//
//  FrameworkGridView.swift
//  SwiftUI-frameworkList
//
//  Created by Natasha Radika on 12/03/24.
//

import SwiftUI

// list gridview dari semua framework
struct FrameworkGridView: View {
    
    // view bisa dibuang kapan aja tp state akan bertahan
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        // navigation view utk title di atas grid
        NavigationView {
            ScrollView {
                LazyVGrid(columns: viewModel.columns) {
                    // font title2 for dynamic type -> kalo ukuran melebihi bisa ngatur sendiri
                    // minimum scale factor utk kasih tau seberapa kecil fontnya bisa
                    // self adalah utk iterate setiap object
                    ForEach(MockData.frameworks) { framework in
                        // kalo diklik akan munculin modal
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                // ubah source of truth agar kalo diklik ada modalnya
                                viewModel.selectedFramework = framework
                            }
                    }
                }
                
                
            }
            .navigationTitle("🍎 Framework") // ada bindingnya
            .sheet(isPresented: $viewModel.isShowingDetailView, content: {
                FrameworkDetailView(framework: viewModel.selectedFramework!, isShowingDetailView: $viewModel.isShowingDetailView) // tampilin detail view dgn pake binding
            })
        }
        
    }
}

#Preview {
    FrameworkGridView()
}


