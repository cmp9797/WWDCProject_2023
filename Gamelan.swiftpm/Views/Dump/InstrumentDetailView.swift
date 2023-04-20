//
//  SwiftUIView.swift
//  
//
//  Created by Celine Margaretha on 20/04/23.
//

import SwiftUI

struct InstrumentDetailView: View {
    @Environment(\.dismiss) var dismiss

    @Binding var instrument: Instrument

    var body: some View {
        
        Text("\(instrument.name)")
        Button {
            print(instrument)
//            print($instrument)
//            dismiss()
        } label: {
            Text("dismiss")
        }
    }
}
