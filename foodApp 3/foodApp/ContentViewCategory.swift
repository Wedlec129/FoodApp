//
//  ContentView.swift
//  foodApp
//
//  Created by Борух Соколов on 11.07.2023.
//

import SwiftUI

struct ContentViewCategory: View {
    
    @StateObject  var viewModelCategory = JSONLoadModelCategory()
    
    var body: some View {
        
        VStack{
            
            appBarView()
    
            
            ScrollView(.vertical,showsIndicators: false){
                VStack(spacing: 8){
                    
                    ForEach(0 ..< (viewModelCategory.responseData?.сategories.endIndex ?? 0), id: \.self) { i in
                        
                        categoryView(nameCatigory: viewModelCategory.responseData?.сategories[i].name,imageUrl:viewModelCategory.responseData?.сategories[i].imageURL )
                           
                    }
                }
                
            }
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewCategory()
    }
}

struct appBarView: View {
    var body: some View {
        HStack(alignment: .top,spacing: 4){
            Image("location")
                .resizable()
                .frame(width: 24, height: 24)
                .padding(.top,1)
            VStack(alignment: .leading,spacing: 4){
                Text("Санкт-Петербург")
                    .font(.title2)
                    .fontWeight(.medium)
                Text("12 Августа, 2023")
                    .foregroundColor(.black.opacity(0.5))
                
            }
            Spacer()
            Image("avatarIcon")
                .resizable()
                .frame(width: 44, height: 44)
            
        }
        .padding()
    }
}

struct categoryView: View {
    let nameCatigory:String?
    let imageUrl:String?
    
    var body: some View {
        ZStack(alignment: .leading){
            AsyncImage(url: URL(string:imageUrl ?? "" ),scale:2)
                .frame(width: 343, height: 148)
                .cornerRadius(10)
            VStack{
                Text(nameCatigory ?? "0")
                    .font(.system(size: 20))
                    .kerning(0.2)
                    .fontWeight(.medium)
                    .padding()
                //.padding(.bottom,80)
                    .fixedSize(horizontal: false, vertical: true)
                    .frame(width: 191,alignment: .leading)
                Spacer()
                
            }
            
        }
    }
}
