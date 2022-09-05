import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="map"
export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array
  }

  connect() {
    mapboxgl.accessToken = this.apiKeyValue

    this.map = new mapboxgl.Map({
      container: this.element,
      // style: 'mapbox://styles/mapbox/dark-v10',
      style: 'https://api.mapbox.com/styles/juslambre/cl7ng8x83006615l9wr90ztu0',
      // style: "https://api.mapbox.com/styles/v1/juslambre/cl7ng8x83006615l9wr90ztu0.html?title=view&access_token=pk.eyJ1IjoianVzbGFtYnJlIiwiYSI6ImNqeTB1ZGo4eTAxdXUzbmsyOG1xcmQ1NWMifQ.IWZKtDwcnUCq03fo9-ualg&zoomwheel=true&fresh=true#12.53/50.93806/6.97102",
    })
    this.#addMarkersToMap()
    this.#fitMapToMarkers()
  }

  #addMarkersToMap() {
    this.markersValue.forEach((marker) => {
      new mapboxgl.Marker({color: 'green'})
        .setLngLat([ marker.lng, marker.lat ])
        .addTo(this.map)
    })
  }

  #fitMapToMarkers(){
    const bounds = new mapboxgl.LngLatBounds()
    this.markersValue.forEach(marker => bounds.extend([ marker.lng, marker.lat ]))
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 })
  }
}
