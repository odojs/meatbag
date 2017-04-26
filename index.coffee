module.exports =
  plural: (n, singular, plural, fn) ->
    if !fn?
      fn = (n) -> n.toString()
    ns = fn n
    return "#{ns} #{singular}" if n is 1
    "#{ns} #{plural}"
  oxford: (array) ->
    if array.length is 0
      ''
    else if array.length is 1
      array[0]
    else
      "#{array[0..-2].join ', '} and #{array[array.length - 1]}"
