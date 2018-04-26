# tethys/app README.md

This application accesses a web api and retreives json. It will print the json to stdout and serve is as HTML on the configured port.

## Configuration options:
- `API`: The url of the api to get json from. Default = https://talaikis.com/api/quotes/random/ 
- `PORT`: The port to serve HTTP on. Required, No Default.
- `NAME`: Name to print at the /hello path. Default = 'World'

## Runing tethys
Set the configuration options as environment variables and run `python tethys`
