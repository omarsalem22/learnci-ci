
function greet(name = '') {
  const n = String(name).trim();
  return n ? `Hello, ${n}` : 'Hello';
}

module.exports = greet;