//
//  ContentView.swift
//  NewDataFlowApp
//
//  Created by admin on 10/16/23.
//

import SwiftUI
import Observation

@Observable
class ViewModel {
    init() {}
    
    var count = 42
}

struct ContentView: View {
    var viewModel = ViewModel()
    
    var body: some View {
        VStack {
            Text("Count: \(viewModel.count)")
            Button("Add") {
                viewModel.count += 1
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
