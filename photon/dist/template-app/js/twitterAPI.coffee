twitter = require('twitter')
jsdom = require('jsdom')
Tweet = require('/Users/giannafusaro/Dev/tweetpane/photon/dist/template-app/js/tweet')

class MyTwitter
  constructor: ->
    consumer_key = process.env['TWITTER_CONSUMER_KEY']
    consumer_secret = process.env['TWITTER_CONSUMER_SECRET']
    access_token = process.env['TWITTER_ACCESS_TOKEN']
    access_token_secret = process.env['TWITTER_ACCESS_SECRET']
    timeline = []
    @client = new twitter
      consumer_key: consumer_key
      consumer_secret: consumer_secret
      access_token_key: access_token
      access_token_secret: access_token_secret

  getTimeline: ->
    params = { include_entities: true, contributor_details: true }
    @client.get 'statuses/home_timeline', params, (error, tweets, response) ->
      if !error
        console.log(tweets, 'tweets')
        for tweet in tweets
          li = document.createElement('li')
          compact = ''
          compact += value for key, value of new Tweet(
            date: tweet.created_at
            display_url: tweet.entities.urls?[0]?.display_url
            media_url: tweet.extended_entities?.media[0]?.media_url_https
            text: tweet.text
            location: tweet.user.location
            name: tweet.user.name
            bg_img: tweet.user.profile_background_image_url_https
            thumbnail: tweet.user.profile_image_url_https
            screen_name: tweet.user.screen_name
          ).injectHTML()
          li.innerHTML = compact
          $(li).addClass('list-group-item')
          $('ul.tweet-list').append li
      else
        console.log "errors:", error

  startStream: ->
    @client.stream 'user', with: 'followings', delimited: 'true', language: 'en', (stream) ->
      stream.on 'data', (tweet) ->
        console.log(tweet.text)

      stream.on 'error', (error) ->
        throw error

module.exports = MyTwitter
