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
            
            print("current id \(id)")
            print(tappedInstrument)
 //           print(ModelData())
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
                                .padding(.bottom, 30)
                                HStack (alignment: .center) {
                                    //Image
                                    VStack {
                                        Image("\(instrument.imageDetail)")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(maxWidth: UIScreen.main.bounds.size.width/2)
                                    }
                                    .padding(15)
                                    
                                    //Details
                                    ScrollView(){
                                        VStack (alignment: .leading) {
                                                
                                            //alias
                                            HStack (alignment: .top){
                                                Text("Alias: ")
                                                    .fontWeight(.semibold)

                                                Text("\(instrument.alias)")
                                                    .fontWeight(.semibold)
                                                    .multilineTextAlignment(.leading)
                                            }
                                            .font(.system(size: 30))
                                            .padding(.bottom)
                                            
                                            //role
                                            HStack (alignment: .top){
                                                Text("Role: ")
                                                    .fontWeight(.semibold)

                                                Text("\(instrument.role)")
                                                    .fontWeight(.semibold)
                                                    .multilineTextAlignment(.leading)
                                            }
                                            .font(.system(size: 30))
                                            .padding(.bottom)
                                            
                                            //material
                                            HStack (alignment: .top){
                                                Text("Material: ")
                                                    .fontWeight(.semibold)

                                                Text("\(instrument.material)")
                                                    .fontWeight(.semibold)
                                                    .multilineTextAlignment(.leading)

                                            }
                                            .font(.system(size: 30))
                                            .padding(.bottom)
                                            
                                            //form
                                            HStack (alignment: .top){
                                                Text("Form: ")
                                                    .fontWeight(.semibold)

                                                Text("\(instrument.form)")
                                                    .fontWeight(.semibold)
                                                    .multilineTextAlignment(.leading)

                                            }
                                            .font(.system(size: 30))
                                            .padding(.bottom)
                                            
                                            //notation symbol
                                            HStack (alignment: .center){
                                                Text("Notation Symbol: ")
                                                    .font(.system(size: 30))
        //                                            .font(.largeTitle)
                                                    .fontWeight(.semibold)
                                                
                                                if instrument.notationSymbol == "-" {
                                                    Text("-")
                                                        .font(.system(size: 30))
            //                                            .font(.largeTitle)
                                                        .fontWeight(.semibold)
                                                        .padding(.bottom)
                                                } else {
                                                    Image("\(instrument.notationSymbol)")
                                                        .resizable()
                                                        .aspectRatio(contentMode: .fit)
                                                        .frame(maxHeight: 20)
                                                }
                                            }
                                            .padding(.bottom)
                                            
                                            //desc
                                            HStack (alignment: .top){

                                                Text("\(instrument.desc)")
                                                    .fontWeight(.semibold)
                                                    .multilineTextAlignment(.leading)

                                            }
                                            .font(.system(size: 30))
                                            .padding(.bottom)
                                            
                                        }
                                        .frame(alignment: .leading)
                                        .padding(30)
                                        
                                        Spacer()
                                    }
                                    .background(Color("myDarkBrown").opacity(0.05))
                                    .cornerRadius(20)
                                    
                                }
                            }
                            
                            
                        }
                        .padding(.vertical, 20)
                        .padding([.horizontal], 60)
                        .padding([.bottom], 30)
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

struct InstrumentDetailInfoView_Previews: PreviewProvider {
    //observable object protocol
    static var instruments = ModelData().instrumentsData

    static var previews: some View {

        InstrumentDetailInfoView(id: 0)
            .previewInterfaceOrientation(.landscapeLeft)

    }
}
