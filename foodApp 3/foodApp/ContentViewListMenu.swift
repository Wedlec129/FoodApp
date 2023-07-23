//
//  ContentViewListMenu.swift
//  foodApp
//
//  Created by Борух Соколов on 16.07.2023.
//

import SwiftUI

struct ContentViewListMenu: View {
    
    @StateObject  var viewModelMenu = JSONLoadModelMenu()
    var body: some View {
        
        ZStack(alignment: .leading){
            
            ScrollView(.vertical,showsIndicators: false){
                
                ForEach(0 ..< (self.viewModelMenu.responseData?.dishes.count ?? 1)/3, id: \.self) { itemY in
                    
                    HStack(alignment: .top  , spacing: 8){
                        ForEach(0 ..< 3) { itemX in
                            
                                cardViewMenu(imageUrl:viewModelMenu.responseData?.dishes[(itemY)*3+itemX].imageURL ?? "",imageNameFood: viewModelMenu.responseData?.dishes[(itemY)*3+itemX].name ?? "")
                                
                                    .padding(.vertical,14)
                            
                        }
                    }
                }
            }
           
            
        }
        
    }
}




struct ContentViewListMenu_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewListMenu()
    }
}

struct cardViewMenu: View {
    let imageUrl:String?
    let imageNameFood:String?
    var body: some View {
       
            VStack(alignment: .center, spacing: 5){
               
                AsyncImage(url: URL(string:imageUrl ?? "" )) { phase in
                    switch phase {
                    case .empty:
                        ProgressView()
                    case .success(let image):
                        image.resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(.horizontal,10)
                            .background(content: {
                                Rectangle()
                                .foregroundColor(Color(red: 0.97, green: 0.97, blue: 0.96))
                                    .frame(width: 109,height: 109)
                                    .cornerRadius(10)
                                
                            })
                            .frame(width: 109, height: 109)
                        
                    case .failure:
                        Image(systemName: "photo")
                    @unknown default:
                        EmptyView()
                    }
                }
                .frame(maxWidth: 80, maxHeight: 80)
                .padding()
                Text(imageNameFood ?? "")
                    .font(.system(size: 14))
                    .kerning(0.14)
                    .fixedSize(horizontal: false, vertical: true)
                    .frame(width:109,alignment: .leading)
                
            }
           
        
    }
}
