//
//  ContentView.swift
//  DataStreamDemo
//
//  Created by 亚飞 on 2021/1/11.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isShow: Bool = false
    @State private var counter: Int = 0
    
    var body: some View {
        
        VStack {
            
            Button(action: {
                self.isShow.toggle()
            }) {
                Text("点击切换显示效果")
            }
            
            Stepper(value: $counter) {
                Text("Steeper")
            }.padding(80)
            
            ZStack {
                Text("Hello World!")
                    .blur(radius: self.isShow ? 10 : 0)
                if self.isShow {
                    Text("\(self.counter)")
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
