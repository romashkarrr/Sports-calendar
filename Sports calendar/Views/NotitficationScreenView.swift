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
        ZStack {
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
            VStack {
                Image("undraw_completed")
                    .resizable()
                    .frame(width: 218, height: 298)
                Text("Stay in the loop")
                    .font(.callout)
                    .padding(.top)
                Text("""
                    Here, you’ll find notifications for any changes
                           that happend in your shared projects.
                    """)
                    .font(.footnote)
                    .frame(width: 299, height: 44)
                    .foregroundColor(.gray)
            }
        }
    }
}


#Preview {
    NotitficationScreenView(selected: .all, notificationScreen: false)
}
