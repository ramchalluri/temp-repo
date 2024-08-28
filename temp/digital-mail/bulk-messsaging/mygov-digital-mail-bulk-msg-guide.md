---
sidebar_position: 2
title: 'myGov Digital Mail Bulk Messaging Guide'
id: 'mygov-digital-mail-bulk-msg-guide'
sidebar_label: 'myGov Digital Mail Bulk Messaging Guide'
hide_title: false
author: 'Citizen Access'
date: "2023-02-08"
Current version: 'v0.1'
titlepage: true
classoption: 'portrait'
papersize: a4
linkcolor: blue
---

# myGov Digital Mail Bulk Messaging Guide

This document explains how to use digital mail bulk processing.

## Requirements
### General Requirements
1. SOAPUI installed and basic SOAPUI knowledge to modify and run the SOAPUI Project.
1. Access to the Production and Test myGov Digital Mail endpoints
1. Basic knowledge of HTML and access to an installed version of a editor such as [Visual Studio Code](https://code.visualstudio.com/) or [Eclipse](https://www.eclipse.org/downloads/) or [Notepad++](https://notepad-plus-plus.org/downloads/)
1. A working verification user account setup in production to check the message deliver and format

### Message Body
Need to make sure the message body confirms to the following rule set.
1. Message body mush be less than 2000 Chars in total.
1. Make sure message text does not contain any non-ascii characters.

:::note
the message from business will be in plan text, we need to add HTML Tags to it and the 2000 char limit is for the HTML version not the plan text version.
:::
:::tip
If you are using Visual Studio Code as your Editor, try [Gremlins Extension](https://marketplace.visualstudio.com/items?itemName=nhoizey.gremlins)
:::

### Message Recipient List
Business will provide the list in a XLS or CSV format. We need to convert that to a text file and place it in the data folder.

### SOAPUI Project Setup
For running this job, we are using SOAPUI and basic Groovy Coding. The project it self is available on the GitLab to clone and play around with.

:::danger
The data we get from business and the message itself can be rated confidential so, don't ever commit those details to GitLab.
:::

1. Create a new SOAPUI Testcase "publishMessage-YYYY-MM-DD", if you have multiple for the same day, add a suffix to make it unique
1. Update the the TestCase property to point to the correct folder in the data folder.
1. Expand the newly created Test Case and the Test Steps
1. Open the `publish-message-conc` step
1. Make sure the `messageType` and `messagePriority` are correct
1. Copy the HTML version of the Message Body to `<ns1:messageBody><![CDATA[` element.
1. Make sure the links are correct. Add or update or remove if needed.
1. Open `bulkLoadInboxMessages` step
1. Copy the message subject to the `messageSubject` Groovy variable.
1. Copy the user list data file to a folder under the data folder.

:::danger
SOAPUI VDI installations are not able to process a large (more than a couple of hundred records) number of users sourced from the same file. So, if you have a large user data file, split it into 200 lines per file and place all the files in the same folder.

The command I use to split files in bash console is.

```bash
split -l 200 --numeric-suffixes --additional-suffix=.csv input-filename.csv output-filename-
```

:::

### Testing
It is recommended to run the job in test environment before running it in PROD. The Test result Criteria is as follows.
1. No errors in SOAPUI
1. the message is processed by PonyExpress correctly and the message is delivered to the inbox comms table.
1. the message appears correctly in the test user inbox.
1. Confirm the message format with business.

### Execution
:::tip
**Add Verification User Details to Data set**
It is recommended to add verification user to every dataset. This way we can confirm that the message is delivered and is in the correct format.
:::

1. Open the newly created Test Case
1. Open the Test Steps
1. Run the "bulkLoadInboxMessages" groovy script

### Results
The progress can be monitored in the `Log Output` window, but for complete results look in the logs folder.
