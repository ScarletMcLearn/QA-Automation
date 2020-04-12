# PDS SLE2: https://web-sle-engineering-svc.awsism.autodesk.com/products/ACDIST?country=US&app=SRP&language=en
# PDS PT: https://web-pt-engineering-svc.autodesk.com/products/ACDIST?country=US&app=SRP&language=en
# PDS PROD: https://web-engineering-svc.autodesk.com/products/ACDIST?country=FR&app=ONLINE&language=fr
#***********************************************************************

@PDS
@PL-4858


Feature: pds_serialnumber_api

  As a internal user Create an API endpoint on PDS to receive form data

  Rules:
  		-- Create an API endpoint on PDS to receive and store form data entered by the user in the serial number trade-in promotion form fields in the Buy Container.
  		-- Each attribute of the serial number table (expect submission date) can be posted to PDS. None are mandatory.
  		-- The response for the post should be 201 code




######################## SCENARIO 1 #########################

Scenario Outline: 1. A response of 201 is received when data within the limited size is posted.

 When the test data is posted into the serialnumberpromotions table using the "<testApi>"
 Then confirm the response received is 201

 @REGRESSION
Examples:
|               testApi                                                        |
#|https://web-sle-engineering-svc.awsism.autodesk.com/serialnumberpromotions    |
|https://web-pt-engineering-svc.autodesk.com/serialnumberpromotions            |
#| https://pt-pds-804786913.us-east-1.elb.amazonaws.com/serialnumberpromotions  |


######################## SCENARIO 2 #########################

Scenario Outline: 2. A response of 400 is received when data posted is not within the limited size.

 When the "<testdata>" is posted for the "<field>" into the serialnumber promotions table using the "<testApi>"
 Then confirm the error response received is 400

@REGRESSION
Examples:
|               testApi                                                        |         testdata            | field         |

# plc greater than 20 char long
#|https://web-sle-engineering-svc.awsism.autodesk.com/serialnumberpromotions    | abcdefghijklmnopqrstuvwxyz  | plc           |
 |https://web-pt-engineering-svc.autodesk.com/serialnumberpromotions            | abcdefghijklmnopqrstuvwxyz  | plc           |


# productName greater than 255 char long
|https://web-pt-engineering-svc.autodesk.com/serialnumberpromotions             | 23456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899100101102103104105106107108109110111112113114115116117118119120121122123124125126127128129130  | productName   |
#|https://web-sle-engineering-svc.awsism.autodesk.com/serialnumberpromotions    | 23456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899100101102103104105106107108109110111112113114115116117118119120121122123124125126127128129130  | productName   |

# term greater than 255 char long
#|https://web-sle-engineering-svc.awsism.autodesk.com/serialnumberpromotions    | 23456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899100101102103104105106107108109110111112113114115116117118119120121122123124125126127128129130  | term          |
|https://web-pt-engineering-svc.autodesk.com/serialnumberpromotions             | 23456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899100101102103104105106107108109110111112113114115116117118119120121122123124125126127128129130  | term          |

# firstName greater than 255 char long
#|https://web-sle-engineering-svc.awsism.autodesk.com/serialnumberpromotions    | 23456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899100101102103104105106107108109110111112113114115116117118119120121122123124125126127128129130  | firstName     |
|https://web-pt-engineering-svc.autodesk.com/serialnumberpromotions            | 23456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899100101102103104105106107108109110111112113114115116117118119120121122123124125126127128129130  | firstName     |



# lastName greater than 255 char long
#|https://web-sle-engineering-svc.awsism.autodesk.com/serialnumberpromotions    | 23456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899100101102103104105106107108109110111112113114115116117118119120121122123124125126127128129130  | lastName      |
|https://web-pt-engineering-svc.autodesk.com/serialnumberpromotions            | 23456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899100101102103104105106107108109110111112113114115116117118119120121122123124125126127128129130  | lastName      |

# email greater than 500 char long
#|https://web-sle-engineering-svc.awsism.autodesk.com/serialnumberpromotions    | 23456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899100101102103104105106107108109110111112113114115116117118119120121122123124125126127128129130aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaabbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbcccccccccccccccccccccccccccccccccccccccccccddddddddddddddddddddddddddddddddddddddeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeefffffffffffffffffffffffffffff    | email         |

|https://web-pt-engineering-svc.autodesk.com/serialnumberpromotions            | 23456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899100101102103104105106107108109110111112113114115116117118119120121122123124125126127128129130aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaabbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbcccccccccccccccccccccccccccccccccccccccccccddddddddddddddddddddddddddddddddddddddeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeefffffffffffffffffffffffffffff    | email         |

# serialNumber greater than 200 char long
#|https://web-sle-engineering-svc.awsism.autodesk.com/serialnumberpromotions    | 23456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899100101102103104105106107108109110111112113114115116117118119120121122123124125126127128129130  | serialNumber  |

|https://web-pt-engineering-svc.autodesk.com/serialnumberpromotions            | 23456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899100101102103104105106107108109110111112113114115116117118119120121122123124125126127128129130  | serialNumber  |

# userIpAddress greater than 45 char long
#|https://web-sle-engineering-svc.awsism.autodesk.com/serialnumberpromotions    | 10.10.12345.12345698765--greater than 45--.2.12345 | userIpAddress |
|https://web-pt-engineering-svc.autodesk.com/serialnumberpromotions            | 10.10.12345.12345698765--greater than 45--.2.12345 | userIpAddress |

# phoneNumber greater than 200 char long
#|https://web-sle-engineering-svc.awsism.autodesk.com/serialnumberpromotions    | 123456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899100101102103104105 | phoneNumber   |
|https://web-pt-engineering-svc.autodesk.com/serialnumberpromotions            | 123456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899100101102103104105 | phoneNumber   |

# country  greater than 45 char long
#|https://web-sle-engineering-svc.awsism.autodesk.com/serialnumberpromotions    | greater than 45 character will throw error 400 | country  |
|https://web-pt-engineering-svc.autodesk.com/serialnumberpromotions            | greater than 45 character will throw error 400 | country  |

# affiliateId  greater than 45 char long
#|https://web-sle-engineering-svc.awsism.autodesk.com/serialnumberpromotions    | greater than 45 character will throw error 400 | affiliateId  |
|https://web-pt-engineering-svc.autodesk.com/serialnumberpromotions            | greater than 45 character will throw error 400 | affiliateId  |

# affiliateName  greater than 3 char long
#|https://web-sle-engineering-svc.awsism.autodesk.com/serialnumberpromotions    | greater than 45 characters will throw error and get 400 ....12345678910.11.12.13.14.15.16.17.18.19.20| affiliateName  |
|https://web-pt-engineering-svc.autodesk.com/serialnumberpromotions            | greater than 45 characters will throw error and get 400 ....12345678910.11.12.13.14.15.16.17.18.19.20| affiliateName  |

# userOptInFlag greater than 3 char long
#|https://web-sle-engineering-svc.awsism.autodesk.com/serialnumberpromotions    | 1234                        | userOptInFlag |
|https://web-pt-engineering-svc.autodesk.com/serialnumberpromotions            | 1234                        | userOptInFlag |