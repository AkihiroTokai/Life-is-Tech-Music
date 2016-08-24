background = [
  "https://life-is-tech.com/materials/images/desktop_summer2016_blue.png" # '16 Summer
  "https://life-is-tech.com/materials/images/desktop_spring2016_web.png"  # '16 Spring
  ""                                                                      # '15 Coca-Cola
  "https://life-is-tech.com/materials/images/desktop_xmas2015_night.jpg"  # '15 Xmas
  "https://life-is-tech.com/materials/images/summer2015-blue.jpg"         # '15 Summer
  ""                                                                      # '15 YOSHIMOTO
  ""                                                                      # '15 伊豆
  ""                                                                      # '15 萩
  "https://life-is-tech.com/materials/images/spring2015-blue.png"         # '15 Spring
  ""                                                                      # '14 Xmas
  "https://life-is-tech.com/materials/images/summer2014-blue.png"         # '14 Summer
  ""                                                                      # '14 English
  ""                                                                      # '14 Spring
  ""                                                                      # '13 Xmas
  ""                                                                      # '13 Summer
  ""                                                                      # '13 Spring
  ""                                                                      # '12 Xmas
  ""                                                                      # '12 Summer
]

$(window).on "load", ->
  campCount   = 0
  $bg         = $ "#background"
  $preHeading = null

  bg = ->
    $heading = $ this
    
    if $preHeading?
      css = {}

      if $preHeading.prop("tagName") is "H3"
        css.backgroundImage = "url(#{backgrounds[campCount] ?
          "https://life-is-tech.com/materials/images/lifeistech-logo.png"})"
        campCount++

      css.height = do $heading.offset - do $preHeading.offset

      $ "<div>"
        .css css
        .appendTo $bg
  
  $("#main h2, #main h3").each bg
  do bg
