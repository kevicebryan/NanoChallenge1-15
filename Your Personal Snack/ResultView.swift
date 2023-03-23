//
//  ResultView.swift
//  Your Personal Snack
//
//  Created by Kevin Bryan on 18/03/23.
//

import SwiftUI

struct ResultView: View {
  @Binding var username: String
  @Binding var snack: Result
  @State var snackScale = 0.95

  var body: some View {
    ScrollView {
      VStack {
        snack.snackImage.scaleEffect(snackScale)
          .animation(.linear(duration: 0.15).delay(0.2), value: snackScale)
          .onTapGesture {
            snackScale = 1.2
          }.padding(.top, -60)
        snack.factImage.padding(.top, -125)
        snack.bodyImage.padding(.top)

        VStack {
          Text("Teman-teman lainnya").frame(width: 321, height: 46)
            .background(.black).cornerRadius(30).overlay(RoundedRectangle(cornerRadius: 30).stroke(Color.white, lineWidth: 1)).padding(.top, 12)

          HStack(alignment: .top) {
            Text("Kevin").padding()
            Text("Arthur").padding()
            Text("Edwin").padding()
          }.frame(width: 361, height: 50)

          HStack(alignment: .top) {
            Text("Kevin").padding()
            Text("Arthur").padding()
            Text("Edwin").padding()
          }.frame(width: 361, height: 50)

          HStack(alignment: .top) {
            Text("Kevin").padding()
            Text("Arthur").padding()
            Text("Edwin").padding()
          }.frame(width: 361, height: 50)

        }.background(LinearGradient(colors: [.purple, .pink], startPoint: .topLeading, endPoint: .bottomTrailing)).cornerRadius(32).overlay(RoundedRectangle(cornerRadius: 30).stroke(Color.white, lineWidth: 1)).padding(.top, 12).foregroundColor(.white).font(.title3)
      }
    }
    .navigationTitle("Hi, \(username) kamu seperti...").font(.largeTitle)
    .background(Color("bgOrange"))
  }
}

struct ResultView_Previews: PreviewProvider {
  static var previews: some View {
    ResultView(username: .constant("Kevin"), snack: .constant(lays))
  }
}
