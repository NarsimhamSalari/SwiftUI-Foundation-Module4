//
//  RecepeModel.swift
//  RcepeListApp
//
//  Created by Narsimham Salari on 7/27/22.
//

import Foundation

class RecepeModel : ObservableObject {
    
    @Published var recepe = [Recepe]()
    
    init() {
        
        // set JSON parsing here
        // Set recepe properties
        
        self.recepe = DataService.getLocalData()

    }
    
}
