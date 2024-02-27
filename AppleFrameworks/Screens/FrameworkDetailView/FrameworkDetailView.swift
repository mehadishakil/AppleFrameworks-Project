//
//  FrameworkDetailView.swift
//  AppleFrameworks
//
//  Created by Abdul Momin on 23/2/24.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework : Framework
    @Binding var isShowingDetailView : Bool
    @State private var isShowingSafariView = false
    
    
    var body: some View {
        VStack{
            
            XDismissedButton(isShowingDetailView: $isShowingDetailView)
            
            Spacer()
            
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button{
                isShowingSafariView = true
            }label: {
//                AFButton(title: "Learn More")
                Label("Learn More", systemImage: "book.fill")
            }
            .buttonStyle(.bordered)
            .controlSize(.large)
//            .foregroundColor(.white)
//            .buttonBorderShape(.roundedRectangle(radius: 12))
            .tint(.red)
            
            
        }
        .sheet(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
        })
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: MockData.sampleFramework,
                            isShowingDetailView: .constant(false))
    }
}
