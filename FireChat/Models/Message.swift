//
//  Message.swift
//  FireChat
//
//  Created by Kato Drake Smith on 06/07/2021.
//

import Foundation
import Firebase

struct Message {
  let text : String
  let toId : String
  let fromId : String
  var timestamp : Timestamp!
  var user : User?

  let isFromCurrentUser : Bool

  init(dictionary : [String : Any]) {
    self.text = dictionary["text"] as? String ?? ""
    self.toId = dictionary["toId"] as? String ?? ""
    self.fromId = dictionary["fromId"] as? String ?? ""
    self.timestamp = dictionary["timestamp"] as? Timestamp ?? Timestamp(date: Date())
    self.isFromCurrentUser = fromId == Auth.auth().currentUser?.uid

  }
}

struct Conversation {
  let user : User
  let message : Message
}
