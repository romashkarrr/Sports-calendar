import SwiftUI

struct AddTaskView: View {
    
    @State var addTaskView: Bool = false
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    // Delete function
                }, label: {
                    Text("Delete")
                        .foregroundStyle(Color.red)
                })
                .padding()
                
                Spacer()
                
                Text("Add task")
                
                Spacer()
                
                Button(action: {
                    // Done function
                }, label: {
                    Text("Done")
                        .foregroundStyle(Color.green)
                })
                .padding()
            }
            Spacer()
        }
    }
}

#Preview {
    AddTaskView()
}
