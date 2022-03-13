Feature: json feature testing
  Scenario: json reader parser
    * def jsonObject =
    """
    [
    {
      "name" : "Gustav",
      "city" : "Kielce",
      "age" : 34
    },
    {
      "name" : "Monica",
      "city" : "LA",
      "age" : 29
    }
    ]
    """

    * print jsonObject
    * print jsonObject[1]
    * print jsonObject[1].name + " " + jsonObject[1].age  + " " + jsonObject[1].city
