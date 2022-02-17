//
//  ContentView.swift
//  BoilingWaterScenario
//
//  Created by gabi brown on 2022-02-16.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: Stored Properties
    @State var temperatureEntry = ""
    
    @State var feedback = ""
    
    @State var kpa:Int = 0
    
    //MARK: Computed Properties
    //     var kpa: String {
    //        return String(5 * Int(temperatureEntry)! - 400)
    //    }
    
    var body: some View {
        VStack {
            Text("What temperature does your water boil?")
                .font(.title)
            
            TextField("",
                      text: $temperatureEntry)
                .multilineTextAlignment(.leading)
            
            Button(action: {
                kpa = (5 * Int(temperatureEntry)! - 400)
                
                print(kpa)
                
                if kpa < 99 {
                    feedback = "Above sea level"
//                } else if (kpa != 0) : 100 {
//                    feedback = "Sea level"
                    
                } else if kpa > 101 {
                    feedback = "Below sea level"
                }
                
            }, label: {
                Text("Run formula")
            })
                .buttonStyle(.bordered)
            
            Text("\(kpa)")
            
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
