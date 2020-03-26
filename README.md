# open-distribution

[![Join the chat at https://gitter.im/open-distribution-chat/community](https://badges.gitter.im/open-distribution-chat/community.svg)](https://gitter.im/open-distribution-chat/community?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

Open, bottom-up distribution requests

## Problem statement

Manufacturers and suppliers may have stock but lack oversight of where it is needed.

Frontline staff should be able to highlight needs and make requests in a bottom-up
way which might be supplied by smaller purchase orders to complement top-down 
logistics.

## What it does

Allows frontline health staff to notify of PPE shortgages, compile those requests to a database with geolocation. Publish open of the requests and status (met or needed) to allow market to deliver and others to produce solutions (could be 3D printed visor components etc)

## Proof of concept idea

1. Media agency spread word of platform, testing in Yorks to frontline workers to tweet needs
2. Bot watches twitter and facebook for key hash tags
3. Bot responds with webform having checked request contains postcode with NHS premises (& care homes?)
4. User fills in simple webform
5. Webform published to database and front end with map and request details including twitter handle
6. Bot returns unique code for their request
