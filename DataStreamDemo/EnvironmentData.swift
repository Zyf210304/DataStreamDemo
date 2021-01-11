//
//  EnvironmentData.swift
//  DataStreamDemo
//
//  Created by 亚飞 on 2021/1/11.
//

import SwiftUI



struct EnvironmentData: View {
    
    @EnvironmentObject var observeClassDemo: ObserveClassDemo
    
    var body: some View {
        
        VStack {
            VStack {
                
                Stepper(value: self.$observeClassDemo.count) {
                    Text("Steeper")
                }.padding(80)
                Text("MianView:\(self.observeClassDemo.count)")
                EnvironmentData2().padding()
            }
        }
    }
    
}

struct EnvironmentData2: View {
    
    @State var count: Int = 0
    
    var body: some View {
        
        VStack {
            VStack {
                
                Stepper(value: self.$count) {
                    Text("Steeper")
                }.padding(80)
                Text("secoudView:\(self.count)")
                
            }
            EnvironmentData3().padding()
        }
    }
    
}

struct EnvironmentData3: View {
    
    @EnvironmentObject var observeClassDemo: ObserveClassDemo
    
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



struct EnvironmentData_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentData().environmentObject(ObserveClassDemo())
    }
}
