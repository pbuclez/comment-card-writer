//
//  studentInput.swift
//  Comment Card Writer
//
//  Created by Buclez, Pierre (JD) on 08/02/2023.
//

import SwiftUI

struct studentInput: View {
    let division: Division
    var body: some View {
        Text("Code: \(division.code) + \(division.teacher)")
            
        

    }
}

struct studentInput_Previews: PreviewProvider {
    static var previews: some View {
        studentInput(division: Division)
    }
}
