// Generated by CoffeeScript 1.9.2
module.exports = {
  plural: function(n, singular, plural) {
    if (n === 1) {
      return n + " " + singular;
    }
    return n + " " + plural;
  }
};
