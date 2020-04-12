@DC-PROD
@PROD


Feature: PROD DC: Basic funcitonal validation on PROD - WPE



Scenario: Access product center by hamburger
Given I am on page "http://www.autodesk.com"
When I select Products Autocad from MENU
Then I am redirected to "/products/autocad/overview"



Scenario Outline: EDU Download
Given I am on page "<url>"
And I click on EDU Sign In button
And I log in with oxygen user "studentss@mailinator.com" password "test1234"
When I select Release "<release>", OS "<os>", Language "<language>"
Then I get Serial Number "<serialnumber>"
And I download successfully from "<button>" with "<confirmation>"
Examples:
    | url                                                            | release        | os             | language   | serialnumber | button      | confirmation             |
    | https://www.autodesk.com/education/free-software/3ds-max       | 3ds Max 2020   | Windows 64-bit | English    | 901-52412486 | Install Now | Your file is downloading |
    | https://www.autodesk.com.cn/education/free-software/3ds-max    | 3ds Max 2020   | Windows 64位   | 简体中文     | 901-52412486 | 立即安装     | 您的文件正在下载            |
    #| https://www.autodesk.mx/education/free-software/3ds-max    | 3ds Max 2017   |Windows de 64 bits   | Português | 900-74692119 | Instalar ahora     | El archivo se está descargando |


# Scenario Outline: Search
#Given I am on page "https://www.autodesk" for "<site>"
#When I search for string "<search>"
#Then I get first match containing string "<search>"
#Examples:
#    | site    | search |
#    | .com    | maya   |
#    | .fr     | maya   |
   #| .com.cn |autocad     |
   # | .mx     |autocad     |
