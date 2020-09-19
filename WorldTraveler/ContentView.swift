//
//  ContentView.swift
//  WorldTraveler
//
//  Created by hks on 18.09.2020.
//

import SwiftUI

struct ContentView: View {
    
    @State var fahrenheitValue : String = ""
    let numberFormatter : NumberFormatter = {
        
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        numberFormatter.minimumFractionDigits = 0
        numberFormatter.maximumFractionDigits = 2
        return numberFormatter
    }()
    
    func convertToCelsius() -> String{
        
        if let value = Double(fahrenheitValue)
        {
            let fahrenheit = Measurement<UnitTemperature>(value: value, unit: .fahrenheit)
            
            let celciusValue = fahrenheit.converted(to: .celsius)
            
            return numberFormatter.string(from: NSNumber(value: celciusValue.value)) ?? "???"
        }else{
            return "???"
        }
    }
    
    var body: some View {
        VStack{
            TextField("CONVERSION_TEXT_FIELD_PLACEHOLDER", text: $fahrenheitValue)
                .font(Font.system(size: 64.0))
                .keyboardType(.decimalPad)
                .multilineTextAlignment(.center)
            Text("CONVERSION_FAHRENHEIT")
            Text("CONVERSION_IS_ACTUALLY").foregroundColor(.gray)
            Text(convertToCelsius()).font(Font.system(size: 64.0))
            Text("CONVERSION_DEGREES_CELCIUS")
            Spacer()
        }
        .foregroundColor(.orange)
        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
