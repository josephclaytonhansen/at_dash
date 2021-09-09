const { environment } = require('@rails/webpacker')

module.exports = environment

environment.config.merge({
    output: {
      // Makes exports from entry packs available to global scope, e.g.
      // Packs.application.myFunction
      library: ['Packs', '[name]'],
      libraryTarget: 'var'
    },
  })
