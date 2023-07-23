//
//  ContentViewListMenu.swift
//  foodApp
//
//  Created by Борух Соколов on 16.07.2023.
//

import SwiftUI

struct ContentViewListMenu: View {
    
    @StateObject var viewModelMenu = JSONLoadModelMenu()
    @State var needTeg:Teg = .всеМеню

    
    @State var showPopup: Bool = false
    @State var needPopup: Int = 0
    
    @State var needToBy: [Int] = []
    
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
                     
               
                     if((viewModelMenu.responseData?.dishes[item].tegs.contains(needTeg) == true) ){
                         
                         cardViewMenu(viewModelMenu: viewModelMenu,item: item)
                             .onTapGesture {
                                 //print(item)
                                 //print("ddd")
                                 withAnimation{showPopup.toggle()}
                                 needPopup=item
                             }
                         
                     }
                             
                     
                 }
                 
               
                     
            }
                 
                    
            }
            
        }
        
        //используем кастомное расширение view
        .popupNavigationView(horizontalPadding: 40,heightFrame: 446, show:
                                $showPopup) {
            // MARK: Your Popup content which will also performs
            VStack{
                ZStack(){
                    
                    AsyncImage(url: URL(string:viewModelMenu.responseData?.dishes[needPopup].imageURL ?? "" )) { phase in
                        switch phase {
                        case .empty:
                            ProgressView()
                                
                        case .success(let image):
                            image.resizable()
                                .padding()
                                .aspectRatio(contentMode: .fill)
                                .padding(.horizontal,10)
                                .background(content: {
                                    Rectangle()
                                        .foregroundColor(Color(red: 0.97, green: 0.97, blue: 0.96))
                                    //.foregroundColor(.red)
                                        .frame(width: 311,height: 225)
                                        .cornerRadius(10)
                                        
                                    
                                    
                                })
                                .frame(width: 198, height: 204)
                            
                            
                        case .failure:
                            Image(systemName: "photo")
                        @unknown default:
                            EmptyView()
                        }
                    }
                    
                    
                    VStack(){
                        HStack(spacing: 16){
                            Spacer()
                            Image("heart")
                                .background(content: {
                                    Rectangle()
                                        .frame(width: 40,height: 40)
                                        .foregroundColor(.white)
                                        .cornerRadius(8)
                                })
                            
                            Button(action: { withAnimation{showPopup.toggle()}}, label: {
                                Image("xmark")
                                    .background(content: {
                                        Rectangle()
                                            .frame(width: 40,height: 40)
                                            .foregroundColor(.white)
                                            .cornerRadius(8)
                                    })
                                    .padding(8)
                            })
                            
                            
                            
                        }
                        .padding(.horizontal,8)
                        Spacer()
                    }
                }
                
                
                VStack(alignment: .leading,spacing: 8){
                    HStack{
                        Text(viewModelMenu.responseData?.dishes[needPopup].name ?? "")
                            .fontWeight(.medium)
                            .font(.system(size: 16))
                            .kerning(0.16)
                        Spacer()
                    }
                    
                    
                    HStack{
                        Text("\(viewModelMenu.responseData?.dishes[needPopup].price ?? 0) ₽")
                            .font(.system(size: 16))
                            .kerning(0.16)
                        Text("· \(viewModelMenu.responseData?.dishes[needPopup].weight ?? 0) г")
                            .font(.system(size: 16))
                            .kerning(0.16)
                            .foregroundColor(.secondary)
                        Spacer()
                    }
                    
                    Text(viewModelMenu.responseData?.dishes[needPopup].description ?? "")
                        .kerning(0.16)
                        .foregroundColor(.secondary)
                        .font(.system(size: 14))
                }
                
                Spacer()
                
                Button(action: {
                    needToBy.append(needPopup)
                    withAnimation{showPopup.toggle()}
                }, label: {
                    ZStack{
                        Rectangle()
                            .frame(maxWidth: .infinity,maxHeight: 48)
                            .foregroundColor(.blue)
                            .cornerRadius(10)
                        Text("Добавить в корзину")
                            .foregroundColor(.white)
                            .fontWeight(.medium)
                            .font(.system(size: 16))
                            .kerning(0.1)
                    }
                })
                
              
                
                    
                
                
                Spacer()
            }
            .padding(16)
        }
        
        
        
    }
    
        
}




struct ContentViewListMenu_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewListMenu()
    }
}


struct cardViewMenu: View {
    @StateObject var viewModelMenu: JSONLoadModelMenu
    @State var item:Int
    var body: some View {
        VStack(alignment: .center, spacing: 5){
            VStack{
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
