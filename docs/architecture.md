# System Architecture

## 1. System Overview

The Package Tracking App is a personal application that automatically identifies online orders and shipments from connected email accounts and organizes package information in a centralized dashboard.

The application follows a client-server architecture.

The frontend communicates with a REST API provided by the backend. The backend is responsible for authentication, email integration, email processing, order and shipment management, and database access.

For the initial MVP, Gmail will be the supported email provider.

---

## 2. Proposed Technology Stack

### Frontend
- React
- JavaScript
- HTML
- CSS

### Backend
- Java
- Spring Boot
- Maven

### Database
- PostgreSQL

### External Integration
- Gmail API
- Google OAuth 2.0

### Testing
- JUnit
- Mockito

Additional integrations, including iCloud Mail and carrier tracking APIs, may be introduced in future versions.

---

## 3. High-Level Architecture

Gmail
↓
Gmail API / OAuth 2.0
↓
Spring Boot Backend
↓
PostgreSQL Database
↑
REST API
↓
React Frontend

The backend acts as the central layer between external email services, the application database, and the frontend.

---

## 4. Core Backend Components

### Authentication

Responsible for application user authentication and authorization.

### Gmail Integration

Responsible for connecting Gmail accounts and communicating with the Gmail API.

### Email Scanner

Responsible for identifying emails that may contain order or shipment information.

### Email Parser

Responsible for extracting structured information from supported retailer emails.

Retailer-specific parsing logic should remain modular so additional retailers can be supported without significantly modifying the rest of the system.

Example:

- AmazonParser
- TargetParser
- WalmartParser

### Order Service

Responsible for creating and updating orders and their associated items.

### Shipment Service

Responsible for creating, updating, and retrieving shipment information.

### REST API

Provides communication between the React frontend and Spring Boot backend.

---

## 5. Domain Model

The initial domain model contains the following primary entities:

### User

Represents an application account.

A user owns their email accounts, orders, and shipment data.

### EmailAccount

Represents an email inbox connected to the application.

A user may connect multiple email accounts.

### Order

Represents a purchase made from a retailer.

An order may contain multiple items and may result in multiple shipments.

### Item

Represents an individual product belonging to an order.

### Shipment

Represents a physical shipment associated with an order.

A single order may generate multiple shipments.

### ShipmentItem

Represents the relationship between items and shipments.

This allows individual items from the same order to be distributed across different shipments.

### TrackingEvent

Represents an individual event in the shipment tracking history.

Examples include:

- Label Created
- Shipped
- In Transit
- Out for Delivery
- Delivered

---

## 6. Domain Relationships

User
├── EmailAccount
└── Order
    ├── Item
    └── Shipment
        └── TrackingEvent

Items and shipments are connected through ShipmentItem.

This structure supports scenarios where one order contains multiple items that are delivered in separate packages.

---

## 7. Future Architecture Considerations

Future versions may introduce:

- iCloud Mail integration
- Carrier tracking APIs
- Background shipment synchronization
- Push notifications
- Additional retailer parsers
- Additional email providers
