---
sidebar_position: 1
id: 'mygov-testharness-godmode'
title: 'myGov Test Harness - How to Use Godmode'
sidebar_label: 'myGov Godmode'
hide_title: false
author: Citizen Access
date: "2021-09-30"
titlepage: true
classoption: portrait
papersize: a4
linkcolor: blue
---

# myGov How Tos

## How to use GOD-MODE in myGov Test Harness
1. Open [myGov Test harness]](https://testharness.csda.gov.au/sso/sps/authsvc/policy/harness) App
1. Select OIDC
1. Select scopes
1. Select env
1. Client on "OIDC Request" Button

### Userinfo Call
**Userinfo endpoint**: https://test.login.my.gov.au/mga/sps/oauth/oauth20/userinfo

`curl -k -v -X GET 'https://test.login.my.gov.au/mga/sps/oauth/oauth20/userinfo' -H "Accept: application/json" -H "Authorization: Bearer 3cX7lgHCP3xkIRVSmZIv3fstgDQJ0RPyfBsZFXt2"`
