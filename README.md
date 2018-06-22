## At a Glance

This is a very simple app written in Swift that demonstrates usage of [Alamofire](https://github.com/Alamofire/Alamofire) and [OpenWeatherMap](https://openweathermap.org) service.

## Architecture

### Networking

Each API client is a bridge between developer and network service. API clients should be subclassed from [BaseApiClient](/Source/Demo/Demo/Networking/BaseApiClient.swift). The API client for `OpenWeatherMap` is presented by [OpenWeatherApiClient](/Source/Demo/Demo/Networking/OpenWeatherApiClient.swift) class.
