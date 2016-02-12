if variable?
  console.log('variable is both declared and initialized with a non-null value');

# conditional assignment
getUserLocale = ->
  @locale ?= DB.getLocaleByUser(User.current)

# conditionally assign undeclared variable
# abc is not declared
abc ?= 99

# safely chaining
zip = User.current?.address?.zip

# calling a function that may not exist
noSuchFunction?()


lottery.drawWinner?().address?.zip
