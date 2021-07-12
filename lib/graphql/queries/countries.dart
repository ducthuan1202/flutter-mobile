/// get list countries
final String countriesQuery = """
query{
  countries{
    ...CountryFragment
  }
}

fragment CountryFragment on Country{
  code
  name
  native
  phone  
  capital
  currency    
}
""";