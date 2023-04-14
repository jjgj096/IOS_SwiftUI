//
//  ContentView.swift
//  Swift study
//
//  Created by 윤줘 on 2023/04/14.
//

import SwiftUI

struct ContentView: View {
    
    @State var touchedCount = 0
    var body: some View {
        NavigationView{
            Form{
                Text("버튼을 클릭한 횟수 \(touchedCount)")
                    .foregroundColor(Color.green)
                Button("+1"){
                    //버튼을 눌렀을경우 발생하는 callback
                    self.touchedCount += 1
                }
                Button("-1"){
                    self.touchedCount -= 1
                }
                Button("clear"){
                    self.touchedCount = 0
                }
                
            }.navigationBarTitle("클릭한 횟수 버튼")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
