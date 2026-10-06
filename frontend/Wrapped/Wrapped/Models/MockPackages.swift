import Foundation

let mockPackages: [Package] = [
    Package(
        id: UUID(),
        retailer: "Amazon",
        description: "USB-C Charging Cable",
        orderNumber: "114-1234567-1234567",
        trackingNumber: "1Z999AA10123456784",
        carrier: "UPS",
        estimatedDelivery: Calendar.current.date(byAdding: .day, value: 1, to: Date()),
        status: .shipped
    ),

    Package(
        id: UUID(),
        retailer: "Target",
        description: "Home Essentials",
        orderNumber: "123456789",
        trackingNumber: "9400111899560000000000",
        carrier: "USPS",
        estimatedDelivery: Date(),
        status: .outForDelivery
    ),

    Package(
        id: UUID(),
        retailer: "Apple",
        description: "iPhone Case",
        orderNumber: "W123456789",
        trackingNumber: nil,
        carrier: nil,
        estimatedDelivery: nil,
        status: .ordered
    )
]
