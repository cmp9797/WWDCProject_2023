//
//  SwiftUIView.swift
//
//
//  Created by Celine Margaretha on 18/04/23.
//

import SwiftUI

struct InstrumentDetailInfoView: View {
    
    @Environment(\.dismiss) var dismiss
    @Binding var instrument: Instrument
    
    var id: Int
//    var instrument: Instrument
  
//    init(id : Int) {
//        self.instrument = ModelData().instrumentsData[id]
//        print("data")
//        print(instrument)
//    }
//    init(){
//        self.title = instrument.name
//        self.alias = instrument.alias
//        self.role = instrument.role
//        self.form = instrument.form
//        self.material = instrument.material
//        self.notationSymbol = instrument.notationSymbol
//        self.desc = instrument.desc
//        self.imageName = instrument.imageBtn
//    }
        
    var body: some View {
        
        ZStack {
            //Button
            VStack {
                Button {
                    print(instrument)
                    dismiss()
                } label: {
                    VStack {
                        VStack {
                            // Rounded Rectangle
                            VStack {
                                RoundedRectangle(cornerRadius: 50)
                                    .frame(maxWidth: 300, maxHeight: 9)
                            }
                            .padding(.bottom, 15)
                            
                            //Content
                            VStack (alignment: .leading){
                                VStack {
                                    Text("\(instrument.name)")
                                        .font(.system(size: 45))
                                        .fontWeight(.bold) +
                                    Text(" (Pelog scale)")
                                        .italic()
                                        .font(.system(size: 45))
                                        .fontWeight(.bold)
                                }
                                .padding(.leading, 15)
                                
                                HStack (alignment: .top) {
                                    //Image
                                    VStack {
                                        Image("\(instrument.imageDetail)")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(maxWidth: UIScreen.main.bounds.size.width/2)
                                    }
                                    .padding(15)
                                    
                                    //Details
                                    VStack (alignment: .leading) {
                                        Text("Alias: \(instrument.alias)")
                                            .font(.largeTitle)
                                            .fontWeight(.semibold)
                                            .padding(.bottom)
                                        
                                        Text("Role: \(instrument.role)")
                                            .font(.largeTitle)
                                            .fontWeight(.semibold)
                                            .padding(.bottom)
                                        
                                        Text("Material: \(instrument.notationSymbol)")
                                            .font(.largeTitle)
                                            .fontWeight(.semibold)
                                            .padding(.bottom)
                                        
                                        VStack (alignment: .leading) {
                                            Text("\(instrument.desc)")
                                                .font(.largeTitle)
                                                .fontWeight(.semibold)
                                                .padding(.bottom)
                                        }
                                        
                                    }
                                    .padding(.leading,  30)
                                    
                                    Spacer()
                                }
                            }
                            
                            
                        }
                        .padding(.vertical, 20)
                        .padding([.horizontal, .bottom], 60)
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .foregroundColor(Color("myDarkBrown"))
                        .background(Color.brown)
                    }
                    .frame(maxWidth: .infinity)
                }
            }
            .background((Color.brown))

        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
       
    }
        
}

//struct InstrumentDetailInfoView_Previews: PreviewProvider {
//    //observable object protocol
//    static var instruments = ModelData().instrumentsData
//
//    static var previews: some View {
//
//        InstrumentDetailInfoView()
//            .previewInterfaceOrientation(.landscapeLeft)
//
//    }
//}
