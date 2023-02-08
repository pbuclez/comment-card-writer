//
//  Divisions.swift
//  Comment Card Writer
//
//  Created by Buclez, Pierre (JD) on 07/02/2023.
//

import Foundation

class Division {
    let code: String
    let teacher: String
    
    init(code: String, teacher: String) {
        self.code = code
        self.teacher = teacher
    }
    
    func displayStats() -> String {
        return """
                Code : \(code), Teacher : \(teacher)
                """
        
    }
    
    
    #if DEBUG
    static func createDivisions(code: String, teacher: String) -> Division {
        let division = Division(code: code, teacher: teacher)
        
        return division
    }
    
    static let examples = [Division.createDivisions(code: "vCom7-1", teacher: "Mr Elliot"),
                           Division.createDivisions(code: "vCom11-2", teacher: "Mrs Mini"),
                           Division.createDivisions(code: "vCom9-1", teacher: "Mr T"),
                           Division.createDivisions(code: "vCom2-6", teacher: "Mrs Gurdy")]
    #endif
    
}
