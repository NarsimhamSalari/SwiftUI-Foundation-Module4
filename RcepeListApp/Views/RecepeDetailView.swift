//
//  RecepeDetailView.swift
//  RcepeListApp
//
//  Created by Narsimham Salari on 7/29/22.
//

import SwiftUI

struct RecepeDetailView: View {
    
    var recepe : Recepe
    
    var body: some View {
        
        ScrollView{
            
            VStack(alignment: .leading, spacing: 5){
                
                // MARK: Recepe Images
                
                Image(recepe.image).resizable()
                                   .scaledToFit()
                                   .padding(.bottom, 10)
                
                
                // MARK: Recepe Ingredients
                
                VStack(alignment: .leading, spacing: 5){
                    
                    Text("Ingredients").font(.headline).foregroundColor(Color.black).multilineTextAlignment(.leading)
                    
                    ForEach(recepe.ingredients, id: \.self) { item in
                        Text("• " + item)
                    }

                }
                
                Divider()

                // MARK: Recepe Directions
                
                VStack(alignment: .leading, spacing: 10){
                    
                    Text("Directions").font(.headline).foregroundColor(Color.black).multilineTextAlignment(.leading)
                    
                    ForEach(0..<recepe.directions.count, id:\.self) { index in
                        
                        Text(String(index+1) + "• " + recepe.directions[index])
                    }
                    
                    
                }
            }.navigationBarTitle(recepe.name)
  
        }.padding([.leading], 15)
        
    }
}

struct RecepeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        let model = RecepeModel()
        
        RecepeDetailView(recepe: model.recepe[0])
    }
}
