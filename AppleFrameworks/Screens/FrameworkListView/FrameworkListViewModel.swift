//
//  FrameworkViewModel.swift
//  AppleFrameworks
//
//  Created by Abdul Momin on 24/2/24.
//

import SwiftUI

final class FrameworkGridViewModel : ObservableObject{
    
    var selectedFramework : Framework? {
        didSet{ isShowingDetailView = true }
    }
    
    @Published var isShowingDetailView = false
    
    let columns : [GridItem] = [GridItem(.flexible()),
                                GridItem(.flexible()),
                                GridItem(.flexible())]

}
