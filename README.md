A template for developing express.js project with coffee-script.

Inspired from https://github.com/twilson63/express-coffee and https://github.com/alfrednerstu/node-express-coffeescript .

It consists of some "best practise" for express.js and coffee-script development.

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
nodemon server.js  # or nodemon app.coffee
# then edit *.coffee and *.jade and any files
```

For production:

```
node server.js  # or coffee app.coffee
```

Place any `*.coffee` files (for server side) just as is developing `*.js` files. Place client side `*.coffee` files in `./assets/js/`. Place `*.styl` files in `./assets/css/`.

The template is still in developing.
