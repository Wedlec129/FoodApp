//
//  ContentViewWallet.swift
//  foodApp
//
//  Created by Борух Соколов on 23.07.2023.
//

import SwiftUI


struct ContentViewWallet: View {
    
    //@State var needToBy: [Int] = [1,2,3]
    
    
    var body: some View {
        VStack{
            foodApp.appBarView()
           // Text("\(needToBy.count)")
            
           // List{
            
            
            HStack{
              //  Text("\(foodApp.ContentViewListMenu.needToBy.endIndex)")
                Image("img")
                
                
                
                
            }
            
                
                
                
           // }
            //.listStyle(.plain)
            
            
        }
    }
}

struct ContentViewWallet_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewWallet()
    }
}
