# Software Requirements Specification

## 1. Problem Statement

Users who frequently shop online may receive packages from multiple retailers and carriers, making it difficult to remember what was purchased, when it will arrive, and which packages are still outstanding.

Existing manual methods require users to repeatedly enter or update shipment information.

The application will automatically identify order and shipping information from connected email accounts and consolidate active and delivered packages into a single personal dashboard.

---

## 2. MVP Objective

The primary objective of the MVP is to demonstrate that the application can automatically identify a purchase or shipment from a connected email account and transform that information into useful package tracking data.

Initial MVP flow:

1. User creates an account.
2. User logs into the application.
3. User connects a Gmail account.
4. The application identifies relevant order or shipping emails.
5. Relevant information is extracted.
6. A package is automatically created or updated.
7. The package appears on the user's dashboard.

Gmail will be the first supported email provider. Support for iCloud Mail is planned for a later version.

---

## 3. Functional Requirements

### FR-01 — Account Registration

The system shall allow a user to create an account.

### FR-02 — Authentication

The system shall allow registered users to securely log in and log out.

### FR-03 — User Data Isolation

The system shall ensure that users can access only their own account, connected inboxes, orders, and shipment information.

### FR-04 — Gmail Connection

The system shall allow an authenticated user to connect a Gmail account through Google authorization.

### FR-05 — Multiple Email Accounts

The system shall support associating multiple email accounts with one application account.

For the MVP, the supported provider may initially be limited to Gmail.

### FR-06 — Email Detection

The system shall identify emails potentially related to online orders and shipments.

### FR-07 — Information Extraction

The system shall attempt to extract available information including:

- Retailer
- Item or order description
- Order number
- Tracking number
- Carrier
- Estimated delivery date
- Shipment status

Not all information is required to be available in every email.

### FR-08 — Automatic Package Creation

When sufficient shipment information is detected, the system shall automatically create or update the corresponding order or shipment.

### FR-09 — Duplicate Prevention

The system shall prevent repeated emails or shipment updates from creating unnecessary duplicate package entries.

### FR-10 — Active Packages Dashboard

The system shall display active shipments associated with the authenticated user.

### FR-11 — Package Details

The user shall be able to view available information associated with a shipment.

### FR-12 — Delivered Packages

Delivered shipments shall be distinguishable from active shipments and accessible through shipment history.

### FR-13 — Manual Correction

The user shall be able to correct information that was extracted incorrectly.

### FR-14 — Manual Tracking Fallback

The user shall be able to manually provide a tracking number when automatic detection is unavailable.

---

## 4. Non-Functional Requirements

### NFR-01 — Security

Authentication credentials and authorization tokens must be securely handled and must not be exposed to unauthorized users.

### NFR-02 — Privacy

The application should store only email-derived information necessary to provide package tracking functionality whenever practical.

### NFR-03 — Reliability

Processing the same email multiple times should not create duplicate shipments.

### NFR-04 — Usability

Normal package tracking should require little or no manual data entry.

The application will follow an automation-first approach, with manual input used only when necessary.

### NFR-05 — Responsive Design

The application should provide a usable experience on both desktop and mobile devices.

### NFR-06 — Maintainability

Retailer-specific email processing logic should be modular so that support for additional retailers can be added without requiring significant changes to the overall email-processing system.

---

## 5. Out of Scope for MVP

The following features are not part of the initial MVP:

- iCloud / Me.com email integration
- Automatic carrier API tracking
- Push notifications
- Package sharing
- Household or shared accounts
- AI-based email parsing
- Support for every retailer
- Native iOS or Android applications
- Advanced delivery analytics

These features may be considered for future versions.

---

## 6. Design Principle

> Automation first. Manual input only when necessary.

The application should minimize the amount of information users need to enter or maintain manually.
