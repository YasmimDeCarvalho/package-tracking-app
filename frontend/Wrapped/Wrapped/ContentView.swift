import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List(mockPackages) { package in
                VStack(alignment: .leading, spacing: 6) {
                    Text(package.retailer)
                        .font(.headline)

                    if let description = package.description {
                        Text(description)
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                    }
                }
                .padding(.vertical, 4)
            }
            .navigationTitle("Wrapped")
        }
    }
}

#Preview {
    ContentView()
}
