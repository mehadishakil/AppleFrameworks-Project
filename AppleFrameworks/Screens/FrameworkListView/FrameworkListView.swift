//
//  FrameworkGridView.swift
//  AppleFrameworks
//
//  Created by Abdul Momin on 23/2/24.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationStack{
            List{
                ForEach(MockData.frameworks){ framework in

                    NavigationLink(destination: FrameworkDetailView(framework: framework,
                                                                    isShowingDetailView:
                                                                    $viewModel.isShowingDetailView)){
                        FrameworkTitleView(framework: framework)
                    }
                }
            }
            .navigationTitle("🍏 Frameworks")
        }
        .accentColor(Color(.label))
    }
}


struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
            .preferredColorScheme(.dark)
    }
}




