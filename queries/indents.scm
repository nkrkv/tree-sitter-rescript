; inherits: jsx

[
  (for_expression)
  (while_expression)
  (if_expression)
  (let_binding)
  (switch_expression)
  (expression_statement)
  (array)
  (call_expression)
  (list)
  (module_declaration)
  (record)
] @indent

(record (record_field) @indent)
(arguments (block) @indent) 

(variant_declaration) @auto

[
  "}"
  "]"
] @indent_end

[
  "("
  ")"
  "{"
  "}"
  "]"
  (else_clause)
  (record)
] @branch

(arguments (block) @branch)
