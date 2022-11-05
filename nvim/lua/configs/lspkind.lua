local lspkind = require "lspkind"

lspkind.init(
  symbol_map = {
    NONE = "",
    Array = "",
    Boolean = "⊨",
    Class = "",
    Constructor = "",
    Key = "",
    Namespace = "",
    Null = "NULL",
    Number = "#",
    Object = "⦿",
    Package = "",
    Property = "",
    Reference = "",
    Snippet = "",
    String = "𝓐",
    TypeParameter = "",
    Unit = "",
  }
)
