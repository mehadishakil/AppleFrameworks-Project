//
//  FrameworkViewModel.swift
//  AppleFrameworks
//
//  Created by Abdul Momin on 24/2/24.
//

import SwiftUI

final class FrameworkGridViewModel : ObservableObject{
    
    let columns : [GridItem] = [GridItem(.flexible()),
                                GridItem(.flexible()),
                                GridItem(.flexible())]

}
