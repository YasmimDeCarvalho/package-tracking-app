import Foundation

enum PackageStatus {
    case ordered
    case shipped
    case outForDelivery
    case delivered
}

struct Package: Identifiable {
    let id: UUID
    var retailer: String
    var description: String?
    var orderNumber: String?
    var trackingNumber: String?
    var carrier: String?
    var estimatedDelivery: Date?
    var status: PackageStatus
}

