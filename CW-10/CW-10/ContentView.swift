//
//  ContentView.swift
//  CW-10
//
//  Created by Mac on 1/4/21.
//

import SwiftUI
enum steat {
    case happy, sad , Meh , Fine
}
func getSteat(steat: steat) -> String{
    
    switch steat {
    case .Fine:
        return "Fine"
    
    
    case .happy:
        return "Happy"
    case .sad:
        return "Sad"
    case .Meh:
        return "Meh"
    }
}
struct ContentView: View {
    
    
    @State var CureentState = ""
    
    var body: some View {
        NavigationView{
            VStack{
                
                Text("i feel \(CureentState)")
                
                HStack{
                    Text("😁").onTapGesture {
                         CureentState = getSteat(steat: .happy)
                    }
                    Text("😞").onTapGesture {
                        CureentState = getSteat(steat: .happy)
                        
                    }
                    Text("😒").onTapGesture {
                        CureentState = getSteat(steat: .Meh)
                        
                    }
                    Text("😇").onTapGesture {
                        CureentState = getSteat(steat: .Fine)
                        
                    }
                }
            }.navigationTitle("MoodCheck")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

