(comment) @comment

; Identifiers
;------------

; Escaped identifiers like \"+."
((identifier) @constant.macro
 (#match? @constant.macro "^\\.*$"))

[
  (type_identifier)
  (unit_type)
] @type

[
  (variant_identifier)
  (polyvar_identifier)
] @constant

(property_identifier) @property
(shorthand_property_identifier_pattern) @parameter
(module_name) @namespace

(jsx_identifier) @tag
(jsx_attribute (property_identifier) @attribute)

; String literals
;----------------

[
  (string)
  (template_string)
] @string

(template_substitution
  "${" @punctuation.special
  "}" @punctuation.special) @embedded

; Other literals
;---------------

[
  (true)
  (false)
] @constant.builtin

(number) @number
(polyvar) @constant

; Functions
;----------

[
 (formal_parameters (identifier))
 (positional_parameter (identifier))
 (labeled_parameter (identifier))
] @parameter

; Misc
;-----

(subscript_expression index: (string) @property)

(decorator_identifier) @annotation
("@") @annotation

[
  (include_statement)
  (open_statement)
] @include

[
  "type"
  "let"
  "external"
  "module"
  "as"
] @keyword

[
  "if"
  "else"
  "switch"
] @conditional

[
  "++"
  "+"
  "+."
  "-"
  "-."
  "*"
  "*."
  "/"
  "/."
  "<"
  "<="
  "=="
  "==="
  "!"
  "!="
  "!=="
  ">"
  ">="
  "&&"
  "||"
] @operator

(ternary_expression ["?" ":"] @operator)

[
  "="
  "->"
] @operator

[
  "."
  ","
  "|"
] @punctuation.delimiter

[
  "("
  ")"
  "{"
  "}"
  "["
  "]"
] @punctuation.bracket

(polyvar_type
  [
   "["
   "[>"
   "[<"
   "]"
  ] @punctuation.bracket)

[
  "~"
  "?"
  "=>"
  "..."
  (optional)
] @punctuation.special
