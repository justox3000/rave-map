import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="map"
export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array
  }

  connect() {
    mapboxgl.accessToken = this.apiKeyValue

    /* const customMarker = document.createElement("div")
                            customMarker.className = "marker"
                            customMarker.style.backgroundImage = `url('${marker.image_url}')`
                            customMarker.style.backgroundSize = "contain"
                            customMarker.style.width = "25px"
                            customMarker.style.height = "25px"
      new mapboxgl.Marker(customMarker) */

    this.map = new mapboxgl.Map({
      container: this.element,
      style: 'mapbox://styles/juslambre/cl85z9y9q006x14nt52k6b8j4',
      cooperativeGestures: true
    })
    this.#addMarkersToMap()
    this.#fitMapToMarkers()
    this.map.addControl(new mapboxgl.FullscreenControl())
    this.map.addControl(new mapboxgl.NavigationControl());
  }

  #addMarkersToMap() {
    this.markersValue.forEach((marker) => {
      const popup = new mapboxgl.Popup().setHTML(marker.info_window)
      new mapboxgl.Marker({color: 'green'})
        .setLngLat([ marker.lng, marker.lat ])
        .setPopup(popup)
        .addTo(this.map)
    })
  }

  #fitMapToMarkers(){
    const bounds = new mapboxgl.LngLatBounds()
    this.markersValue.forEach(marker => bounds.extend([ marker.lng, marker.lat ]))
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 })
  }
}
