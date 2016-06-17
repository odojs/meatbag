module.exports =
  plural: (n, singular, plural, fn) ->
    if !fn?
      fn = (n) -> n.toString()
    ns = fn n
    return "#{ns} #{singular}" if n is 1
    "#{ns} #{plural}"
