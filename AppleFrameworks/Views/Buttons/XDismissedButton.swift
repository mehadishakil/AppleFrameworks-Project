//
//  XDismissedButton.swift
//  AppleFrameworks
//
//  Created by Abdul Momin on 25/2/24.
//

import SwiftUI

struct XDismissedButton: View {
    
    @Binding var isShowingDetailView : Bool
    
    var body: some View {
        HStack{
            Spacer()
            
            Button{
                isShowingDetailView = false
            }label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
            }
        }
        .padding()
    }
}

struct XDismissedButton_Previews: PreviewProvider {
    static var previews: some View {
        XDismissedButton(isShowingDetailView: .constant(false))
    }
}
