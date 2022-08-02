//
//  DataService.swift
//  RcepeListApp
//
//  Created by Narsimham Salari on 7/27/22.
//

import Foundation
import SwiftUI

class DataService {
    
    
   static func getLocalData() -> [Recepe] {
        
        // Parse local JSON file

            // get url path to the JSON file
            
               let pathString = Bundle.main.path(forResource: "recipes", ofType: "json")
            

            // Guard - check path string is not nil otherwise going to return emtpy
            
               guard pathString != nil else {
                   
                   return [Recepe]()
                   
                 }
            
            // create a url object
        
               let url = URL(fileURLWithPath: pathString!)
            
                do{
                        // create a data object
                        let data = try Data(contentsOf: url)
                        
                        //decode the data with json decoder
                        let decoder = JSONDecoder()
                        
                        do {
                            
                            let recepeData = try decoder.decode([Recepe].self, from: data)
                            
                            // add unique id
                            
                            for r in recepeData{
                                
                                r.id = UUID()
                            }
                            
                            // return the recepe
                            
                            return recepeData
                            
                           }
                         catch{
                            
                            print(error)
                            
                          }
                  }
                  catch{
                      
                      print(error)
            
                  }
       return [Recepe]()
    }
    
}
