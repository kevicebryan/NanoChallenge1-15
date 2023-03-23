//
//  HomeView.swift
//  Your Personal Snack
//
//  Created by Kevin Bryan on 18/03/23.
//

import SwiftUI

struct HomeView: View {
  @State var username: String = ""
  @State private var animationAmount: CGFloat = 1
  @State var answers = [0.0, 0.0, 0.0, 0.0, 0.0]

  var body: some View {
    NavigationView {
      ZStack {
        Color("bgOrange")
          .edgesIgnoringSafeArea(.all)

        Image("oval-background").padding(.top, 260.0).edgesIgnoringSafeArea(.bottom)
        Image("lays-background").edgesIgnoringSafeArea(.bottom).padding(.top, 680)

        VStack {
          VStack(alignment: .center) {
            Text("Get to Know Your").fontWeight(.medium).font(.title2)
            Text("Personal Snack!").fontWeight(.bold).font(.largeTitle)
          }.foregroundColor(Color("neonYellow"))

          VStack(alignment: .leading) {
            Text("How should we call you?")
              .padding(.bottom, -4.0)
            TextField(
              "Nickname",
              text: $username
            )
            .textInputAutocapitalization(.never)
            .disableAutocorrection(true)
            .textFieldStyle(OvalTextFieldStyle())
            .frame(width: 332)

          }.padding(.vertical, 20.0).padding(.bottom, 40)

          VStack {
            NavigationLink(destination: QuizView(username: $username, answers: $answers).onAppear {
              resetAnswer(answers: &answers)
            }) {
              Image("doritos-play")
                .scaleEffect(animationAmount)
                .animation(.linear(duration: 0.15).delay(0.2).repeatForever(autoreverses: true), value: animationAmount)
                .onAppear {
                  animationAmount = 1.1
                }
            }
            Text("Click the chip to play!").font(.title2).fontWeight(.light).foregroundColor(.white).padding(.top, -8)
          }
        }
      }
    }.accentColor(.white)
  }
}

struct OvalTextFieldStyle: TextFieldStyle {
  func _body(configuration: TextField<Self._Label>) -> some View {
    configuration
      .padding(10.0)
      .background(.white)
      .overlay(
        RoundedRectangle(cornerRadius: 12)
          .stroke(Color.black, lineWidth: 2)
      )
      .cornerRadius(12)
  }
}

struct HomeView_Previews: PreviewProvider {
  static var previews: some View {
    HomeView()
  }
}
