// add logic to create the weather dashboard.

class Weather {
  constructor($, element) {
    console.log("Weather class is instantiated")  
    this.$ = $
    this.element = element
  }

  render() {
    console.log("render function called")
    this.$.get('/api/current_weather')
      .then(data => {
        console.log("In jQuery 'get' callback")
        console.log("data: ", data)
        let parsed_data = JSON.parse(data)
        console.log("parsed_data: ", parsed_data)
        this.element.innerHTML = `<h1>Current weather temperature: ${parsed_data.main.temp} Kelvin</h1>`
      })
  }
}
