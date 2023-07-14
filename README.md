## Setup

### Requisites

* ImageMagick: https://imagemagick.org/index.php
* Python 3.7+
* Docker (if want to run in a container)


### Running

#### Run in Docker

```sh
# building
docker build -t vuln-flask-web-app .

# running
docker run -it -p 5000:5000 --rm --name vuln-flask-web-app vuln-flask-web-app
```


#### Run Local

```
python3 -m venv venv
source venv/bin/activate
sh setup.sh
sh run.sh
```


### Options
#### Restricting Access (optional)

By default, the api key is set to `None` and any request will be allowed.

If you want to restrict the access to the app, just set the environment variable named `VULN_FLASK_APP_API_KEY` with your secret:

```sh
export VULN_FLASK_APP_API_KEY=myapisecret
```

Now, every request should include a cookie named `api_key` with the value of the `VULN_FLASK_APP_API_KEY` environment variable.

```http
GET / HTTP/1.1
Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9
Host: localhost:5000
...

Cookie: api_key=myapisecret

...