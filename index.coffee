module.exports =
  plural: (n, singular, plural) ->
    return "#{n} #{singular}" if n is 1
    "#{n} #{plural}"