---
sidebar_position: 1
id: 'di-protorp-godmode'
title: 'Digital Identity How to Use Godmode'
sidebar_label: 'DI God Mode'
hide_title: false
author: Citizen Access
date: "2021-11-11"
titlepage: true
classoption: portrait
papersize: a4
linkcolor: blue
---

# Digital identity How Tos

## How to use GOD-MODE in PROTO-RP
1. Open [PROTO-RP](https://onb.proto-rp.identity.gov.au/proto-rp) App
1. Set "Client ID" to "PROTORP"
1. Set "Redirect URI" to "https://onb.proto-rp.identity.gov.au/godmode"
1. Go through the rest of the flow as is up-to the Token Call.
1. From the ProtoRP Harness Response page copy "Token Curl" value
1. Open Command Prompt with Curl access
1. Paste the request curl command in the command prompt
1. If it works you will see "access_token" in the response.
1. Copy the "access_token" and append to the "UserInfo" curl request
1. Execute the curl command in command prompt.

### Userinfo Call
`curl -k -v -X GET 'https://dev1.auth.identity.gov.au/sso/sps/oauth/oauth20/userinfo' -H "Accept: application/json" -H "Authorization: Bearer <<Token>>"`
