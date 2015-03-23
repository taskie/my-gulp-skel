dest = './build/'
src = './src/'
tmp = './tmp/'

webpack = require 'webpack'

config =
  dest: dest

  js:
    src: src + 'js/**/!(_)*.js'
    dest: tmp + 'js'

  coffee:
    src: src + 'js/**/!(_)*.coffee'
    dest: tmp + 'js'
  
  ts:
    src: src + 'js/**/!(_)*.ts'
    dest: tmp + 'js'
    options:
      target: "ES5"
      removeComments: true
      module: "commonjs"
  
  webpack:
    webpack:
      entry: tmp + 'js/app.js'
      output:
        filename: 'main.js'
      resolve:
        extensions: ['', '.js']
      devtool: 'source-map'
      module:
        preLoaders:
          [
            { test: /\.js$/, loader: 'source-map-loader' }
          ]
      plugins:
        [
          # new webpack.optimize.UglifyJsPlugin()
        ]
    src: tmp + 'js/**/!(_)*.js'
    dest: dest

  styl:
    src: src + 'css/**/!(_)*'
    dest: dest
    output: 'main.css'
    autoprefixer:
      browsers: ['last 2 versions']
    minify: false
  
  data: 
    src: src + 'data/**/!(_)*'
    dest: dest

  clean:
    src: [tmp]

  clobber:
    src: [tmp, dest]

config.watch = {}
for key in ['js', 'coffee', 'ts', 'webpack', 'styl', 'data']
  config.watch[key] = config[key].src

module.exports = config
