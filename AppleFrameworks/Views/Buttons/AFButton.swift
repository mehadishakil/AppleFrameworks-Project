//
//  AFButton.swift
//  AppleFrameworks
//
//  Created by Abdul Momin on 24/2/24.
//

import SwiftUI

struct AFButton: View {
    
    var title : String
    
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 280, height: 50)
            .background(Color.red)
            .foregroundColor(.white)
            .cornerRadius(8)
    }
}

struct AFButton_Previews: PreviewProvider {
    static var previews: some View {
        AFButton(title: "Test Title")
    }
}
