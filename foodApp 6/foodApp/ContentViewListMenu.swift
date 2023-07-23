//
//  ContentViewListMenu.swift
//  foodApp
//
//  Created by Борух Соколов on 16.07.2023.
//

import SwiftUI

struct ContentViewListMenu: View {
    
    @StateObject  var viewModelMenu = JSONLoadModelMenu()
    @State var needTeg:Teg = .всеМеню
    
    
    
    //как распологать коллоны в swiftui coollection
    private var columns: [GridItem] = [
          GridItem(.fixed(109), spacing: 16, alignment: .top),
          GridItem(.fixed(109), spacing: 16, alignment: .top),
          GridItem(.fixed(109), spacing: 16, alignment: .top)
      ]
    
    var body: some View {
        
        VStack{
            Picker("chose",selection: $needTeg){
                ForEach(Teg.allCases,id: \.self ){
                    Text($0.rawValue)
                }
            }
            .pickerStyle(.segmented)
            .padding()
            
            //Text(needTeg.rawValue)
            
           
                
            ScrollView(.vertical,showsIndicators: false){
                
                
                 LazyVGrid(columns: columns,spacing: 14){
                 ForEach(0 ..< (self.viewModelMenu.responseData?.dishes.count ?? 1), id: \.self) { item in
                     
                // cardViewMenu(viewModelMenu: viewModelMenu, index: item,tag: needTeg)
                     if((viewModelMenu.responseData?.dishes[item].tegs.contains(needTeg) == true) ){
                         VStack(alignment: .center, spacing: 5){
                             AsyncImage(url: URL(string:viewModelMenu.responseData?.dishes[item].imageURL ?? "" )) { phase in
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
                             Text(viewModelMenu.responseData?.dishes[item].name ?? "")
                                 .font(.system(size: 14))
                                 .kerning(0.14)
                                 .fixedSize(horizontal: false, vertical: true)
                                 .frame(width:109,alignment: .leading)
                             
                         }
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

