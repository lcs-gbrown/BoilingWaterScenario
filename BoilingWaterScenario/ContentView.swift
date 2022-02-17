//
//  ContentView.swift
//  BoilingWaterScenario
//
//  Created by gabi brown on 2022-02-16.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: Stored Properties
    @State var temperatureEntry = Int("")
    
    //MARK: Computed Properties
    var kpa: String {
        return String(5 * temperatureEntry! - 400)
    }
    
    var body: some View {
        VStack {
            Text("What temperature does your water boil?")
            
            TextField("e.g 100",
                      text: .constant(""),
                      prompt: Text("e.g. 100"))
            
            Button(action: {
                print("Button was pressed")
            }, label: {
                Text("Run formula")
            })
                .buttonStyle(.bordered)
            
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
