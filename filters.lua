local filters = require "pandoc-include.pandoc-include"
filters = pandoc.List(filters):__concat(require "lua-filters.include-code-files.include-code-files")
filters = pandoc.List(filters):__concat(require "lua-filters.diagram-generator.diagram-generator")
filters = pandoc.List(filters):__concat(require "fenced_div")
return filters