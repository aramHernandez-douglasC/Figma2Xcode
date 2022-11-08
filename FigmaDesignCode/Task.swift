//
//  Task.swift
//  FigmaDesignCode
//
//  Created by Aram Hernandez on 2022-11-07.
//

import Foundation

struct Task : Identifiable {
    
    var id = UUID()
    var Title : String
    
    static func getDummyTasks() -> [Task]{
        var tasks = [Task]()
        
        tasks.append(Task(Title: "Check emails"))
        tasks.append(Task(Title: "Check emails"))
        tasks.append(Task(Title: "Check emails"))
        tasks.append(Task(Title: "Check emails"))
        
        
        return tasks
    }
    
}
