//
//  User.swift
//  AutoLayout
//
//  Created by trevor jordet on 2/6/16.
//  Copyright © 2016 jord3t. All rights reserved.
// test

import Foundation

struct User
{
    let name: String
    let company: String
    let login: String
    let password: String
    
    static func login(login: String, password: String) -> User? {
        if let user = database[login] {
            if user.password == password {
                return user
            }
        }
    return nil
    }

    static let database: Dictionary<String, User> = {
        var theDatabase = Dictionary<String, User>()
        for user in [
            User(name: "John Appleseed", company: "Apple", login: "japple", password: "foo"),
            User(name: "Madison Bumgardner", company: "World Champion San Francisco Giants", login: "madbum", password: "foo"),
            User(name: "John Hennessy", company: "Stanford", login: "hennessy", password: "foo"),
            User(name: "Bad Guy", company: "Criminals, Inc.", login: "baddie", password: "foo"),
            User(name: "Hacker", company: "Criminals, Inc.", login: "hacker", password: "foo")
            ] {
                theDatabase[user.login] = user
        }
        return theDatabase
    }()




}
