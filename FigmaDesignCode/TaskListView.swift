//
//  TaskListView.swift
//  FigmaDesignCode
//
//  Created by Aram Hernandez on 2022-11-07.
//

import SwiftUI

struct TaskListView: View {
    var tasks = Task.getDummyTasks()
    var body: some View {
        
        ZStack{
            Color("Background")
                .ignoresSafeArea()
            
            ScrollView{
                
                ZStack{
                    Rectangle()
                        .foregroundColor(.white)
                    
                    VStack{
                        HStack{
                            Text("Today")
                                .font(.system(size: 18))
                                .fontWeight(.bold)
                            Spacer()
                            Text("\(tasks.count)")
                            Image("ic-chevron")
                        }
                        .font(.headline)
                        
                        ForEach(tasks) { task in
                            HStack{
                                Image("ic-checkbox")
                                Text(task.Title)
                                    .font(.system(size: 16, weight: .semibold))
                                Spacer()
                                VStack(alignment: .trailing, spacing: 3){
                                    Text("18:00")
                                        .font(.system(size: 14, weight: .regular))
                                    Image("ic-clock")
                                }
                            }
                        }
                    }
                    .padding(.horizontal, 16)
                    .padding(.vertical, 8)
                }
                .padding(.vertical, 10)
                .padding(.horizontal, 16)
                
                
            }
            
            VStack{
                Spacer()
                
                HStack{
                    Spacer()
                    Button{
                        //TODO
                    } label: {
                        Image(systemName: "plus.circle.fill")
                            .resizable()
                            .frame(width: 64, height: 64)
                            .foregroundColor(Color.accentColor)
                            .padding(.bottom, 28)
                            .padding(.trailing, 24)
                    }
                    
                }
                
                
                
            }
            
        }
        .toolbar{
            ToolbarItem(placement: .navigationBarLeading){
                Image("ic-menu")
            }
            ToolbarItem(placement: .principal){
                Text("Today")
                    .fontWeight(.bold)
            }
            ToolbarItem(placement: .navigationBarTrailing){
                Image("ic-more")
            }
            
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct TaskListView_Previews: PreviewProvider {
    static var previews: some View {
        TaskListView()
    }
}
