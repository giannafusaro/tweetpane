class Tweet
  constructor: (@details) ->

  injectHTML: ->
    """
      <img class="img-circle media-object pull-left" src="#{@details.thumbnail}" width="32" height="32">
      <div class="media-body">
        <p>#{@details.text}</p>
      </div>
    """
    # thumbnail: "<img class='img-circle media-object pull-left' src='#{@details.thumbnail}' width='32' height='32' />"

    # date: "<span class='date'>#{/(.*):.* (\d{4})/.exec(@details.date)[1]}</span>"
    # display_url: "<a href='#{@details.display_url}' class='display-url'>#{@details.display_url}</a>"
    # media_url: "<img class='media' src='#{@details.media_url}'/>"
    # text: "<div class='text'>#{@details.text}</div>"
    # location: "<span class='location'>#{@details.location}</span>"
    # name: "<span class='user-name'>#{@details.name}</span>"
    # bg_img: "<img class='bg-img' src='#{@details.bg_img}'/>"
    # thumbnail: "<img class='profile-img' src='#{@details.thumbnail}'/>"
    # screen_name: "<div class='screen-name'>#{@details.screen_name}</div>"

  # compactString: (obj_with_html) ->
  #   @compact_details = ""
  #   @compact_details += value for key, value of obj_with_html

module.exports = Tweet
