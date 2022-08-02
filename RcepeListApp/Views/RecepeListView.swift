//
//  ContentView.swift
//  RcepeListApp
//
//  Created by Narsimham Salari on 7/27/22.
//

import SwiftUI

struct RecepeListView: View {
    
    @ObservedObject var model = RecepeModel()

    var body: some View {

        NavigationView {

            List(model.recepe){ r in
                
                NavigationLink(destination: RecepeDetailView(recepe: r),
              
                label: {
                    
                    // MARK: Row Item
                    HStack(spacing : 20){
                        
                        Image(r.image)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50, alignment: .center)
                            .clipped()
                            .cornerRadius(5)
                        Text(r.name)

                    }.navigationBarTitle("All Recepe")
                })
            }
        }
    }
}

struct RecepeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecepeListView()
.previewInterfaceOrientation(.portrait)
    }
}
