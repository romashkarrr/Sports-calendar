import SwiftUI

enum SegmentedPicker: String, CaseIterable, Identifiable {
    
    case all
    case unread
    
    var id: Self {
        self
    }
    var tile: String {
        switch self  {
        case .all:
            return "All"
        case .unread:
            return "Unread(0)"
        }
    }
}

struct NotitficationScreenView: View {
    
    @State var selected: SegmentedPicker = .all
    @State var notificationScreen: Bool = false
    
    var body: some View {
        VStack {
            VStack {
                ZStack {
                    Text("Notifications")
                        .bold()
                    HStack {
                        Spacer()
                        Button(action: {
                            notificationScreen.toggle()
                        }, label: {
                            Text("Done")
                                .foregroundStyle(.green)
                        })
                    }
                }
                .padding()
                .fullScreenCover(isPresented: $notificationScreen, content: {
                    MainScreenView()
                })
                Picker("fdghjk", selection: $selected) {
                    ForEach(SegmentedPicker.allCases) { category in
                        Text(category.tile).tag(category)
                    }
                }
            }
            .pickerStyle(.segmented)
            Divider()
            Spacer()
            
        }
    }
}


#Preview {
    NotitficationScreenView(selected: .all, notificationScreen: false)
}
