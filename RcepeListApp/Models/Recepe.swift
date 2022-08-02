//
//  Recepe.swift
//  RcepeListApp
//
//  Created by Narsimham Salari on 7/27/22.
//

import Foundation

class Recepe : Identifiable, Decodable {
    
    var id : UUID?
    var name : String
    var featured : Bool
    var image : String
    var description : String
    var prepTime : String
    var cookTime : String
    var totalTime : String
    var servings : Int
    var ingredients : [String]
    var directions : [String]

}
