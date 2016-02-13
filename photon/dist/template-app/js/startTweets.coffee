console.log(global);
myTwitter = require('/Users/giannafusaro/Dev/tweetpane/photon/dist/template-app/js/twitterAPI')
mytwitter = new myTwitter()
console.log "myTwitter.getTimeline():", mytwitter.getTimeline()
mytwitter.startStream()
# console.log(new myTwitter())
