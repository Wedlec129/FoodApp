//
//  Extentions.swift
//  foodApp
//
//  Created by Борух Соколов on 23.07.2023.
//

import Foundation
import SwiftUI

// MARK: Custom View Property Extensions
extension View{
    
    // MARK: Building a Custom Modifier for Custom Popup navigation View
    //Binding<Bool> типо передаём значение по ссылке и потом {}
    func popupNavigationView<Content: View> (horizontalPadding:CGFloat = 40, heightFrame:CGFloat = 440 ,show: Binding<Bool>, @ViewBuilder content: @escaping ()->Content) -> some View {
        return self
            .overlay{
                if show.wrappedValue {
                    
                    // MARK: Geometry Reader for reading Container Frame
                    GeometryReader{ proxy in
                        
                        Color.black
                            .opacity(0.4)
                            .ignoresSafeArea()
                            
                        let size = proxy.size
                        NavigationView{
                            content ()
                        }
                        .frame (width: size.width - horizontalPadding, height: heightFrame, alignment: .center)
                       
                        // Corner Radius
                        .cornerRadius (15)
                        .frame (maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                    }
                    
                }
            }
    }
}
