grammar CanadTelco;

/*
Canadian phone numbers:

7805321813
1-780-532-1813
1 780 532 1813
+1(780)532-1813
780-532-1813
*/

phone_canada: PHONE_CA1 |  PHONE_CA2 |  PHONE_CA3 |  PHONE_CA4 ;

PHONE_CA1: COUNTRYCODE? TRIPLET TRIPLET QUARTET ;
PHONE_CA2: (COUNTRYCODE ' ')? TRIPLET ' ' TRIPLET ' ' QUARTET ;
PHONE_CA3: (COUNTRYCODE '-')? TRIPLET '-' TRIPLET '-' QUARTET ;
PHONE_CA4: COUNTRYCODE? '(' TRIPLET ')' TRIPLET '-' QUARTET ;

fragment
TRIPLET: DIGIT DIGIT DIGIT ;

fragment
QUARTET: DIGIT DIGIT DIGIT DIGIT ;

fragment
COUNTRYCODE: ('+1' | '1') ;

fragment
DIGIT: [0-9] ;

WS:[\t\r\n ]+ -> skip ;
