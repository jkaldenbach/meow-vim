" WARNING: Do not edit this file directly - it is built from the src directory

" ==================================================================
" HIGHLIGHT HELPER
" ==================================================================

function! s:highlight_helper(...)
  let l:syntax_group = a:1
  let l:foreground_color = a:2
  let l:background_color = empty(a:3) ? "#22252a" : a:3
  let l:gui = a:0 == 3 ? "None" : a:4

  exec "highlight " . l:syntax_group . " guifg=" . l:foreground_color . " guibg=" . l:background_color . " gui=" . l:gui . " cterm=NONE term=NONE"
endfunction


" ==================================================================
" RESET
" ==================================================================

set background=dark
highlight clear
set termguicolors
syntax on
syntax reset
let g:colors_name = "meow"
call s:highlight_helper("Normal", "#d6d8db", "")


" ==================================================================
" UI GROUPS
" ==================================================================

" USER ACTION NEEDED
call s:highlight_helper("Error", "#e83e8c", "")
call s:highlight_helper("ErrorMsg", "#e83e8c", "")
call s:highlight_helper("WarningMsg", "#e83e8c", "")
call s:highlight_helper("SpellBad", "#e83e8c", "")
call s:highlight_helper("SpellCap", "#e83e8c", "")
call s:highlight_helper("Todo", "#e83e8c", "")
call s:highlight_helper("NeomakeErrorSign", "#e83e8c", "")
call s:highlight_helper("NeomakeWarningSign", "#e83e8c", "")

" USER CURRENT STATE
call s:highlight_helper("MatchParen", "#fd7e14", "NONE")
call s:highlight_helper("CursorLineNr", "#fd7e14", "")
call s:highlight_helper("Visual", "#22252a", "#fd7e14")
call s:highlight_helper("VisualNOS", "#22252a", "#fd7e14")
call s:highlight_helper("Folded", "#fd7e14", "")
call s:highlight_helper("FoldColumn", "#fd7e14", "")
call s:highlight_helper("IncSearch", "#fd7e14", "#343a40")
call s:highlight_helper("Search", "#fd7e14", "#343a40")
call s:highlight_helper("WildMenu", "#343a40", "#fd7e14")
call s:highlight_helper("ToolbarButton", "#343a40", "#fd7e14")
call s:highlight_helper("Question", "#fd7e14", "")
call s:highlight_helper("MoreMsg", "#fd7e14", "")
call s:highlight_helper("ModeMsg", "#fd7e14", "")
call s:highlight_helper("StatusLine", "#fd7e14", "#343a40")
call s:highlight_helper("StatusLineTerm", "#fd7e14", "#343a40")
call s:highlight_helper("TabLineSel", "#fd7e14", "#22252a")
call s:highlight_helper("PmenuSel", "#343a40", "#fd7e14")
call s:highlight_helper("PmenuThumb", "#fd7e14", "#fd7e14")
call s:highlight_helper("CtrlPMatch", "#22252a", "#fd7e14")

" VERSION CONTROL
call s:highlight_helper("DiffAdd", "NONE", "#003e7b")
call s:highlight_helper("DiffChange", "NONE", "#343a40")
call s:highlight_helper("DiffDelete", "#e83e8c", "")
call s:highlight_helper("DiffText", "NONE", "#22252a", "BOLD")
call s:highlight_helper("GitGutterAdd", "#20c997", "")
call s:highlight_helper("GitGutterChange", "#fd7e14", "")
call s:highlight_helper("GitGutterChangeDelete", "#fd7e14", "")
call s:highlight_helper("GitGutterDelete", "#e83e8c", "")

