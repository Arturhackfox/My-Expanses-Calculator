//
//  ContentView.swift
//  calculate my expenses
//
//  Created by Arthur Sh on 16.10.2022.
//

import SwiftUI


struct ContentView: View {
    @State var summary = 0
    
    @State var totalIntBr = 0
    @State var totalIntLu = 0
    @State var totalIntDi = 0
    
    @State var totalStringBr = ""
    @State var totalStringLu = ""
    @State var totalStringDi = ""
  
    
    var breakFast = "Breakfast"
    var lunch = "Lunch"
    var dinner = "Dinner"

    @State var breakFastMoney = 0
    @State var lunchMoney = 0
    @State var dinnerMoney = 0
    
    var body: some View {

           VStack(){
                Text("Calculate your day")
                    .font(.title)
                    .bold()
               
       
                   
               HStack(){
                   VStack(alignment: .leading, spacing: 15){
                       HStack{
                           Text("\(breakFast): ")
                               .font(.headline)
                           
                           TextField("enter...", text: $totalStringBr)
                           
                       }
                       
                       HStack{
                           Text("\(lunch): ")
                               .font(.headline)
                           TextField("enter...", text: $totalStringLu)
                       }
                       
                       HStack{
                           Text("\(dinner): ")
                               .font(.headline)
                           TextField("enter...", text: $totalStringDi)
                       }
                       
                       brludi(timeOfTheDay: "To save", money: 40000)

                   }
                }
               .padding(30)
               .padding(.trailing, 100)
               
               
               Text("Total spendings: \(summary)")
                   .font(.title2)
                   .padding()
               
               
                
                       Button {
                           converter(string1: totalStringBr, string2: totalStringLu, string3: totalStringDi)
//                           summary = Int(totalStringBr) + Int(totalStringLu) + Int(totalStringDi) ?? 0
                       } label: {
                           Text("Calculate")
                               .font(.title)
                               .bold()
                               .frame(width: 180, height: 60)
                               .foregroundColor(.white)
                               .background(Color.green)
                               .cornerRadius(12)
                           
                       }

               
               
                Spacer()
            }
            .padding()
        
        
        
        }
    
    // MARK: Calculations
    func converter(string1: String, string2: String, string3: String) -> Int {
        let int1 = Int(string1)
        let int2 = Int(string2)
        let int3 = Int(string3)
        
        if (int1 != 0) && (int2 != 0) && (int3 != 0){
            summary = int1! + int2! + int3!
    }
        return summary
    }
    
    
//    func gatherAll(breakfast: Int, lunch: Int, dinner: Int) -> Int {
//        if (breakfast != 0) && (lunch != 0) && dinner != 0 {
//            totalAmount = breakfast + lunch + dinner
//        }
//            return totalAmount
//        }
        
        
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
