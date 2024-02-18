//
//  ContentView.swift
//  ContactsLetterScrollAppleClone
//
//  Created by Elliot Knight on 17/02/2024.
//

import SwiftUI
import DragGestureKit

struct ContentView: View {
    private let contacts = Contact.contacts
    private let alphabet = Contact.contacts.map { String($0.lastName.first!) }


    @State private var letterToScroll: String?

    var body: some View {
        NavigationView {
            HStack {
                ScrollViewReader { proxy in
                    List {
                        ForEach(contacts) { contact in
                            Section(String(contact.lastName.first!)) {
                                HStack {
                                    Text(contact.firstName)
                                    Text(contact.lastName)
                                        .fontWeight(.bold)
                                }
                            }
                            .id(String(contact.lastName.first!))
                        }
                    }
                    .listStyle(.inset)
                    .scrollIndicators(.hidden)
                    .onChange(of: letterToScroll) { _, newValue in
                        proxy.scrollTo(newValue, anchor: .top)
                    }
                }
                DraggableView(elements: alphabet) {
                    VStack(spacing: 5) {
                        ForEach(alphabet, id: \.self) { letter in
                            Text(letter)
                                .id(letter)
                                .font(.caption)
                                .foregroundStyle(letter == letterToScroll ? Color.red : Color.primary)
                                .onTapGesture {
                                    letterToScroll = letter
                                }
                        }

                    }
                    .padding(10)

                } onDragChanged: { value in
                    letterToScroll = value
                }
            }
            .navigationTitle("Contacts")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ContentView()
}

