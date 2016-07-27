//
//  UserObject.swift
//  WebDemo
//
//  Created by Amandeep Singh on 7/26/16.
//  Copyright © 2016 Amandeep Singh. All rights reserved.
//

import Foundation
import SwiftyJSON

//class UserObject {
//    var pictureURL: String!
//    var username: String!
//    
//    required init(json: JSON) {
//        pictureURL = json["picture"]["medium"].stringValue
//        username = json["email"].stringValue
//    }
//}

struct UserObject{
    
    var pictureURL: String!
    var username: String!
    
    init(json: JSON) {
        pictureURL = json["picture"]["medium"].stringValue
        username = json["email"].stringValue
    }
    
}