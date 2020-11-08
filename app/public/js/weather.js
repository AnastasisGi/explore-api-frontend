// add logic to create the weather dashboard.

class Weather {
  constructor($, element) {
    this.$ = $
    this.element = element
  }

  render() {
    this.$.get('/api/current_weather')
      .then(data => {
        let parsed_data = JSON.parse(data)
        this.element.innerHTML = `<h1>Current weather temperature: ${parsed_data.main.temp} Kelvin</h1>`
      })
  }
}
