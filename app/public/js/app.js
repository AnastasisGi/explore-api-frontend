// when the window loads, load the front end app.

window.addEventListener('load', () => {
  console.log("window loaded")
  element = document.getElementById('app')
  console.log("app element:", element)
  weather = new Weather($, element)
  console.log("weather:", weather)
  weather.render()
  console.log("app loaded")
})
