JS less Slide Show component using [Fadeshow](https://github.com/alexerlandsson/css-fadeshow)

The Slide show default height is
100vh , to cover the full view port as a Hero Slider

the class for the height is:
``` .slideshow_height_ ```
overwrite it in your theme if you need a custom height


## Usage 
this theme is set up to work with [machu pichu](https://github.com/foundpatterns/machu-picchu)

#### [Machu Pichu](https://github.com/foundpatterns/machu-picchu) set up
In this example the theme is added into a folder call themes

```
imports = {
  ...
    Other set up
  ...
  slideshow-template-theme = "themes/slideshow-template-theme",
  fadeshow = "themes/slideshow-template-theme/stylesheets/fadeshow",
}

slideshow-template-theme = {
  url = "https://github.com/lighttouch-themes/slideshow-template-theme",
}

fadeshow = {
  url = "https://github.com/alexerlandsson/css-fadeshow",
}
```