solarized = require './solarized'

getText = (node) ->
  return node.innerText if node.innerText?
  return node.textContent if node.textContent?
  null

setText = (node, text) ->
  if node.innerText?
    node.innerText = text
    return
  else if node.textContent?
    node.textContent = text
    return
  return

window.onload = ->
  h1 = document.querySelector('h1')
  text = getText(h1)
  setText(h1, text.replace('?', '!'))
  red = Array.prototype.slice.call(solarized.red).slice(0, 3).map (x) ->
    (x * 255) | 0
  h1.style.color = "rgb(#{red.join()})"