" OTHER
call s:highlight_helper("SignColumn", "NONE", "")
call s:highlight_helper("LineNr", "#67737e", "")
call s:highlight_helper("CursorLine", "NONE", "#343a40")
call s:highlight_helper("CursorColumn", "NONE", "#343a40")
call s:highlight_helper("ColorColumn", "NONE", "#343a40")
call s:highlight_helper("EndOfBuffer", "#343a40", "")
call s:highlight_helper("VertSplit", "#343a40", "")
call s:highlight_helper("StatusLineNC", "#67737e", "#343a40")
call s:highlight_helper("StatusLineTermNC", "#67737e", "#343a40")
call s:highlight_helper("TabLine", "#67737e", "#343a40")
call s:highlight_helper("TabLineFill", "#343a40", "#343a40")
call s:highlight_helper("ToolbarLine", "#67737e", "#343a40")
call s:highlight_helper("Pmenu", "#d6d8db", "#343a40")
call s:highlight_helper("PmenuSbar", "#868e96", "#868e96")
call s:highlight_helper("fzf1", "#22252a", "#343a40")
call s:highlight_helper("fzf2", "#22252a", "#343a40")
call s:highlight_helper("fzf3", "#22252a", "#343a40")
call s:highlight_helper("EasyMotionTarget", "#e83e8c", "", "BOLD")
call s:highlight_helper("EasyMotionTarget2First", "#fd7e14", "")
call s:highlight_helper("EasyMotionTarget2Second", "#ffc107", "")


" ==================================================================
" SYNTAX GROUPS
" ==================================================================

" CONSTANT
call s:highlight_helper("Constant", "#63a4e9", "")
call s:highlight_helper("Directory", "#63a4e9", "")
call s:highlight_helper("jsObjectBraces", "#63a4e9", "")
call s:highlight_helper("jsBrackets", "#63a4e9", "")
call s:highlight_helper("jsBlock", "#63a4e9", "")
call s:highlight_helper("jsFuncBlock", "#63a4e9", "")
call s:highlight_helper("jsClassBlock", "#63a4e9", "")
call s:highlight_helper("jsTryCatchBlock", "#63a4e9", "")
call s:highlight_helper("jsIfElseBlock", "#63a4e9", "")
call s:highlight_helper("jsFinallyBlock", "#63a4e9", "")
call s:highlight_helper("jsSwitchBlock", "#63a4e9", "")
call s:highlight_helper("jsRepeatBlock", "#63a4e9", "")
call s:highlight_helper("jsObjectValue", "#63a4e9", "")
call s:highlight_helper("jsClassValue", "#63a4e9", "")
call s:highlight_helper("jsParen", "#63a4e9", "")
call s:highlight_helper("jsParenSwitch", "#63a4e9", "")
call s:highlight_helper("jsParenCatch", "#63a4e9", "")
call s:highlight_helper("jsParenIfElse", "#63a4e9", "")
call s:highlight_helper("jsParenRepeat", "#63a4e9", "")
call s:highlight_helper("jsBracket", "#63a4e9", "")
call s:highlight_helper("jsTernaryIf", "#63a4e9", "")
call s:highlight_helper("jsTemplateString", "#63a4e9", "")
call s:highlight_helper("jsTemplateVar", "#63a4e9", "")
call s:highlight_helper("cssAttr", "#63a4e9", "")
call s:highlight_helper("cssAttrRegion", "#63a4e9", "")
call s:highlight_helper("cssAttributeSelector", "#63a4e9", "")
call s:highlight_helper("htmlTitle", "#63a4e9", "")
call s:highlight_helper("htmlH1", "#63a4e9", "")
call s:highlight_helper("htmlH2", "#63a4e9", "")
call s:highlight_helper("htmlH3", "#63a4e9", "")
call s:highlight_helper("htmlH4", "#63a4e9", "")
call s:highlight_helper("htmlH5", "#63a4e9", "")
call s:highlight_helper("htmlH6", "#63a4e9", "")
call s:highlight_helper("htmlLink", "#63a4e9", "")
call s:highlight_helper("markdownCode", "#63a4e9", "")
call s:highlight_helper("markdownCodeBlock", "#63a4e9", "")
call s:highlight_helper("xmlString", "#63a4e9", "")
call s:highlight_helper("netrwPlain", "#63a4e9", "")
call s:highlight_helper("netrwDir", "#63a4e9", "")
call s:highlight_helper("shDerefSimple", "#63a4e9", "")

