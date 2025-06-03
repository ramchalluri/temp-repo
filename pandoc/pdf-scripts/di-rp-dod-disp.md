---
sidebar_position: 2
title: Department of Defence - Defence Industry Security Program
id: di-rp-dod-disp
sidebar_label: DoD - DISP
pagination_label: sidebar_label
hide_title: false
author: Citizen Access
date: "2023-03-23"
titlepage: true
classoption: landscape
papersize: a4
linkcolor: blue
---

## Relying Party Documentation

List of relying party provided documentation.

1. [**Department of Defence - Defence Industry Security Program**](https://govteams.sharepoint.com/:f:/r/sites/digitalidentitypipelineteam/Shared%20Documents/General/RP%20Registration%20Form%20responses?csf=1&web=1&e=gSjEXq) Govteams

## Relying Party Details

| Relying Party          | Details                                                |
| :--------------------- | :----------------------------------------------------- |
| **Organisation:**      | `Department of Defence`                                |
| **Sector Identifier:** | `https://defencereservessupport.gov.au`                |
| **Contact:**           | `Trevor Stephenson / trevor.stephenson@defence.gov.au` |
| **Technical Contact:** | `N / A`                                                |

## Client - Department of Defence - Defence Industry Security Program

### Client Configuration Details

| Configuration            | Details                                                       |
| :----------------------- | :------------------------------------------------------------ |
| **Client Name**          | `Defence Industry Security Program`                           |
| **Protocol Flow**        | `AuthorizationCode`                                           |
| **Default Scopes**       | `profile, openid, email, phone, tdif_business_authorisations` |
| **Default Claims**       | `acr, tdif_business_authorisations`                           |
| **Approved tdif docs**   | `N / A`                                                       |
| **Restricted tdif docs** | `N / A`                                                       |
| **User Flow:**           | `N / A`                                                       |

> Note:
> "phone": There is no IDP supporting this scope at this time.

## Onboarding Environment

Department of Defence - Defence Industry Security Program requires 2 clients - Development, Non-Prod.

### Onboarding - Development

| Endpoint                    | Development                                                                                                               |
| :-------------------------- | :------------------------------------------------------------------------------------------------------------------------ |
| **Client ID**               | `govpass-rp-dod-disp-test-6ab1403a937b`                                                                                   |
| **Global Identifier**       | `di-rp-dod-disp-test-24f0e214-43be-4bae-be97-2c8b3c6f382c`                                                                |
| **Display Name**            | `Defence Industry Security Program - Dev`                                                                                 |
| **RAM Service Provider ID** | `https://www.defence.gov.au/security/industry`                                                                            |
| **Redirect URI**            | `https://dispauthdev.b2clogin.com/8de187e1-64a8-4010-a6ff-0aeab5679a70/oauth2/authresp`                                   |
| **Redirect URI**            | `https://dispauthdev.b2clogin.com/dispauthdev.onmicrosoft.com/oauth2/authresp`                                            |
| **JWKS**                    | `https://dispauthdev.b2clogin.com/dispauthdev.onmicrosoft.com/discovery/v2.0/keys?p=b2c_1a_dta_single_abn_authentication` |
| **Landing Page**            | N / A                                                                                                                     |
| **Logout URL**              | `https://dispauthdev.b2clogin.com/dispauthdev.onmicrosoft.com/b2c_1_signupin/oauth2/v2.0/logout`                          |

### Onboarding - Non-Prod

| Endpoint                    | Development                                                                                  |
| :-------------------------- | :------------------------------------------------------------------------------------------- |
| **Client ID**               | `govpass-rp-dod-disp-test-b51ca535c631`                                                      |
| **Global Identifier**       | `di-rp-dod-disp-test-7f322bab-bb7a-402a-b0c7-ed6138716c09`                                   |
| **Display Name**            | `Defence Industry Security Program - Non-Prod`                                               |
| **RAM Service Provider ID** | `https://www.defence.gov.au/security/industry`                                               |
| **Redirect URI**            | `https://b2cdmpnonprodoau.b2clogin.com/9a5197b4-2f1e-4cf2-8775-9e7f8450b908/oauth2/authresp`     |
| **JWKS**                    | `https://b2cdmpnonprodoau.b2clogin.com/b2cdmpnonprodoau.onmicrosoft.com/discovery/v2.0/keys` |
| **Landing Page**            | N / A                                                                                        |
| **Logout URL**              | `https://b2cdmpnonprodoau.b2clogin.com/b2cdmpnonprodoau.onmicrosoft.com/oauth2/v2.0/logout`  |

### Production - To be deployed only after successful completion of tests in onboarding environment

| Endpoint                    | Production                                                                                        |
| :-------------------------- | :------------------------------------------------------------------------------------------------ |
| **Client ID**               | govpass-rp-dod-disp-95e9e84ad463a7e2d                                                |
| **RAM Service Provider ID** | https://www.defence.gov.au/security/industry                                       |
| **Global Identifier**       | di-rp-dod-disp-32c2b9fa-9fef-4bd5-8bb2-a86baeb941ed                                  |
| **Display Name**            | Defence Industry Security Program                                                    |
| **Redirect URI**            | https://b2cdmpprodoau.b2clogin.com/b2cdmpprodoau.onmicrosoft.com/oauth2/authresp     |
| **Redirect URI**            | https://b2cdmpprodoau.b2clogin.com/08b725d1-975f-4407-8ea8-46762779f16e/oauth2/authresp  |
| **JWKS**                    | https://b2cdmpprodoau.b2clogin.com/b2cdmpprodoau.onmicrosoft.com/discovery/v2.0/keys |
| **Landing Page**            | N / A                                                                                             |
| **Logout URL**              | https://b2cdmpprodoau.b2clogin.com/b2cdmpprodoau.onmicrosoft.com/oauth2/v2.0/logout |
| **Expected logins per day** | `< 500 logins per day`                                                                            |
| **Peak periods**            | ``                                                                                                |
| **3rd party services used** | `Azure B2C`                                                                                       |

## Whitelisting Details

:::note
Whitelisting IP Addresses listed below are to be used by the relying parties to configure their firewall to allow connections from Digital Identity exchange.
:::

1. 203.13.3.89
2. 203.13.3.90
3. 203.13.3.93
4. 203.13.3.94
5. 203.13.1.143
6. 203.13.2.143
7. 161.146.235.44

## Change Log

All notable changes to this file will be documented in this section.

**2022-09-23:** Arupa Sarkar

1. Created the initial version

**2022-10-17:** Arupa Sarkar

1. Updated JWKS and RAm service provider ID for Development environment

**2023-02-20:** Anil Shanbogh

1. Updated RAM Service Provider ID for Development environment client from https://esps.defencereservessupport.gov.au to https://www.defence.gov.au/security/industry
2. New "Non-Prod" client added

**2023-03-23:** Anil Shanbogh

1. New production client added
