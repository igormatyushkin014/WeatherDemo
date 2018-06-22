## At a Glance

This is a very simple app written in Swift to demonstrate usage of [Alamofire](https://github.com/Alamofire/Alamofire) and [OpenWeatherMap](https://openweathermap.org) service.

## Architecture

### Networking

Each API client is a bridge between developer and network service. API clients should be subclassed from [BaseApiClient](/Source/Demo/Demo/Networking/BaseApiClient.swift). The API client for `OpenWeatherMap` is presented by [OpenWeatherApiClient](/Source/Demo/Demo/Networking/OpenWeatherApiClient.swift) class.

Under the hood, [OpenWeatherApiClient](/Source/Demo/Demo/Networking/OpenWeatherApiClient.swift) uses [Alamofire](https://github.com/Alamofire/Alamofire) and [SwiftyJSON](https://github.com/SwiftyJSON/SwiftyJSON).

### Configuration

App's configuration, including API keys for external services, is stored at [AppConfiguration](/Source/Demo/Demo/App/AppConfiguration.swift) class.

## License

`WeatherDemo` is available under the Apache 2.0 license. See the [LICENSE](./LICENSE) file for more info.
