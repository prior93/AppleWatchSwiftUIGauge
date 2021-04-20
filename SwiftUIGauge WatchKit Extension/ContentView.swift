//
//  ContentView.swift
//  SwiftUIGauge WatchKit Extension
//
//  Created by parashar.r.adhikary on 20/04/2021.
//

import SwiftUI

struct ContentView: View {
    var gradient = Gradient(colors: [.red,.pink,.purple,.green])
    
    
    
    var body: some View {
        Gauge(value: 33.0, in : 0.0 ... 100.0) {
            Text("Speed").foregroundColor(.blue)
        } currentValueLabel:{
            Text("33") .foregroundColor(.blue)
        }
        minimumValueLabel: {
            Text("0").foregroundColor(.pink)
        }
        maximumValueLabel:{
            Text("100").foregroundColor(.green)
        }
        .gaugeStyle(CircularGaugeStyle(tint: gradient))

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
