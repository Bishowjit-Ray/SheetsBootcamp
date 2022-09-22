//
//  ContentView.swift
//  SheetsBootcamp
//
//  Created by Bishowjit Ray on 14/9/22.
//

import SwiftUI

struct ContentView: View {
    @State  var showSheet: Bool = false
    var body: some View {
        ZStack{
            Color.green
                .edgesIgnoringSafeArea(.all)
            Button(action: {
                showSheet.toggle()
            }, label: {
                Text("Button")
                    .foregroundColor(Color.white)
                    .font(.title)
                    .padding(10)
                    .background(Color.purple.cornerRadius(20))
            })
            .fullScreenCover(isPresented: $showSheet, content: {
                SecondScreen()
            })
//            .sheet(isPresented: $showSheet , content: {
//                SecondScreen()
//            })
        }
    }
}
struct SecondScreen: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack(alignment: .topLeading){
            Color.red
                .edgesIgnoringSafeArea(.all)
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
             Image(systemName: "xmark")
                    .foregroundColor(Color.white)
                    .font(.title)
                    .padding(10)
                    
            })
           
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        //SecondScreen()
    }
}
