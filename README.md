A template for developing express.js project with coffee-script.

Inspired from https://github.com/twilson63/express-coffee and https://github.com/alfrednerstu/node-express-coffeescript .

It consists of some "good practises" for express.js and coffee-script development.

Install:

```
# assuming that node and npm and git have been installed...
npm install nodemon -g
npm install coffee-script -g
git clone https://github.com/fyears/exprcoffee.git [project-name]
cd [project-name]
npm install
```

Develop:

```
nodemon app.coffee  # shouldn't use nodemon app.js because it won't restart program automatically sometimes
# then edit *.coffee and *.jade and any files
```

For production:

```
NODE_ENV=production node app.js
## or:
NODE_ENV=production coffee app.coffee
```

Place any `*.coffee` files (for server side) just as is developing `*.js` files. Place client side `*.coffee` files in `./assets/js/`. Place `*.styl` files in `./assets/css/`.

The template is still in developing.
