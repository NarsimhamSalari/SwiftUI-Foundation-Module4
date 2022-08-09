//
//  RecepeTabView.swift
//  RcepeListApp
//
//  Created by Narsimham Salari on 8/9/22.
//

import SwiftUI

struct RecepeTabView: View {
    var body: some View {
      
        TabView{
            
            Text("Tab 1").tabItem({
                
                Image(systemName: "star.fill")
                Text("Featured")

            })
            
            RecepeListView().tabItem({
                
                Image(systemName: "list.bullet")
                Text("List")
  
            })
            
            
        }
    }
}

struct RecepeTabView_Previews: PreviewProvider {
    static var previews: some View {
        RecepeTabView()
    }
}
