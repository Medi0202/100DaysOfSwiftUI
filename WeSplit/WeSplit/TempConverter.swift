//
//  TempConverter.swift
//  WeSplit
//
//  Created by Jae Ho Yoon on 2023/03/26.
//

import SwiftUI



struct TempConverter: View {

    enum TempUnit: String, CaseIterable {
        case celsius = "Celsius"
        case fahrenheit = "Fahrenheit"
        case kelvin = "Kelvin"
    }
    
    @State private var inputUnit = TempUnit.celsius
    @State private var inputValue = 0.0
    @State private var outputUnit = TempUnit.fahrenheit
    @FocusState private var valueIsFocused: Bool
    
    private var outputValue: Double {
        if inputUnit == .celsius && outputUnit == .fahrenheit {
            return inputValue * 9 / 5 + 32
        } else if inputUnit == .celsius && outputUnit == .kelvin {
            return inputValue + 273.15
        } else if inputUnit == .fahrenheit && outputUnit == .celsius {
            return (inputValue - 32) * 5 / 9
        } else if inputUnit == .fahrenheit && outputUnit == .kelvin {
            return (inputValue - 32) * 5 / 9 + 273.15
        } else if inputUnit == .kelvin && outputUnit == .celsius {
            return inputValue - 273.15
        } else if inputUnit == .kelvin && outputUnit == .fahrenheit {
            return (inputValue - 273.15) * 9 / 5 + 32
        }
        else { return inputValue }
    }
    
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Picker("Unit", selection: $inputUnit) {
                        ForEach(TempUnit.allCases, id: \.self) {
                            Text($0.rawValue)
                        }
                    }
                    .pickerStyle(.segmented)
                    
                    TextField("Degree", value: $inputValue, format: .number)
                        .multilineTextAlignment(.center)
                        .keyboardType(.decimalPad)
                        .focused($valueIsFocused)
                    
                } header: {
                    Text("Enter temperature")
                }
                
                Section {
                    Picker("Unit", selection: $outputUnit) {
                        ForEach(TempUnit.allCases, id: \.self) {
                            Text($0.rawValue)
                        }
                    }
                    .pickerStyle(.segmented)
                } header: {
                    Text("Choose Unit")
                }
                
                Section {
                    Text(outputValue, format: .number)
                        .frame(maxWidth: .infinity, alignment: .center)
                } header: {
                    Text("Converted temperature")
                }
                
            }
            .navigationTitle("Temperature Converter")
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Spacer()
                    
                    Button("Enter") {
                        valueIsFocused = false
                    }
                }
            }
        }
    }
}


struct TempConverter_Previews: PreviewProvider {
    static var previews: some View {
        TempConverter()
    }
}
