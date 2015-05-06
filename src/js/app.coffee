solarized = require './solarized'
domtext = require './dom-text'

document.addEventListener 'DOMContentLoaded', (event) ->
    h1 = document.querySelector('h1')
    text = domtext.getText(h1)
    domtext.setText(h1, text.replace('?', '!'))
    h1.style.color = solarized.red.toString()
