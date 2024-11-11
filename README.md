# cypher
Cypher Extension for Zed

grammar.js

module.exports = grammar({
  name: 'cypher',

  rules: {
    // Root rule, which is a single MATCH statement
    source_file: $ => $.match_clause,

    // MATCH clause with a basic pattern
    match_clause: $ => seq(
      'MATCH',         // Keyword
      '(', $.identifier, ')' // Node pattern with a simple identifier
    ),

    // Simple identifier (variable name for the node)
    identifier: $ => /[a-zA-Z_][a-zA-Z0-9_]*/
  }
});
