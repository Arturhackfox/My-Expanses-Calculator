//
//  typetest.swift
//  calculate my expenses
//
//  Created by Arthur Sh on 16.10.2022.
//

import SwiftUI

struct typetest: View {
    @State var cost = ""
        @State var number = 0

    var body: some View {
        VStack {
            TextField("Please Enter your cost in HKD", text: $cost)
                .keyboardType(.decimalPad)
                .padding(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 100)
                        .stroke(Color.blue, lineWidth: 1)
                )
                .padding()
            Button("Calculate") {
                number = Int(cost) ?? 0
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.primary)
            .cornerRadius(30)
            
            Text("\(number * 3)")
                .padding()
                .font(.largeTitle)
        }
    }
    }

struct typetest_Previews: PreviewProvider {
    static var previews: some View {
        typetest()
    }
}
