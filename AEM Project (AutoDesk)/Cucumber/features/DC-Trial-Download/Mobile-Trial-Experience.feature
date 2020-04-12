@DC
@SLE2
@PT
@DC-PROD
@PROD

Feature: Mobile trial download experience validation


@IPHONE8
Scenario Outline: 1. Validate that download trial email link is present and clickable on iPhone

Given I test on page "<site>" and "<url>" on "<device_name>" device
When I enter "<email>" and click on SEND LINK
Then email should be sent for free trial with "<text>"

Examples:
  | site   | url                          | device_name | email       | text                    |
  | .de    | /products/autocad/free-trial | Iphone8     | abc@123.com |Eine E-Mail ist unterwegs|
  | .com   | /products/3ds-max/free-trial | Iphone8     | abc@123.com |An email is on its way   |
  | .com   | /products/revit/overview     | Iphone8     | abc@123.com |An email is on its way   |
  | .de    | /products/flame/overview     | Iphone8     | abc@123.com |Eine E-Mail ist unterwegs|
  | .co.jp | /products/maya/free-trial    | Iphone8     | abc@123.com ||
  | .co.jp | /products/3ds-max/overview   | Iphone8     | abc@123.com ||

@IPADPRO
Scenario Outline: 2. Validate that download trial email link is present and clickable on iPad

Given I test on page "<site>" and "<url>" on "<device_name>" device
When I enter "<email>" and click on SEND LINK
Then email should be sent for free trial with "<text>"

Examples:
  | site | url                          | device_name | email       | text                   |
  | .com | /products/autocad/free-trial | Ipad_Pro    | abc@123.com | An email is on its way |

@IPADPRO
Scenario Outline: 3. Validate that error message displayed when user enters invalid email

Given I test on page "<site>" and "<url>" on "<device_name>" device
When I enter incorrect "<email>" for send download instruction
Then invalid email message should be displayed

Examples:
  | site | url                          | device_name | email       |
  | .com | /products/autocad/free-trial | Ipad_Pro    | abc@123.com |
