/**
 * @file Parser for easybuild config files
 * @author Leon Boschman <leon.boschman@chalmers.se>
 * @license GPL-2.0-or-later
 */

/// <reference types="tree-sitter-cli/dsl" />
// @ts-check

module.exports = grammar({
  name: "easybuild",

  rules: {
    // TODO: add the actual grammar rules
    source_file: $ => "hello"
  }
});
