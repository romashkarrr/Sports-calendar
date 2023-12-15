//
//  DaysOfTheWeek.swift
//  Sports calendar
//
//  Created by romashka on 22.12.2023.
//

import SwiftUI

struct DaysOfTheWeek: View {
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    Button(action: {
                        //
                    }, label: {
                        VStack {
                            Text("1")
                            Text("MON")
                        }
                        .foregroundColor(.black)
                        .font(.footnote)
                        .frame(width: 68, height: 86)
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.gray, lineWidth: 1))
                    })
                    Button(action: {
                        
                    }, label: {
                        VStack {
                            Text("2")
                            Text("TUE")
                        }
                        .foregroundColor(.black)
                        .font(.footnote)
                        .frame(width: 68, height: 86)
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.gray, lineWidth: 1))
                    })
                    Button(action: {
                        
                    }, label: {
                        VStack {
                            Text("3")
                            Text("WED")
                        }
                        .foregroundColor(.black)
                        .font(.footnote)
                        .padding()
                        .padding(.vertical)
                        .frame(width: 68, height: 86)
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.gray, lineWidth: 1))
                    })
                    Button(action: {
                        
                    }, label: {
                        VStack {
                            Text("4")
                            Text("THU")
                        }
                        .foregroundColor(.black)
                        .font(.footnote)
                        .padding()
                        .padding(.vertical)
                        .frame(width: 68, height: 86)
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.gray, lineWidth: 1))
                    })
                    Button(action: {
                        
                    }, label: {
                        VStack {
                            Text("5")
                            Text("FRI")
                        }
                        .foregroundColor(.black)
                        .font(.footnote)
                        .padding()
                        .padding(.vertical)
                        .frame(width: 68, height: 86)
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.gray, lineWidth: 1))
                    })
                    Button(action: {
                        
                    }, label: {
                        VStack {
                            Text("6")
                            Text("SUT")
                        }
                        .foregroundColor(.black)
                        .font(.footnote)
                        .padding()
                        .padding(.vertical)
                        .frame(width: 68, height: 86)
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.gray, lineWidth: 1))
                    })
                }
                .padding(.horizontal)
            }
        }
    }
}


#Preview {
    DaysOfTheWeek()
}
