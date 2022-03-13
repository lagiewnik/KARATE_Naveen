Feature: Hello world feature

Scenario: Hello world scenario
    * print 'hello world'
    * print "Go go og"
    * print someUrlBase

Scenario: declare and print variable
    * def balance = 20
    * def fee = 20
    * def tax = 10
    * print 'total amount ->' + (balance + fee + tax)
  
Scenario: calculator scenario
    * def a = 32
    * def b = 17
    * print 'mul->' + (a*b)