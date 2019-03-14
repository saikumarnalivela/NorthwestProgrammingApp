//
//  school.swift
//  NorthwestProgrammingApp
//
//  Created by student on 3/13/19.
//  Copyright © 2019 student. All rights reserved.
//

import Foundation
class School{
    
    var name: String
    var coach:String
    var team:[Team]
    
    init(){
        self.name = ""
        self.coach = ""
        self.team = []
    }
    init(name: String, coach: String,team:[Team]){
        self.name = name
        self.coach = coach
        self.team = team
    }
    func addTeam(name:String){
        
    }
    static func ==(lhs:School,rhs:School) -> Bool{
        if lhs.name == rhs.name && lhs.coach == rhs.coach{
            return true
        }else{
            return false
        }
    }
    
}
class Schools {
    static var shared = Schools()
    private var schools:[School] = []
    
    private init(){
       schools = [
        School(name: "NWMSU",  coach: "A",team:[Team(name: "name",students: ["studnets","sai"])]),
        School(name: "UCM", coach: "A",team:[Team(name: "Sam",students: ["A","B"])]),
        School(name: "UNT", coach: "B",team:[Team(name: "shiva",students: ["C","D"])]),
        School(name: "Kingville", coach: "A",team:[Team(name: "sai",students: ["E","F"])]),
        School(name: "DallasUniveristy", coach: "A",team:[Team(name: "name",students: ["studnets","sai"])]),
        School(name: "UMKC",coach: "A",team:[Team(name: "name",students: ["studnets","sai"])]),
        ]
    }
    
    func numSchools()->Int {
        return schools.count
    }
    
    func Schools(_ index:Int) -> School {
        return schools[index]
    }
    
    // this lets us use [ ] notation instead of the above
    
    subscript(index:Int) -> School {
        return schools[index]
    }
    
    func add(schooldes:School){
        schools.append(schooldes)
    }
    
    func delete(name:School){
        for i in 0 ..< schools.count {
            if schools[i] == name {
                schools.remove(at:i)
                break
            }
        }
        
    }
}
class Team{
    var name:String
    var students:[String]
    init(){
        self.name = ""
        self.students = ["sai"]
    }
    init(name:String,students:[String]){
        self.name = name
        self.students = students
    }

    
}






