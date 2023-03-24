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
  @State var threeColumnGrid = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]

  @FetchRequest(sortDescriptors: []) var players: FetchedResults<Player>
  @State var matchingPlayers = []

//  @State var dummyPlayers = [DummyPlayer(snack: "lays", username: "Kevin"),
//                             DummyPlayer(snack: "lays", username: "Mark"),
//                             DummyPlayer(snack: "lays", username: "Bryan"),
//                             DummyPlayer(snack: "lays", username: "Steve"),
//                             DummyPlayer(snack: "bengbeng", username: "Arthur"),
//                             DummyPlayer(snack: "kopiko", username: "Edwin"),
//                             DummyPlayer(snack: "kopiko", username: "Vincent"),
//                             DummyPlayer(snack: "lays", username: "James")]

  var body: some View {
    ScrollView {
      VStack {
        Text("Hi, \(username) kamu seperti").font(.largeTitle).fontWeight(.bold).padding(.horizontal, 16).padding(.bottom, -12).zIndex(100).foregroundColor(.black).multilineTextAlignment(.center)
        snack.snackImage.scaleEffect(snackScale)
          .animation(.linear(duration: 0.15).delay(0.2), value: snackScale)
          .onAppear {
            snackScale = 1.2
          }.padding(.top, -40)
        snack.factImage.padding(.top, -80)
        snack.bodyImage.padding(.top)

        VStack {
          Text("Teman-teman lainnya").frame(width: 321, height: 46)
            .background(.black).cornerRadius(18).overlay(RoundedRectangle(cornerRadius: 18).stroke(Color.white, lineWidth: 1)).padding(.top, 12)

          if matchingPlayers.count > 1 {
            LazyVGrid(columns: threeColumnGrid, alignment: .center) {
              ForEach(players.indices, id: \.self) {
                index in
                if players[index].snack == snack.snack {
                  Text(players[index].username ?? "Siapa?").padding(.vertical, 20)
                }
              }
            }.frame(width: 361)

          } else {
            Text("🎊 Congrats! 🎊\("\n") Kamu istimewa & unique!").multilineTextAlignment(.center).padding(.vertical, 12).frame(width: 361)
          }

          // don't forget to change to players & players.username
          //          if dummyPlayers.count > 0 {
          //            LazyVGrid(columns: threeColumnGrid, alignment: .center) {
          //              ForEach(dummyPlayers.indices, id: \.self) {
          //                index in
          //                if dummyPlayers[index].snack == snack.snack {
          //                  Text(dummyPlayers[index].username).padding(.vertical, 20)
          //                }
          //              }
          //            }.frame(width: 361)
          //
          //          } else {
          //            Text("Selamat! Kamu manusia yang sangat unique!")
          //          }

        }.background(LinearGradient(colors: [.purple, .pink], startPoint: .topLeading, endPoint: .bottomTrailing)).cornerRadius(16).overlay(RoundedRectangle(cornerRadius: 16).stroke(Color.white, lineWidth: 1)).padding(.top, 12).foregroundColor(.white).font(.title3)
          .onAppear {
            matchingPlayers = getMatchingPlayers(players: players, snack: snack)
          }
      }
    }
//    .navigationTitle("Hi, \(username) kamu seperti...").font(.largeTitle)
    .background(Color("bgOrange"))
  }
}

struct ResultView_Previews: PreviewProvider {
  static var previews: some View {
    ResultView(username: .constant("Kevin Bryan"), snack: .constant(lays))
  }
}
