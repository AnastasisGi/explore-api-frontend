// when the window loads, load the front end app.

window.addEventListener('load', () => {
  element = document.getElementById('app')
  weather = new Weather($, element)
  weather.render()
})