" IDENTIFIER
call s:highlight_helper("Identifier", "#d6d8db", "")
call s:highlight_helper("jsVariableDef", "#d6d8db", "")
call s:highlight_helper("jsObject", "#d6d8db", "")
call s:highlight_helper("jsObjectKey", "#d6d8db", "")
call s:highlight_helper("jsObjectKeyComputed", "#d6d8db", "")
call s:highlight_helper("jsClassPropertyComputed", "#d6d8db", "")
call s:highlight_helper("jsDestructuringPropertyComputed", "#d6d8db", "")
call s:highlight_helper("jsDestructuringValue", "#d6d8db", "")
call s:highlight_helper("jsFutureKeys", "#d6d8db", "")
call s:highlight_helper("jsObjectProp", "#d6d8db", "")
call s:highlight_helper("jsPrototype", "#d6d8db", "")
call s:highlight_helper("jsObjectStringKey", "#d6d8db", "")
call s:highlight_helper("jsFuncArgs", "#d6d8db", "")
call s:highlight_helper("jsTaggedTemplate", "#d6d8db", "")
call s:highlight_helper("jsDestructuringBlock", "#d6d8db", "")
call s:highlight_helper("jsDestructuringArray", "#d6d8db", "")
call s:highlight_helper("jsDestructuringPropertyValue", "#d6d8db", "")
call s:highlight_helper("jsImportContainer", "#d6d8db", "")
call s:highlight_helper("jsExportContainer", "#d6d8db", "")
call s:highlight_helper("jsModuleGroup", "#d6d8db", "")
call s:highlight_helper("jsModuleKeyword", "#d6d8db", "")
call s:highlight_helper("javascriptHtmlEvents", "#d6d8db", "")
call s:highlight_helper("javascriptDomElemAttrs", "#d6d8db", "")
call s:highlight_helper("javascriptDomElemFuncs", "#d6d8db", "")
call s:highlight_helper("cssClassName", "#d6d8db", "")
call s:highlight_helper("cssIdentifier", "#d6d8db", "")
call s:highlight_helper("htmlTagName", "#d6d8db", "")
call s:highlight_helper("htmlSpecialTagName", "#d6d8db", "")
call s:highlight_helper("htmlTag", "#d6d8db", "")
call s:highlight_helper("htmlEndTag", "#d6d8db", "")
call s:highlight_helper("jsonKeyword", "#d6d8db", "")
call s:highlight_helper("xmlAttrib", "#d6d8db", "")
call s:highlight_helper("netrwExe", "#d6d8db", "")
call s:highlight_helper("shFunction", "#d6d8db", "")
call s:highlight_helper("typescriptVariableDeclaration", "#d6d8db", "")
call s:highlight_helper("typescriptCall", "#d6d8db", "")

" STATEMENT
call s:highlight_helper("Statement", "#fd7e14", "")
call s:highlight_helper("jsFuncCall", "#fd7e14", "")
call s:highlight_helper("jsOperator", "#fd7e14", "")
call s:highlight_helper("jsSpreadOperator", "#fd7e14", "")
call s:highlight_helper("jsTemplateExpression", "#fd7e14", "")
call s:highlight_helper("jsFuncArgExpression", "#fd7e14", "")
call s:highlight_helper("jsSpreadExpression", "#d6d8db", "")
call s:highlight_helper("jsRestExpression", "#d6d8db", "")
call s:highlight_helper("cssFunctionName", "#fd7e14", "")
call s:highlight_helper("cssProp", "#fd7e14", "")
call s:highlight_helper("htmlArg", "#fd7e14", "")
call s:highlight_helper("jsxRegion", "#fd7e14", "")
call s:highlight_helper("xmlTag", "#fd7e14", "")
call s:highlight_helper("xmlEndTag", "#fd7e14", "")
call s:highlight_helper("xmlTagName", "#fd7e14", "")
call s:highlight_helper("xmlEqual", "#fd7e14", "")
call s:highlight_helper("shCmdSubRegion", "#fd7e14", "")
call s:highlight_helper("typescriptOperator", "#fd7e14", "")
call s:highlight_helper("typescriptOpSymbols", "#fd7e14", "")
call s:highlight_helper("typescriptProp", "#fd7e14", "")

