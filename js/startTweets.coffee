myTwitter = require('../js/twitterAPI')
mytwitter = new myTwitter()
console.log "myTwitter.getTimeline():", mytwitter.getTimeline()
mytwitter.startStream()
# console.log(new myTwitter())
