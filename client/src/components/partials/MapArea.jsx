import React, { Component } from 'react';
import { Map, InfoWindow, Marker, GoogleApiWrapper} from 'google-maps-react';

const LoadingContainer = (props) => (
  <div>Loading container!</div>
)

const Listing = ({ places }) => (
  <ul>{places && places.map(p => <li key={p.id}>{p.name}</li>)}</ul>
);
export class MapContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      places: []
    }
    this.onMarkerClick = this.onMarkerClick.bind(this);
  }
  onMarkerClick() {
    console.log('hey');
  }
  onMapReady = (mapProps, map) => this.searchNearby(map, map.center);

  searchNearby = (map, center) => {
    const { google } = this.props;

    const service = new google.maps.places.PlacesService(map);

    // Specify location, radius and place types for your Places API search.
    const request = {
      location: center,
      radius: '500',
      type: ['food']
    };

    service.nearbySearch(request, (results, status) => {
      if (status === google.maps.places.PlacesServiceStatus.OK)
        this.setState({ places: results });
    });
  };


  render() {
    const style = {
      width: '100%',
      height: '100%'
    }
    return (
      <Map
      className="map"
        google={this.props.google}
        style={style}
        visible={false}
        onReady={this.onMapReady}
        initialCenter={{
            lat: 40.854885,
            lng: -88.081807
          }}
        zoom={8}>
        <Marker onClick={this.onMarkerClick}
                name={'Current location'} />
                <div>
        <Listing places={this.state.places} />
        </div>
      </Map>
    );
  }
}

export default GoogleApiWrapper({
  apiKey: (process.env.API_KEY),
  LoadingContainer: LoadingContainer
})(MapContainer)