" TYPE
call s:highlight_helper("Type", "#868e96", "")
call s:highlight_helper("jsFunction", "#868e96", "")
call s:highlight_helper("jsFunctionKey", "#868e96", "")
call s:highlight_helper("jsStorageClass", "#868e96", "")
call s:highlight_helper("jsExportDefault", "#868e96", "")
call s:highlight_helper("jsNan", "#868e96", "")
call s:highlight_helper("shFunctionKey", "#868e96", "")
call s:highlight_helper("jsFlowDefinition", "#868e96", "")
call s:highlight_helper("jsFlowClassDef", "#868e96", "")
call s:highlight_helper("jsFlowTypeStatement", "#868e96", "")
call s:highlight_helper("jsFlowTypeKeyword", "#868e96", "")
call s:highlight_helper("jsFlowImportType", "#868e96", "")
call s:highlight_helper("jsFlowArgumentDef", "#868e96", "")
call s:highlight_helper("jsFlowReturn", "#868e96", "")
call s:highlight_helper("jsFlowFunctionGroup", "#868e96", "")
call s:highlight_helper("jsFlowClassGroup", "#868e96", "")
call s:highlight_helper("typescriptEnumKeyword", "#868e96", "")
call s:highlight_helper("typescriptVariable", "#868e96", "")
call s:highlight_helper("typescriptFuncKeyword", "#868e96", "")
call s:highlight_helper("typescriptDefault", "#868e96", "")

" GLOBAL
call s:highlight_helper("PreProc", "#ffc107", "")
call s:highlight_helper("Keyword", "#ffc107", "")
call s:highlight_helper("jsGlobalObjects", "#ffc107", "")
call s:highlight_helper("jsThis", "#ffc107", "")
call s:highlight_helper("jsSwitchCase", "#ffc107", "")
call s:highlight_helper("jsParenDecorator", "#ffc107", "")
call s:highlight_helper("cssTagName", "#ffc107", "")
call s:highlight_helper("jsGlobalNodeObjects", "#ffc107", "")
call s:highlight_helper("cssFontDescriptor", "#ffc107", "")
call s:highlight_helper("typescriptGlobal", "#ffc107", "")
call s:highlight_helper("typescriptExport", "#ffc107", "")
call s:highlight_helper("typescriptImport", "#ffc107", "")

" EMPHASIS
call s:highlight_helper("Underlined", "#e83e8c", "")
call s:highlight_helper("markdownItalic", "#e83e8c", "")
call s:highlight_helper("markdownBold", "#e83e8c", "")
call s:highlight_helper("markdownBoldItalic", "#e83e8c", "")

" SPECIAL
call s:highlight_helper("Special", "#17a2b8", "")
call s:highlight_helper("SpecialKey", "#17a2b8", "")
call s:highlight_helper("NonText", "#17a2b8", "")
call s:highlight_helper("Title", "#17a2b8", "")
call s:highlight_helper("jsBraces", "#17a2b8", "")
call s:highlight_helper("jsFuncBraces", "#17a2b8", "")
call s:highlight_helper("jsDestructuringBraces", "#17a2b8", "")
call s:highlight_helper("jsClassBraces", "#17a2b8", "")
call s:highlight_helper("jsParens", "#17a2b8", "")
call s:highlight_helper("jsFuncParens", "#17a2b8", "")
call s:highlight_helper("jsArrowFunction", "#17a2b8", "")
call s:highlight_helper("jsModuleAsterisk", "#17a2b8", "")
call s:highlight_helper("cssBraces", "#17a2b8", "")
call s:highlight_helper("cssBraces", "#17a2b8", "")
call s:highlight_helper("markdownHeadingDelimiter", "#17a2b8", "")
call s:highlight_helper("markdownH1", "#17a2b8", "")
call s:highlight_helper("markdownH2", "#17a2b8", "")
call s:highlight_helper("markdownH3", "#17a2b8", "")
call s:highlight_helper("markdownH4", "#17a2b8", "")
call s:highlight_helper("markdownH5", "#17a2b8", "")
call s:highlight_helper("markdownH6", "#17a2b8", "")
call s:highlight_helper("markdownRule", "#17a2b8", "")
call s:highlight_helper("markdownListMarker", "#17a2b8", "")
call s:highlight_helper("markdownOrderedListMarker", "#17a2b8", "")
call s:highlight_helper("markdownLinkText", "#17a2b8", "")
call s:highlight_helper("markdownCodeDelimiter", "#17a2b8", "")
call s:highlight_helper("netrwClassify", "#17a2b8", "")
call s:highlight_helper("netrwVersion", "#17a2b8", "")
call s:highlight_helper("typescriptParens", "#17a2b8", "")
call s:highlight_helper("typescriptBraces", "#17a2b8", "")
call s:highlight_helper("typescriptArrowFunc", "#17a2b8", "")
call s:highlight_helper("CtrlPStats", "#17a2b8", "")

