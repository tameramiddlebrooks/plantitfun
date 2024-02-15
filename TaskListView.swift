//
//  TaskListView.swift
//  TreeHuggers
//
//  Created by tamera middlebrooks on 2/5/24.
//

import SwiftUI
let linearGradientBG = LinearGradient(colors: [Color.teal, Color.blue], startPoint: .top, endPoint: .bottom)


//this struct represents what we are storing/displaying

struct Task: Identifiable {
    let id = UUID()
    let name: String
//    let icon: String
    var isTaskCompleted: Bool
}

struct TaskData {
    @AppStorage("taskData") var taskData: String = ""

}

struct TaskListView: View {
    
    @State private var tasks = [Task(
        name: "♼ Recycle",
//        icon: "􀙛",
        isTaskCompleted: false),
                                
                Task(
                    name: "🪴 Water a plant",
//                    icon: "􀙛",
                    isTaskCompleted: false),
                                
                    Task(
                     name: "🚶 Go for a walk",
//                     icon: "🍎",
                     isTaskCompleted: false),
                                
                     Task(
                     name: "🌧️🪣 Collect rainwater",
//                     icon: "🍎",
                     isTaskCompleted: false),
                    
                     Task(
                     name: "🚰 Use a reusable water bottle",
//                     icon: "🍎",
                     isTaskCompleted: false)]
    
    
    
    var body: some View {
            VStack {
                Spacer()
                List($tasks) { $task in
                    TaskCellView(task: $task)
                    
                    //^dollar sign makes it a binding task and it also gives the type of binding: an array of tasks
                    //^^ "task in" is a immutable member, cant use mutating value on it
                    //                ExtractedView()
                    Spacer()
                }
                Text("Completed Tasks: \(tasks.filter { $0.isTaskCompleted }.count )")
            }
        
//            .padding([.top], 15)
//            .multilineTextAlignment(.center)
            .scrollContentBackground(.hidden)
            .background(linearGradient)
        }
    }

struct TaskListView_Previews: PreviewProvider {
    static var previews: some View {
        TaskListView()
    }
    
}

struct TaskCellView: View {
    @Binding var task: Task
    //^ ensures we can pass through the task and update them, not just here but in the array
    
    var body: some View {
       
            HStack {
                // Text(task.name)
                Image(systemName: task.isTaskCompleted ? "checkmark.square": "square")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .onTapGesture {
                        task.isTaskCompleted.toggle()
                    }
                //^ on tap gesture on the image itself so it can be taped
                Text(task.name)
                    .font(.title2)
                    .padding(.horizontal)
                
                
            }
            .padding([.top], 15)
            .multilineTextAlignment(.center)
//            .listRowSeparator(.hidden)
//            .listSectionSeparator(.hidden)
            .listRowSeparatorTint(.green, edges: .all)
            .listRowBackground(Color.green)
        }
    }



#Preview {
    TaskListView()
}
