//
//  BindingData.swift
//  DataStreamDemo
//
//  Created by 亚飞 on 2021/1/11.
//

import SwiftUI

struct BindingData: View {
    
    @State private var counter: Int = 0
    
    var body: some View {
        VStack {
            Stepper(value: $counter) {
                Text("Steeper")
            }.padding(80)

            Text("mainView:\(self.counter)")
            Subview(subCount: $counter)
                .padding()
        }
    }
}


struct Subview:View {
    @Binding var subCount:Int
    var body: some View {
        VStack {
            Stepper(value: $subCount) {
                Text("Steeper")
            }.padding(80)

            Text("SubView:\(self.$subCount.wrappedValue)")
        }
        
    }
}

struct BindingData_Previews: PreviewProvider {
    static var previews: some View {
        BindingData()
    }
}
