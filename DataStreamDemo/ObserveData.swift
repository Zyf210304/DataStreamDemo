//
//  ObserveData.swift
//  DataStreamDemo
//
//  Created by 亚飞 on 2021/1/11.
//

import SwiftUI

struct ObserveData: View {
    
    @ObservedObject var observeClassDemo: ObserveClassDemo
    
    var body: some View {
        
        VStack {
            VStack {
                
                Stepper(value: self.$observeClassDemo.count) {
                    Text("Steeper")
                }.padding(80)
                Text("MianView:\(self.observeClassDemo.count)")
                ObserveData2(observeClassDemo: self.observeClassDemo).padding()
            }
        }
    }
    
}

struct ObserveData2: View {
    
    @ObservedObject var observeClassDemo: ObserveClassDemo
    
    var body: some View {
        
        VStack {
            VStack {
                
                Stepper(value: self.$observeClassDemo.count) {
                    Text("Steeper")
                }.padding(80)
                Text("secoudView:\(self.observeClassDemo.count)")
                
            }
        }
    }
    
}

struct ObserveData3: View {
    
    @ObservedObject var observeClassDemo: ObserveClassDemo
    
    var body: some View {
        
        VStack {
            VStack {
                
                Stepper(value: self.$observeClassDemo.count) {
                    Text("Steeper")
                }.padding(80)
                Text("thirdView:\(self.observeClassDemo.count)")
                
            }
        }
    }
    
}

struct ObserveData_Previews: PreviewProvider {
    static var previews: some View {
        ObserveData(observeClassDemo: ObserveClassDemo())
    }
}
