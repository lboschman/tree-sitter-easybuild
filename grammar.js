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
    source_file: ($) => repeat($._definition),

    _definition: ($) => choice($.string_definition, $.version_definition),

    string_definition: ($) => seq($.identifier, "=", $.value_string),

    version_definition: ($) => seq("version =", $.version_string),

    identifier: ($) => /[a-z]+/,

    value_string: ($) => /\'[^\']+\'/,

    version_string: ($) => /\'\d+(\.\d+)*\'/,
  },
});
