import SwiftUI

struct MainScreenView: View {
    
    @State var notificationScreen = false
    @State var addTackView = false
    var body: some View {
        ZStack {
            VStack {
                VStack {
                    HStack {
                        Spacer()
                        Button(action: {
                            notificationScreen.toggle()
                        }, label: {
                            Image(systemName: "bell")
                                .colorMultiply(.green)
                                .fontWeight(.bold)
                                .font(.title2)
                        })
                        .padding(.horizontal)
                    }
                    VStack {
                        HStack {
                            Text("Today")
                                .font(.largeTitle)
                                .bold()
                            Spacer()
                        }
                        .padding(.horizontal)
                        Divider()
                            .font(.title)
                    }
                }
                .fullScreenCover(isPresented: $notificationScreen, content: {
                    NotitficationScreenView(selected: .all, notificationScreen: false)
                })
                VStack {
                    HStack {
                        Text("December 2023")
                            .padding(.horizontal)
                            .bold()
                        Spacer()
                    }
                    DaysOfTheWeek()
                        .shadow(radius: 10)
                }
                Spacer()
            }
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Button {
                        addTackView.toggle()
                    } label: {
                        Image(systemName: "plus.circle.fill")
                            .padding()
                            .font(.largeTitle)
                            .colorMultiply(.green)
                    }

                }
                Divider()
                    .font(.title)
                HStack {
                    Button {
                        // Календар
                    } label: {
                        VStack {
                            Image(systemName: "calendar")
                                .font(.title2)
                            Text("Today")
                                .font(.footnote)
                        }
                    }
                    .padding(.leading)
                    Spacer()
                    Button {
                        // Профіль
                    } label: {
                        VStack {
                            Image(systemName: "person.crop.circle.fill")
                                .font(.title2)
                            Text("Profile")
                                .font(.footnote)
                        }
                    }
                    .padding(.trailing)
                }
                .padding(.horizontal)
                .colorMultiply(.green)
            }
            .sheet(isPresented: $addTackView, content: {
                AddTaskView()
            })
        }
    }
}

#Preview {
    MainScreenView(notificationScreen: false)
}
