//
//  ScratchGameView.swift
//  Gamelan
//
//  Created by Celine Margaretha on 14/04/23.
//

import SwiftUI

struct ScratchGamePageView: View {
    @State var isDone: Bool = false
    var body: some View {
        VStack {
            ScratchCardView(cursorSize: 200, isDone: $isDone) {
                VStack {
                    Image("bg-scratchContent")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .edgesIgnoringSafeArea(.all)
            } overlayView: {
                Image("bg-scratch")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .edgesIgnoringSafeArea(.all)
            
            NavigationLink(destination: AboutGamelanView(), isActive: $isDone) {
            }
        }
        .background(Color("myDarkBrown"))

    }
}

struct ScratchGameView_Previews: PreviewProvider {
    static var previews: some View {
        ScratchGamePageView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

//View Builder to custom Scretch Card View
struct ScratchCardView<Content: View, OverlayView: View>:View {
    
    var content: Content
    var overlayView: OverlayView
    
    init(cursorSize: CGFloat, isDone: Binding<Bool>, @ViewBuilder content: @escaping ()->Content, @ViewBuilder overlayView: @escaping ()-> OverlayView) {
        self.content = content()
        self.overlayView = overlayView()
        self.cursorSize = cursorSize
        self._isDone = isDone
    }
    
    //Elements to control Scratch Effect
    @State var startingPoint: CGPoint = .zero
    @State var points: [CGPoint] = []
    
    //Update gesture position
    @GestureState var gestureLocation: CGPoint = .zero
    
    //Custom stroke style
    var cursorSize: CGFloat
    @Binding var isDone: Bool
    
    var body: some View {
        ZStack {
            
            //Custom overlayView
            overlayView
                .opacity(isDone ? 0 : 1)
            
            //Custom content -> hide + masking content
            content
                .mask(
                    ZStack {
                        if !isDone {
                            ScratchMaskShape(points: points, startingPoint: startingPoint)
                                .stroke(style: StrokeStyle(lineWidth: cursorSize, lineCap: .round, lineJoin: .round))
                        }
                        else {
                            //Show Full Content
                            Rectangle()
                        }
                    }
                    
                )
                .gesture(
                    DragGesture()
                        .updating(
                            $gestureLocation,
                            body: { value, out, _ in
                                out = value.location

                                DispatchQueue.main.async {
                                    //Update start point
                                    if startingPoint == .zero {
                                        startingPoint = value.location
                                    }

                                    //add user drag locations
                                    points.append(value.location)
//                                    DEBUG
//                                    print(points)
                                }

                            }
                        )
                        .onEnded({ value in
                            withAnimation{
                                isDone = true
                            }
                        })
                )
            
        }
//        .frame(width: .infinity, height: .infinity)
//        .cornerRadius(20)
        .onChange(of: isDone, perform: { value in
            //Check and reset view
            if !isDone && !points.isEmpty {
                withAnimation(.easeInOut) {
                    resetView()
                }
            }
        })
    }
    
    
    func resetView(){
        points.removeAll()
        startingPoint = .zero
    }
}


//Scratch Mask Shape -> make base image appear based on user gesture
struct ScratchMaskShape: Shape {

    var points: [CGPoint]
    var startingPoint: CGPoint
    
    func path(in rect: CGRect) -> Path {
        return Path { path in
            path.move(to: startingPoint)
            path.addLines(points)
        }
    }
}
