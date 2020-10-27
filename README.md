# Overview
This module implements an abstraction for some of [The Movie DB](<https://www.themoviedb.org/?language=pt-BR>) APIs. It was designed based on the [iOS Movies](<https://github.com/BrenoAquino/ios-movies>) project. The Interfaces layer already abstracts the control of requests in parallel to be able to display the _Home_ and _Content Detail_. The modularization of this layer was made to reuse the implementation of requests and the control of requests in parallel for iOS, tvOS and macOS.

TMDBServices is responsible only for direct integration with The Movie DB APIs. This modularization allows the maintenance of the integration with the APIs and business rules of obtaining the data to be unified for all fronts of _Apple Things_.

The Movie DB Documnetation is available [here](<https://developers.themoviedb.org/3/getting-started/introduction>).

# Requirements
| Operational System | Version |
| ---- | ----
| iOS | > 10.0
| tvOS | > 10.0
| macOS | > 10.14

# Installation
The installation of this module can only be done with __Swift Package__.

# Dependency
| Type | Name | Version |
| ---- | ---- | ---- |
| **Networking** | [Moya](<https://github.com/Moya/Moya>) | 14.0.0
| **Tests** | [Quick](<https://github.com/Quick/Quick>) | 3.0.0
| **Tests** | [Nimble](<https://github.com/Quick/Nimble>) | 9.0.0
