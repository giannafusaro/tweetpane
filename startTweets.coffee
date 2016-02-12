myTwitter = require('./twitterAPI')

mytwitter = new myTwitter()
console.log(mytwitter.getTimeline())
mytwitter.startStream()
# console.log(new myTwitter())
