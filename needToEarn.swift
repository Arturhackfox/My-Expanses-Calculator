//
//  needToEarn.swift
//  calculate my expenses
//
//  Created by Arthur Sh on 16.10.2022.
//

import SwiftUI

struct needToEarn: View {
    
    var needToEarn: Int
    
    var body: some View {
        Text("Need to earn: \(needToEarn)")
            .font(.title)
            .padding()

    }
}

struct needToEarn_Previews: PreviewProvider {
    static var previews: some View {
        needToEarn(needToEarn: 12000)
    }
}
