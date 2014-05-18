census
======

Rails app for visualising New Zealand Census data

Census data is released in one large CSV available from
[Stats New Zealand](http://www.stats.govt.nz/Census/) on a
meshblock-level.

The data has been cleaned to remove some inaccuracies.

This project's goal is to provide a set of endpoints for
plotting data on New Zealand maps.

See ``db/seeds.rb`` for how data is imported.

#### System Dependencies

Postgresql
Postgis

On Mac the recommended way is to use homebrew.

### Getting started

- Install postgis

- run ``rake db:setup``

### Testing

Tests are written with RSpec

- ``rake spec``

### Deployment

TBD

### Contribution

Is very welcome. Open a pull request!