" TRIVIAL
call s:highlight_helper("Comment", "#67737e", "")
call s:highlight_helper("Ignore", "#67737e", "")
call s:highlight_helper("Conceal", "#67737e", "")
call s:highlight_helper("Noise", "#67737e", "")
call s:highlight_helper("jsNoise", "#67737e", "")
call s:highlight_helper("jsFuncArgCommas", "#67737e", "")
call s:highlight_helper("cssClassNameDot", "#67737e", "")
call s:highlight_helper("jsonQuote", "#67737e", "")
call s:highlight_helper("shQuote", "#67737e", "")
call s:highlight_helper("typescriptEndColons", "#67737e", "")
call s:highlight_helper("typescriptTemplateSB", "#67737e", "")
call s:highlight_helper("EasyMotionShade", "#67737e", "")

" PYTHON
call s:highlight_helper("pythonBuiltin", "#17a2b8", "")
call s:highlight_helper("pythonBuiltinObj", "#17a2b8", "")
call s:highlight_helper("pythonBuiltinFunc", "#17a2b8", "")
call s:highlight_helper("pythonFunction", "#ffc107", "")
call s:highlight_helper("pythonDecorator", "#fd7e14", "")
call s:highlight_helper("pythonInclude", "#868e96", "")
call s:highlight_helper("pythonImport", "#868e96", "")
call s:highlight_helper("pythonRun", "#868e96", "")
call s:highlight_helper("pythonCoding", "#868e96", "")
call s:highlight_helper("pythonOperator", "#fd7e14", "")
call s:highlight_helper("pythonException", "#fd7e14", "")
call s:highlight_helper("pythonExceptions", "#17a2b8", "")
call s:highlight_helper("pythonBoolean", "#17a2b8", "")
call s:highlight_helper("pythonDot", "#ffc107", "")
call s:highlight_helper("pythonConditional", "#fd7e14", "")
call s:highlight_helper("pythonRepeat", "#fd7e14", "")
call s:highlight_helper("pythonDottedName", "#63a4e9", "")


" ==================================================================
" VARIABLES
" ==================================================================

" NEOVIM TERMINAL MODE
let g:terminal_color_0 = "#22252a"
let g:terminal_color_1 = "#e83e8c"
let g:terminal_color_2 = "#343a40"
let g:terminal_color_3 = "#ffc107"
let g:terminal_color_4 = "#22252a"
let g:terminal_color_5 = "#6f42c1"
let g:terminal_color_6 = "#17a2b8"
let g:terminal_color_7 = "#d6d8db"
let g:terminal_color_8 = "#868e96"
let g:terminal_color_9 = "#fd7e14"
let g:terminal_color_10 = "#20c997"
let g:terminal_color_11 = "#ffc107"
let g:terminal_color_12 = "#63a4e9"
let g:terminal_color_13 = "#e83e8c"
let g:terminal_color_14 = "#17a2b8"
let g:terminal_color_15 = "#d6d8db"

" FZF
let g:fzf_colors =
\ { "fg":      ["fg", "Normal"],
  \ "bg":      ["bg", "Normal"],
  \ "hl":      ["fg", "IncSearch"],
  \ "fg+":     ["fg", "CursorLine", "CursorColumn", "Normal"],
  \ "bg+":     ["bg", "CursorLine", "CursorColumn"],
  \ "hl+":     ["fg", "IncSearch"],
  \ "info":    ["fg", "IncSearch"],
  \ "border":  ["fg", "Ignore"],
  \ "prompt":  ["fg", "Comment"],
  \ "pointer": ["fg", "IncSearch"],
  \ "marker":  ["fg", "IncSearch"],
  \ "spinner": ["fg", "IncSearch"],
  \ "header":  ["fg", "IncSearch"] }
