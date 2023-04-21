Docker compose project involving an nginx frontend exposing 2 separate python web-servers at the backend.

Frontend:
- nginx maps host:9000 to itself at :80
- serves an index.html composed of 2 frames - mapped to backends
Backend:
- Converter converts Celsius to Fahrenheit, flask web-server exposed at :8080
- Factorial gets factorial of a number, flask web-server exposed at :8081

Usage:
$ docker compose up --build

Open up a browser at host:9000
Enjoy!
