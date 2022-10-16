//
//  brludi.swift
//  calculate my expenses
//
//  Created by Arthur Sh on 16.10.2022.
//

import SwiftUI

struct brludi: View {
    
    var timeOfTheDay: String
    var money: Int
    
    
    var body: some View {
        HStack{
            Text("\(timeOfTheDay): ")
                .font(.headline)
            Text("\(money) UAH")
            
            
        }
    }
}

struct brludi_Previews: PreviewProvider {
    static var previews: some View {
        brludi(timeOfTheDay: "Breakfast", money: 29)
    }
}
