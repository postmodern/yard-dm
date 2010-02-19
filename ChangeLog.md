### 0.1.1 / 2010-02-18

* Fixed incorrect parsing of variables named `belongs_to` or `property`
  under Ruby 1.8.x.
* Added specs for parsing invalid `property`, `has` and `property`
  statements.

### 0.1.0 / 2010-01-13

* Initial release:
  * Parses `property` statements.
  * Parses `has` `n`, `1`, `0..n` and `1..n` statements.
  * Parses `belongs_to` statements.
  * All specs pass on Ruby 1.8.7-p174 and Ruby 1.9.1-p26041 using YARD 0.5.3.

