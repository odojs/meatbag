module.exports =
  plural: (n, singular, plural, fn) ->
    if !fn?
      fn = (n) -> n.toString()
    ns = fn n
    return "#{ns} #{singular}" if n is 1
    "#{ns} #{plural}"
  oxford: (array) ->
    return array if array.length <= 1
    result = []
    for item, index in array
      result.push item
      if index < array.length - 2
        result.push ', '
      else if index is array.length - 2
        result.push ' and '
    result
