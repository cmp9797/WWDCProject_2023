//
//  SwiftUIView.swift
//  
//
//  Created by Celine Margaretha on 18/04/23.
//

import SwiftUI

struct InstrumentComponent: View {
    @State private var clickedStatus: Bool = false
    @Binding var tappedInstrument: Int
    @Binding var isPresented: Bool
    
    var id: Int
    
    var body: some View {
        Button (action:{
            isPresented.toggle()
            if clickedStatus == false {
                self.clickedStatus = true
                ModelData().instrumentsData[id].isClicked = clickedStatus
                print(ModelData().instrumentsData[id].name)
                tappedInstrument += 1
            }
            
            print(id)
            print(tappedInstrument)
            print(ModelData())
            print(ModelData().instrumentsData[id])
//            print(imageName)
//            print($instrument)

        }, label: {
            Image("\(ModelData().instrumentsData[id].imageBtn)")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .grayscale(clickedStatus ? 0 : 0.9995)
        })
        .hoverEffect(.lift)
        .fullScreenCover(isPresented: $isPresented, content: {
//            InstrumentDetailView( instrument: $instrument)
            
            //InstrumentDetailInfoView(instrument: ModelData().instrumentsData[id])
            InstrumentDetailInfoView(id: id)

        })
    }
}

struct InstrumentComponent_Previews: PreviewProvider {
    
    //observable object protocol
    static var instruments = ModelData().instrumentsData
    
    static var previews: some View {
        
        InstrumentComponent(tappedInstrument: .constant(0), isPresented: .constant(false), id: 2)
            .previewInterfaceOrientation(.landscapeLeft)

    }
}

struct InstrumentDetailInfoView: View {
    
    @Environment(\.dismiss) var dismiss
    
//    @Binding var sendId: Int
//    var instrument = Instrument(id: 0)

    var instrument: Instrument
    var title = "..."
    var alias = "..."
    var form = "..."
    var role = "..."
    var material = "..."
    var notationSymbol = "..."
    var desc = "..."
    var imageName = ""
    
//    mutating func setInstrument(_ ins: Instrument) {
//        instrument = ins
//    }
    init(id : Int) {
        self.instrument = ModelData().instrumentsData[id]
        print("data")
        print(instrument)
    }
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
