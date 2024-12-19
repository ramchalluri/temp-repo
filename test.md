# ICT Solution Proposal for Identity Document Management

## Executive Summary
The Australian Government aims to enhance its identity services to enable individuals to self-manage and protect their identity credentials. This initiative will be delivered in two phases:

1. **Phase 1: myGov Onboarding (Dormant)** – March 2025 to June 2025.
2. **Phase 2: Go Live** – December 2025.

Key enhancements to the Credential Protection Register (CPR), as part of the National Strategy for Identity Resilience, will improve services through better credential management, protection against compromised credentials, and enhanced identity verification services (IVS). This proposal also introduces the IDMatch platform, enabling individuals to self-manage their identity credentials, supported by myGov functionalities.

## Objectives
- Support and protect victims of identity crime and scams.
- Provide better control over identity credential usage.
- Prevent the verification of compromised credentials via IVS.
- Deliver real-time notifications to individuals when their credentials are verified.

## Solution Overview
The proposal involves onboarding IDMatch as a relying party (RP) within the myGov ecosystem and leveraging myGov capabilities to achieve the stated objectives. Key components include:

### MyGov Integration
1. **Authentication and Account Management**: Utilize existing myGov functionalities without additional changes.
2. **Inbox Messages and Notifications**: Leverage myGov to deliver notifications and messages requiring user action.
3. **Identity Proofing and Authentication**: Utilize myGov accounts connected with myID.
4. **Basic User Support**: Services Australia to assist users with linking the RP to their myGov account.

### MyGov Enhancements
#### RP Authentication Requirements
To meet RP-specific authentication patterns and levels, myGov must implement the following new OIDC claims:
- **AMR = TDIF**
- **TDIF_LEVEL = IP+CL values**

These claims are defined in the OIDC guide and will be implemented via ISAM. This ensures myGov can meet RP authentication requirements and reject calls where the required level is not met.

#### Enhanced Notification System
Currently, myGov supports notifications via SMS, Email, and Push, with delivery constraints. The solution requires the following modifications:

1. **Immediate Notification Channels**:
   - **SMS Immediate Notification**: Implementation of a new microservice and a dedicated Kafka queue.
   - **Push Immediate Notification**: Implementation of a new microservice and a dedicated Kafka queue.

2. **Notification Scheduling**:
   - Notifications to be delivered immediately based on specific message parameters:
     - **messageType: Alert**
     - **messagePriority: Urgent**

The inbox processor will be updated to identify and schedule these immediate notifications.

## Implementation Plan

### Phase 1: MyGov Onboarding (March 2025 - June 2025)
- **Setup IDMatch as a Relying Party**: Establish integration with myGov functionalities.
- **Initial Testing**: Ensure basic functionalities (authentication, account management, notifications) are operational.

### Phase 2: Go Live (December 2025)
- **Deployment of Enhanced Notification System**: Implement new notification channels and update inbox processors.
- **Full Integration Testing**: Validate end-to-end functionality, including real-time notification delivery and RP authentication.
- **User Support and Training**: Ensure Services Australia teams are equipped to assist users effectively.

## Expected Benefits
- **Enhanced Security**: Protect users from identity fraud and scams.
- **Improved User Experience**: Real-time notifications and better control over identity credentials.
- **Streamlined Government Services**: Simplified and secure processes for identity verification.

## Conclusion
This proposal outlines a phased approach to enabling self-management of identity credentials via IDMatch and myGov integration. By enhancing the Credential Protection Register and implementing robust notification systems, the Australian Government can significantly improve its identity services, ensuring resilience and security for all citizens.

