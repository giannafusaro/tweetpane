// Generated by CoffeeScript 1.10.0
(function() {
  var Tweet;

  Tweet = (function() {
    function Tweet(details) {
      this.details = details;
    }

    Tweet.prototype.injectHTML = function() {
      return {
        date: "<span class='date'>" + (/(.*):.* (\d{4})/.exec(this.details.date)[1]) + "</span>",
        display_url: "<a href='" + this.details.display_url + "' class='display-url'>" + this.details.display_url + "</a>",
        media_url: "<img class='media' src='" + this.details.media_url + "'/>",
        text: "<div class='text'>" + this.details.text + "</div>",
        location: "<span class='location'>" + this.details.location + "</span>",
        name: "<span class='user-name'>" + this.details.name + "</span>",
        bg_img: "<img class='bg-img' src='" + this.details.bg_img + "'/>",
        thumbnail: "<img class='profile-img' src='" + this.details.thumbnail + "'/>",
        screen_name: "<div class='screen-name'>" + this.details.screen_name + "</div>"
      };
    };

    Tweet.prototype.compactString = function(obj_with_html) {
      var key, results, value;
      this.compact_details = "";
      results = [];
      for (key in obj_with_html) {
        value = obj_with_html[key];
        results.push(this.compact_details += value);
      }
      return results;
    };

    return Tweet;

  })();

  module.exports = Tweet;

}).call(this);

//# sourceMappingURL=Tweet.js.map
