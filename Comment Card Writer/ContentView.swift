//
//  ContentView.swift
//  Comment Card Writer
//
//  Created by Buclez, Pierre (JD) on 07/02/2023.
//

import SwiftUI

struct ContentView: View {
    var student = "Pierre Buclez"
    var studentHouse = "JD"
    let exampleDivs = Division.examples
    var selectedDiv = 0
    var body: some View {
        NavigationView {
        
            VStack(alignment: .trailing) {
                Text("\(student)" +   "\(studentHouse) ")
                    .bold()
                Form {
                    Text("Comment Card Writer")
                        .font(.title)
                        .bold()
                    Text(exampleDivs[0].displayStats())
                    Text(exampleDivs[1].displayStats())
                    Text(exampleDivs[2].displayStats())
                    Text(exampleDivs[3].displayStats())
                    
                    List(exampleDivs, id: \.self.code) {
                        division in NavigationLink(destination:
                                                    studentInput(division: division)) {
                        }
                    }
                }
            }
            
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
