//
//  contest.swift
//  programmingContest
//
//  Created by s527993 on 3/14/19.
//  Copyright © 2019 s527993. All rights reserved.
//

import Foundation
class Schools{
    
    static let shared = Schools()
    private var schools: [School] = []
    private init(){}
    func numSchools()-> Int{
        return schools.count
    }
    func add(school: School){
        schools.append(school)
    }
    subscript(index: Int) -> School{
        return schools[index]
    }
    func delete(school: School){
        var count = 0
        for element in schools{
            if (element.coach == school.coach && element.name == school.name && element.teams == school.teams){
                schools.remove(at: count)
            }
            count += 1
        }
    }
}
class School{
    var name: String = ""
    var coach: String = ""
    var teams:[Team] = []
    
    init(name: String, coach: String, teams: [Team]) {
        self.name = name
        self.coach = coach
        self.teams = teams
    }
    subscript(index: Int) -> Team{
        return teams[index]
    }
    func addTeam(name: String, students: [String]){
        teams.append(Team(name: name, students: students))
    }
}
class Team: Equatable{
    static func == (lhs: Team, rhs: Team) -> Bool {
        return lhs.name == rhs.name && lhs.students == rhs.students
    }
    
    var name: String = ""
    var students: [String] = []
    init(name: String, students: [String]) {
        self.name = name
        self.students = students
    }
}
