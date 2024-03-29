-- This file should be edited by the user. Read the instructions of each section and then edit them as desired.

--[[ Highlite, a Neovim colorscheme template.
* Author:     Iron-E (https://github.com/Iron-E)
* Repository: https://github.com/nvim-ghostly

Initially forked from vim-rnb, a Vim colorsheme template:
* Author:        Romain Lafourcade (https://github.com/romainl)
* Canonical URL: https://github.com/romainl/vim-rnb
]]
--[[ Introduction
This template is designed to help Neovim users create their own colorschemes
without much effort. You will not need any additional tooling: just open it
in Neovim and follow the instructions.

The process is divided in five steps:

0. Rename the template,
2. Edit your colorscheme's information,
3. Define your colors,
4. Define your highlight groups and links, and
5. Sourcing your colorscheme.
]]
--[[ Step 1: Renaming
* If this file is distributed with a colorscheme it's probably already named correctly
  and you can skip this step.
* If you forked/cloned/copied this repository to create your own colorscheme, you will have to
  rename this template to match the name of your colorscheme.

NOTE: Neovim doesn't really care about whitespace in the name of the colorscheme but it does for
filenames so make sure your filename doesn't have any whitespace character.

| colorscheme name  | module name | template filename |
|:-----------------:|:-----------:|:-----------------:|
| foobar            | foobar      | foobar.lua        |
| foo-bar           | foo_bar     | foo_bar.lua       |
| foo bar           | foo_bar     | foo_bar.lua       |
| foo_bar           | foo_bar     | foo_bar.lua       |

Rename the following files:

* `colors/ghostly.lua` → `colors/<your_colorscheme>.lua`
* `lua/ghostly.lua` → `lua/<your_colorscheme>.lua`
* `lua/ghostly/colors.lua` → `lua/<your_colorscheme>/colors.lua`

NOTE: If you are on a Unix-based system (or have WSL on Windows) you can use the setup script at the root of this repo.
	   See the README for more details.
]]
--[[ Step 2: Information
In this step you will define information that helps Neovim process:

1. How users access your colorscheme;
2. How your colorscheme should be rendered.
]]
-- This is the name of your colorscheme which will be used as per |g:colors_name|.
local colorscheme_name = "ghostly"

-- WARN: users shouldn't touch this.
vim.api.nvim_set_var("colors_name", colorscheme_name)

--[[ Step 3: Colors
Here you define all of the colors that you will use for the color scheme. Each one is made up of three parts:

```lua
<color name> = { -- Give each color a distinctive name.
	'#<hex color code>', -- Hexadecimal color used in GVim/MacVim
	<8-bit color code>, -- Integer 0–255 used by terminals supporting 256 colors
	'<ANSI color name>'  -- color name used by less capable color terminals, can be 'darkred',
								  'red', 'darkgreen', 'green', 'darkyellow', 'yellow', 'darkblue',
								  'blue', 'darkmagenta', 'magenta', 'black', 'darkgrey', 'grey',
								  'white'
}
```

NOTE: See https://gist.github.com/gagbo/7943c9a71cab22b641d2904a6d59ec3a
		for a program that can generate 16-bit colors from a Hex code.

If your colors are defined correctly, the resulting colorscheme is guaranteed
to work in GVim (Windows/Linux), MacVim (MacOS), and any properly set up terminal
emulator. Type errors in the definition will show up as LSP diagnostics.

NOTE: |Replace-mode| will probably be useful here.
]]

local bg_light = { "#38384c", 238, "darkgrey" } --- @type ghostly.color.definition
local bg = { "#2b2b40", 237, "darkgrey" } --- @type ghostly.color.definition
local bg_dark = { "#242436", 236, "darkgrey" } --- @type ghostly.color.definition

local black = { "#161622", 235, "black" } --- @type ghostly.color.definition
local gray = { "#616171", 244, "gray" } --- @type ghostly.color.definition
local gray_dark = { "#535365", 239, "darkgrey" } --- @type ghostly.color.definition
local gray_darker = { "#464669", 242, "gray" } --- @type ghostly.color.definition
local gray_light = { "#6E6E7E", 250, "gray" } --- @type ghostly.color.definition
local white = { "#e1e2ea", 231, "white" } --- @type ghostly.color.definition

local tan = { "#f4c069", 221, "yellow" } --- @type ghostly.color.definition

local red = { "#d08092", 203, "red" } --- @type ghostly.color.definition
local red_dark = { "#cc7588", 124, "darkred" } --- @type ghostly.color.definition
local red_light = { "#d897a5", 205, "red" } --- @type ghostly.color.definition

local orange = { "#e5aa8a", 208, "darkyellow" } --- @type ghostly.color.definition
local orange_light = { "#f2b798", 214, "darkyellow" } --- @type ghostly.color.definition

local yellow = { "#dacd8b", 227, "yellow" } --- @type ghostly.color.definition

local green_dark = { "#89be9d", 113, "darkgreen" } --- @type ghostly.color.definition
local green = { "#99c7ab", 46, "green" } --- @type ghostly.color.definition
local green_light = { "#a6ceb5", 120, "green" } --- @type ghostly.color.definition
local turqoise = { "#87c3bf", 48, "green" } --- @type ghostly.color.definition

local blue = { "#5678c2", 63, "darkblue" } --- @type ghostly.color.definition
local cyan = { "#80bfd1", 80, "cyan" } --- @type ghostly.color.definition
local ice = { "#98aedd", 111, "cyan" } --- @type ghostly.color.definition
local teal = { "#90c5b5", 75, "blue" } --- @type ghostly.color.definition

local magenta = { "#b08cc5", 168, "magenta" } --- @type ghostly.color.definition
local magenta_dark = { "#ab85c1", 126, "darkmagenta" } --- @type ghostly.color.definition
local pink = { "#d9b1be", 219, "magenta" } --- @type ghostly.color.definition
local pink_light = { "#ddbbc6", 217, "white" } --- @type ghostly.color.definition
local purple = { "#b678c4", 171, "magenta" } --- @type ghostly.color.definition
local purple_light = { "#c28ecd", 133, "darkmagenta" } --- @type ghostly.color.definition

local red_bg = { "#503b4e", 239, "darkred" }
local orange_bg = { "#56464c", 239, "darkorange" }
local magenta_bg = { "#473e59", 239, "darkmagenta" }
local ice_bg = { "#41475f", 239, "darkice" }
local teal_bg = { "#3f4d55", 239, "darkteal" }

--[[ Step 4: highlights
You can define highlight groups like this:

```lua
<highlight group name> = {
	-- The color for the background, or `nil`
	bg = <color>,

	-- The color for the foreground, or `nil`
	fg = <color>

	-- The |guisp| value, if one is desired.
	[, sp = <color>]

	-- The |highlight-blend| value, if one is desired.
	[, blend = <integer>]

	-- Bold, italic, and more. See |attr-list| for more information.
	[, bold = true|false]
	[, default = true|false]
	[, italic = true|false]
	[, nocombine = true|false]
	[, reverse = true|false]
	[, standout = true|false]
	[, strikethrough = true|false]
	[, undercurl = true|false]
	[, underdashed = true|false]
	[, underdotted = true|false]
	[, underdouble = true|false]
	[, underline = true|false]
}
```

You can also link one highlight group to another, using whatever style you prefer:

```lua
<highlight group name> = '<highlight group name>' -- ghostly style
<highlight group name> = {link = '<highlight group name>'} -- nvim API style
```
____________________________________________________________________________

Here is an example to define `SpellBad` and then link some new group
`SpellWorse` to it:

```lua
SpellBad = { -- ← name of the highlight group
	bg = nil, -- no background
	fg = white, -- white foreground
	sp = red, -- red underline
	undercurl = true, -- squiggly line
},

SpellWorse = 'SpellBad' -- link SpellWorse to SpellBad
```

If you weren't satisfied with undercurl, and also wanted another effect, you can
add another one below 'undercurl' and it will be applied as well:

```lua
SpellBad = { -- ← name of the highlight group
	bg = nil, -- no background
	fg = white, -- white foreground
	sp = red, -- red underline
	standout = true,
	undercurl = true, -- squiggly line
},
```
____________________________________________________________________________

If you want to create a colorscheme that is responsive to the user's
'background' setting, you can specify special `light` and `dark` keys to
define how each group should be highlighted in each case.

```lua
SpellBad = {
	bg = nil,
	dark = {fg = white},
	light = {fg = black},
	sp = red,
	undercurl = true,
}
```

Whenever the user changes their 'background' setting, the settings inside of
whichever key is relevant will be loaded.
____________________________________________________________________________

You can add any custom highlight group to the standard list below but you
shouldn't remove any if you want a working colorscheme. Most of them are
described under |highlight-default|, some from |group-name|, and others from
common syntax groups.  Both help sections are good reads.
____________________________________________________________________________

If you want to inherit a specific attribute of another highlight group, you
can do the following:

```lua
-- copy `SpellRare` except `sp = red`
SpellBad = function(self)
	local definition = vim.deepcopy(self.SpellRare)
	definition.sp = red
	return definition
end
```

The function will be executed by |ghostly| and transformed into the
expected result.
____________________________________________________________________________

NOTE: |Replace-mode| will probably be useful here.

NOTE: /As long as you do not remove any highlight groups or colors/, you can
		safely ignore any highlight groups that are `link`ed to others.

		For example, programming languages almost exclusively link to the 1st
		and 2nd sections, so as long as you define everything there you will
		automatically be defining the rest of the highlights, which is one of
		the benefits of using this template.
]]
-- WARN: users shouldn't touch this.
local colorscheme = require(colorscheme_name)

--[[ These are the ones you should edit.
     TIP: you can use `colors.black`, etc to access what you defined in the other file. ]]
colorscheme.highlight_all({
	--[[ Plaintext ]]

	-- Basic styles
	Bold = { bold = true },
	Italic = { italic = true },
	Normal = { fg = white },
	Title = "Bold",
	Underlined = { fg = white, underline = true },
	Whitespace = "NonText",

	-- "Non"-text
	Conceal = "NonText",
	EndOfBuffer = "NonText",
	Ignore = { fg = gray },
	NonText = { fg = gray_dark },

	-- Literals
	Constant = { fg = ice },
	String = { fg = ice },
	Character = { fg = ice },
	Number = "Normal",
	Boolean = { fg = red_light },
	Float = "Number",

	-- Syntax
	Comment = { fg = gray, italic = true },
	Conditional = { fg = ice, italic = true },
	Debug = "WarningMsg",
	Delimiter = "Normal",
	Exception = { fg = red, bold = true },
	Function = { fg = magenta },
	Identifier = "Normal",
	Keyword = { fg = purple, italic = true },
	Label = { fg = pink, bold = true },
	Noise = "Delimiter",
	Operator = "Normal",
	Repeat = { fg = turqoise, italic = true },
	Statement = { fg = ice },
	StorageClass = { fg = orange_light, bold = true },
	Structure = { fg = blue, bold = true },
	Tag = "Keyword",
	Type = { fg = cyan },
	Typedef = { fg = cyan, italic = true },

	-- Pre-processor
	Define = { fg = green_light, nocombine = true },
	Include = { fg = green_light, nocombine = true },
	Macro = { fg = red_dark, italic = true },
	PreCondit = { fg = green_light, italic = true },
	PreProc = { fg = green_light },

	-- Special
	Special = { fg = magenta, bold = true },
	SpecialChar = { fg = red_light, italic = true },
	SpecialComment = { fg = gray, bold = true, nocombine = true },
	SpecialKey = "Character",

	-- LSP
	["@lsp.mod.constant"] = "@constant",
	["@lsp.mod.readonly"] = "@lsp.mod.constant",
	["@lsp.type.boolean"] = "@boolean",
	["@lsp.type.character"] = "@character",
	["@lsp.type.float"] = "@float",
	["@lsp.type.interface"] = "@lsp.type.type",
	["@lsp.type.namespace"] = "@namespace",
	["@lsp.type.number"] = "@number",
	["@lsp.type.operator"] = "@operator",
	["@lsp.type.string"] = "@string",

	-- treesitter
	["@constant.builtin"] = "@constant",
	["@constant.macro"] = "@define",
	["@constructor"] = "@function",
	["@function.builtin"] = "@function",
	["@method.call"] = "@function",
	["@function.macro"] = "@macro",
	["@namespace"] = "Directory",
	["@string.escape"] = "@string.special",
	["@tag"] = "Tag",
	["@tag.delimiter"] = "Comment",
	["@tag.attribute"] = "Label",
	["@text.danger"] = "ErrorMsg",
	["@text.literal"] = "mkdCode",
	["@text.uri"] = function(self)
		return { fg = self.String.fg, underline = true }
	end,
	["@text.warning"] = "WarningMsg",
	["@variable"] = "Normal",
	["@field"] = "Normal",
	["@punctuation.braces"] = "Normal",
	["@punctuation.bracket"] = "Normal",
	["@punctuation.delimiter"] = "Normal",

	--[[ Editor UI ]]

	-- Status Line
	StatusLine = { bg = bg_light },
	StatusLineNC = { fg = gray, bg = bg },
	StatusLineTerm = function(self)
		return { fg = orange, bg = self.StatusLine.bg }
	end,
	StatusLineTermNC = function(self)
		return { fg = orange, bg = self.StatusLineNC.bg }
	end,
	StatusLineNormal = { fg = green_dark },
	StatusLineInsert = { fg = ice },
	StatusLineVisual = { fg = magenta },
	StatusLineReplace = { fg = red },
	StatusLineCommand = { fg = yellow },
	StatusLineInactive = function(self)
		return { fg = self.Comment.fg }
	end,

	-- Tabline
	TabLine = function(self)
		return { fg = self.Normal.fg, bg = self.StatusLine.bg }
	end,
	TabLineFill = function(self)
		return { fg = self.TabLine.bg, bg = black }
	end,
	TabLineSel = function(self)
		return { fg = self.TabLine.fg, bg = self.Normal.bg }
	end,

	-- Line Highlighting
	CursorLine = { bg = gray_darker },
	CursorLineNr = function(self)
		return { fg = magenta_dark, bg = self.LineNr.bg }
	end,
	LineNr = { fg = gray },
	QuickFixLine = function(self)
		return { bg = self.StatusLine.bg }
	end,
	Visual = { bg = gray_dark },
	VisualNOS = { bg = gray_darker },

	-- Popups
	FloatBorder = { fg = gray_dark },
	Pmenu = { bg = bg_light },
	PmenuSbar = { bg = gray_darker },
	PmenuSel = { bg = gray },
	PmenuThumb = { bg = white },
	WildMenu = "PmenuSel",

	-- Folds
	FoldColumn = { bg = gray_darker, bold = true },
	Folded = { fg = black, bg = purple_light, italic = true },

	-- Diffs
	DiffAdd = { fg = black, bg = green_dark },
	diffAdded = "DiffAdd",
	DiffChange = {},
	DiffDelete = function(self)
		return { fg = self.DiffAdd.fg, bg = red }
	end,
	DiffText = function(self)
		return { fg = self.DiffAdd.fg, bg = yellow }
	end,
	diffRemoved = "DiffDelete",

	-- Searching
	IncSearch = { reverse = true },
	MatchParen = { fg = green, bold = true, underline = true },
	Search = { sp = white, underline = true },

	-- Spelling
	SpellBad = { sp = red, undercurl = true },
	SpellCap = { sp = yellow, undercurl = true },
	SpellLocal = { sp = green, undercurl = true },
	SpellRare = { sp = orange, undercurl = true },

	-- Conditional Column Highlighting
	ColorColumn = { reverse = true },
	SignColumn = {},

	-- Messages
	Error = { fg = white, bg = red_dark, bold = true },
	ErrorMsg = { fg = red, bold = true },
	ModeMsg = { fg = yellow },
	Question = { fg = blue, underline = true },
	Todo = { fg = black, bg = blue, bold = true },
	WarningMsg = { fg = orange, bold = true },
	Hint = { fg = magenta, italic = true },
	Info = { fg = ice, italic = true },

	-- Diagnostics
	debugBreakpoint = "ErrorMsg",
	debugPC = "ColorColumn",

	DiagnosticOk = { fg = teal },
	DiagnosticFloatingOk = "DiagnosticError",
	DiagnosticSignOk = "DiagnosticFloatingError",
	DiagnosticVirtualTextOk = function(self)
		return { fg = self.DiagnosticOk.fg, bg = teal_bg }
	end,

	DiagnosticError = "ErrorMsg",
	DiagnosticFloatingError = "DiagnosticError",
	DiagnosticSignError = "DiagnosticFloatingError",
	DiagnosticVirtualTextError = function(self)
		return { fg = self.DiagnosticError.fg, bg = red_bg }
	end,

	DiagnosticWarn = "WarningMsg",
	DiagnosticFloatingWarn = "DiagnosticWarn",
	DiagnosticSignWarn = "DiagnosticFloatingWarn",
	DiagnosticVirtualTextWarn = function(self)
		return { fg = self.DiagnosticWarn.fg, bg = orange_bg }
	end,

	DiagnosticHint = "Hint",
	DiagnosticFloatingHint = "DiagnosticHint",
	DiagnosticSignHint = "DiagnosticFloatingHint",
	DiagnosticVirtualTextHint = function(self)
		return { fg = self.DiagnosticHint.fg, bg = magenta_bg }
	end,

	DiagnosticInfo = "Info",
	DiagnosticFloatingInfo = "DiagnosticInfo",
	DiagnosticSignInfo = "DiagnosticFloatingInfo",
	DiagnosticVirtualTextInfo = function(self)
		return { fg = self.DiagnosticInfo.fg, bg = ice_bg }
	end,

	DiagnosticUnderlineOk = { sp = teal, undercurl = true },
	DiagnosticUnderlineError = { sp = red, undercurl = true },
	DiagnosticUnderlineHint = { sp = magenta, undercurl = true },
	DiagnosticUnderlineInfo = { sp = ice, undercurl = true },
	DiagnosticUnderlineWarn = { sp = orange, undercurl = true },

	-- Cursor
	Cursor = { reverse = true },
	CursorIM = "Cursor",
	CursorColumn = { bg = gray_dark },

	-- Codelens
	LspCodeLens = { fg = gray_light, italic = true },

	-- Misc
	Directory = { fg = ice, bold = true },
	VertSplit = { fg = bg_light },

	--[[ Programming Languages
		Everything in this section is OPTIONAL. Feel free to remove everything
		here if you don't want to define it, or add more if there's something
		missing. ]]

	-- Coq
	coqConstructor = "Constant",
	coqDefBinderType = "coqDefType",
	coqDefContents1 = "coqConstructor",
	coqDefType = "Typedef",
	coqIndBinderTerm = "coqDefBinderType",
	coqIndConstructor = "Delimiter",
	coqIndTerm = "Type",
	coqKwd = "Keyword",
	coqKwdParen = "Function",
	coqProofDelim = "coqVernacCmd",
	coqProofDot = "coqTermPunctuation",
	coqProofPunctuation = "coqTermPunctuation",
	coqRequire = "Include",
	coqTactic = "Operator",
	coqTermPunctuation = "Delimiter",
	coqVernacCmd = "Statement",
	coqVernacPunctuation = "coqTermPunctuation",

	-- C++
	cppSTLexception = "Exception",
	cppSTLnamespace = "Directory",

	-- Crontab
	crontabDay = "StorageClass",
	crontabDow = "String",
	crontabHr = "Number",
	crontabMin = "Float",
	crontabMnth = "Structure",

	-- C#
	csBraces = "Delimiter",
	csClass = "Structure",
	csClassType = "Type",
	csContextualStatement = "Conditional",
	csEndColon = "Delimiter",
	csGeneric = "Typedef",
	csInterpolation = "Include",
	csInterpolationDelimiter = "SpecialChar",
	csLogicSymbols = "Operator",
	csModifier = "Keyword",
	csNew = "Operator",
	csNewType = "Type",
	csParens = "Delimiter",
	csPreCondit = "PreProc",
	csQuote = "Delimiter",
	csRepeat = "Repeat",
	csStorage = "StorageClass",
	csUnspecifiedStatement = "Statement",
	csXmlTag = "Define",
	csXmlTagName = "Define",

	-- CSS/SCSS
	cssAtRule = "PreCondit",
	cssAttr = "Keyword",
	cssAttrComma = "Noise",
	cssAttrRegion = "Keyword",
	cssBraces = "Delimiter",
	cssClassName = "Identifier",
	cssClassNameDot = "Noise",
	cssFlexibleBoxAttr = "cssAttr",
	cssFunctionComma = "Noise",
	cssImportant = "Exception",
	cssNoise = "Noise",
	cssProp = "Label",
	cssPseudoClass = "Special",
	cssPseudoClassId = "cssSelectorOp",
	cssSelectorOp = "Operator",
	cssTagName = "Structure",
	cssUnitDecorators = "Type",

	-- dart
	dartLibrary = "Statement",

	-- dos INI
	dosiniHeader = "Title",
	dosiniLabel = "Label",

	-- dot
	dotKeyChar = "Character",
	dotType = "Type",

	-- Git
	gitcommitHeader = "SpecialComment",
	gitcommitDiscardedFile = "gitcommitSelectedFile",
	gitcommitOverFlow = "Error",
	gitcommitSelectedFile = "Directory",
	gitcommitSummary = "Title",
	gitcommitUntrackedFile = "gitcommitSelectedFile",
	gitconfigAssignment = "String",
	gitconfigEscape = "SpecialChar",
	gitconfigNone = "Operator",
	gitconfigSection = "Structure",
	gitconfigVariable = "Label",
	gitrebaseBreak = "Keyword",
	gitrebaseCommit = "Tag",
	gitrebaseDrop = "Exception",
	gitrebaseEdit = "Define",
	gitrebaseExec = "PreProc",
	gitrebaseFixup = "gitrebaseSquash",
	gitrebaseMerge = "PreProc",
	gitrebasePick = "Include",
	gitrebaseReset = "gitrebaseLabel",
	gitrebaseReword = "gitrebasePick",
	gitrebaseSquash = "Macro",
	gitrebaseSummary = "Title",

	-- Go
	goBlock = "Delimiter",
	goBoolean = "Boolean",
	goBuiltins = "Function",
	goField = "Normal",
	goFloat = "Float",
	goFormatSpecifier = "Character",
	goFunction = "Normal",
	goFunctionCall = "Function",
	goFunctionReturn = {},
	goImport = "Include",
	goMethodCall = "goFunctionCall",
	goPackage = "goStatement",
	goParamType = "goReceiverType",
	goPointerOperator = "StorageClass",
	goPredefinedIdentifiers = "Constant",
	goReceiver = "goBlock",
	goReceiverType = "goTypeName",
	goSimpleParams = "goBlock",
	goStatement = "Keyword",
	goType = "Type",
	goTypeConstructor = "goFunction",
	goTypeName = "Type",
	goVarAssign = "Identifier",
	goVarDefs = "goVarAssign",

	-- Help
	helpCommand = "Statement",
	helpHeader = "Label",
	helpHeadline = "Title",
	helpHyperTextJump = "Tag",
	helpHyperTextEntry = "Tag",
	helpExample = "Statement",
	helpNote = "DiagnosticHint",
	helpOption = "Keyword",
	helpSectionDelim = "Delimiter",

	-- HTML
	htmlArg = "Label",
	htmlBold = "Bold",
	htmlTitle = "htmlBold",
	htmlEndTag = "htmlTag",
	htmlH1 = "markdownH1",
	htmlH2 = "markdownH2",
	htmlH3 = "markdownH3",
	htmlH4 = "markdownH4",
	htmlH5 = "markdownH5",
	htmlH6 = "markdownH6",
	htmlItalic = "Italic",
	htmlSpecialTagName = "Keyword",
	htmlTag = "Special",
	htmlTagN = "Typedef",
	htmlTagName = "Type",

	-- i3config
	i3ConfigAction = "Function",
	i3ConfigAssignKeyword = "Keyword",
	i3ConfigAssign = "i3ConfigVariable",
	i3ConfigBind = "@text",
	i3ConfigBindKeyword = "Keyword",
	i3ConfigBlockKeyword = "Keyword",
	i3ConfigBorderKeyword = "Keyword",
	i3ConfigBorderStyleKeyword = "Keyword",
	i3ConfigClientColorKeyword = "Keyword",
	i3ConfigCommandKeyword = "Keyword",
	i3ConfigDelayUrgencyKeyword = "Keyword",
	i3ConfigDrawingMarksKeyword = "Keyword",
	i3ConfigEdgeKeyword = "Keyword",
	i3ConfigExec = "Statement",
	i3ConfigExecKeyword = "Keyword",
	i3ConfigFloating = "Keyword",
	i3ConfigFocusFollowsMouseKeyword = "Keyword",
	i3ConfigFocusOnActivationKeyword = "Keyword",
	i3ConfigFocusWrappingKeyword = "Keyword",
	i3ConfigFontContent = "String",
	i3ConfigFontKeyword = "Keyword",
	i3ConfigFontSeparator = "Delimiter",
	i3ConfigFontSize = "i3ConfigNumber",
	i3ConfigForceXineramaKeyword = "Keyword",
	i3ConfigGapStyleKeyword = "Keyword",
	i3ConfigInitialize = "String",
	i3ConfigInitializeKeyword = "Keyword",
	i3ConfigInterprocessKeyword = "Keyword",
	i3ConfigLayoutKeyword = "Keyword",
	i3ConfigMouseWarpingKeyword = "Keyword",
	i3ConfigNoFocusKeyword = "Keyword",
	i3ConfigNoStartupId = "i3ConfigBindArgument",
	i3ConfigNumber = "Number",
	i3ConfigOrientationKeyword = "Keyword",
	i3ConfigPopupOnFullscreenKeyword = "Keyword",
	i3ConfigResourceKeyword = "Keyword",
	i3ConfigSmartBorderKeyword = "Keyword",
	i3ConfigSmartGapKeyword = "Keyword",
	i3ConfigString = "String",
	i3ConfigTitleAlignKeyword = "Keyword",
	i3ConfigVariable = "Define",
	i3ConfigVariableAndModifier = "Character",
	i3ConfigVariableModifier = "Operator",
	i3ConfigWindowCommandSpecial = "htmlTag",
	i3ConfigWorkspaceKeyword = "Keyword",

	-- Java
	javaClassDecl = "Structure",

	-- JavaScript
	jsFuncBlock = "Function",
	jsObjectKey = "Type",
	jsReturn = "Keyword",
	jsVariableDef = "Identifier",

	-- JSON
	jsonBraces = "luaBraces",
	jsonEscape = "SpecialChar",
	jsonKeywordMatch = "Operator",
	jsonNull = "Constant",
	jsonQuote = "Delimiter",
	jsonString = "String",
	jsonStringSQError = "Exception",

	-- Lua
	["@lsp.type.function.lua"] = {},
	["@lsp.type.keyword.lua"] = "SpecialComment",
	["@lsp.typemod.function.declaration.lua"] = "@lsp.type.function",
	["@lsp.typemod.variable.defaultLibrary.lua"] = "@lsp.type.class.lua",
	["@lsp.typemod.variable.definition.lua"] = "@punctuation",
	luaBraces = "Delimiter",
	luaBrackets = "Delimiter",
	luaBuiltin = "Keyword",
	luaComma = "Delimiter",
	luaDocTag = "SpecialComment",
	luaFuncArgName = "Identifier",
	luaFuncCall = "Function",
	luaFuncId = "luaNoise",
	luaFuncKeyword = "Type",
	luaFuncName = "Function",
	luaFuncParens = "Delimiter",
	luaFuncTable = "Structure",
	luaFunction = "Keyword",
	luaGotoLabel = "luaLabel",
	luaIn = "luaRepeat",
	luaLocal = "Keyword",
	luaNoise = "Delimiter",
	luaParens = "Delimiter",
	luaSpecialTable = "Structure",
	luaSpecialValue = "Function",
	luaStatement = "Keyword",
	luaStringLongTag = function(self)
		local delimiter = self.Delimiter
		return { bg = delimiter.bg, fg = delimiter.fg, italic = true }
	end,

	-- Make
	makeCommands = "Statment",
	makeSpecTarget = "Type",

	-- Man
	manHeader = "markdownH1",
	manOptionDesc = "Special",
	manReference = "@text.uri",
	manSectionHeading = "markdownH2",
	manSubHeading = "markdownH3",
	manUnderline = "@text.literal",

	-- Markdown
	markdownCode = "mkdCode",
	markdownCodeDelimiter = "mkdCodeDelimiter",
	markdownH1 = { fg = red, bold = true },
	markdownH2 = { fg = orange, bold = true },
	markdownH3 = { fg = yellow, bold = true },
	markdownH4 = { fg = green_dark, bold = true },
	markdownH5 = { fg = cyan, bold = true },
	markdownH6 = { fg = purple_light, bold = true },
	markdownLinkDelimiter = "mkdDelimiter",
	markdownLinkText = "mkdLink",
	markdownLinkTextDelimiter = "markdownLinkDelimiter",
	markdownUrl = "mkdURL",
	mkdBold = "Ignore",
	mkdBoldItalic = "mkdBold",
	mkdCode = "Statement",
	mkdCodeDelimiter = "mkdBold",
	mkdCodeEnd = "mkdCodeStart",
	mkdCodeStart = "mkdCodeDelimiter",
	mkdDelimiter = "Delimiter",
	mkdHeading = "Delimiter",
	mkdItalic = "mkdBold",
	mkdLineBreak = "NonText",
	mkdLink = "Underlined",
	mkdListItem = "Special",
	mkdRule = function(self)
		return { fg = self.Ignore.fg, sp = self.Delimiter.fg, underline = true }
	end,
	mkdURL = "htmlString",

	-- PlantUML
	plantumlArrowLR = "Statement",
	plantumlColonLine = {},
	plantumlMindmap = "Label",
	plantumlMindmap2 = "Label",

	-- Rust
	["@lsp.mod.callable.rust"] = "@lsp.type.function",
	["@lsp.type.builtinType.rust"] = "@lsp.type.type",
	["@lsp.type.character.rust"] = {},
	["@lsp.type.decorator.rust"] = "@preproc",
	["@lsp.type.derive.rust"] = "@macro",
	["@lsp.type.enumMember.rust"] = {},
	["@lsp.type.macro.rust"] = {},
	["@lsp.type.operator.rust"] = {},
	["@lsp.type.selfKeyword.rust"] = "@keyword",
	["@lsp.type.selfTypeKeyword.rust"] = "@lsp.type.typeAlias.rust",
	["@lsp.type.string.rust"] = {},
	["@lsp.type.typeAlias.rust"] = "@type.definition",
	["@lsp.typemod.character.injected.rust"] = "@lsp.type.character",
	["@lsp.typemod.deriveHelper.attribute.rust"] = "@lsp.type.decorator.rust",
	["@lsp.typemod.keyword.injected.rust"] = "@keyword",
	["@lsp.typemod.macro.injected.rust"] = "@macro",
	["@lsp.typemod.operator.injected.rust"] = "@operator",
	["@lsp.typemod.string.injected.rust"] = "@lsp.type.string",
	rustAssert = "Debug",
	rustCharacterDelimiter = "rustNoise",
	rustIdentifier = "Identifier",
	rustStaticLifetime = "rustStorage",
	rustStringDelimiter = "rustNoise",

	-- Python
	pythonBrackets = "Delimiter",
	pythonBuiltinFunc = "Operator",
	pythonBuiltinObj = "Type",
	pythonBuiltinType = "Type",
	pythonClass = "Structure",
	pythonClassParameters = "pythonParameters",
	pythonDecorator = "PreProc",
	pythonDottedName = "Identifier",
	pythonError = "Error",
	pythonException = "Exception",
	pythonInclude = "Include",
	pythonIndentError = "pythonError",
	pythonLambdaExpr = "pythonOperator",
	pythonOperator = "Operator",
	pythonParam = "Identifier",
	pythonParameters = "Delimiter",
	pythonSelf = "Statement",
	pythonSpaceError = "pythonError",
	pythonStatement = "Statement",

	-- Razor
	razorCode = "PreProc",
	razorcsLHSMemberAccessOperator = "Noise",
	razorcsRHSMemberAccessOperator = "razorcsLHSMemberAccessOperator",
	razorcsStringDelimiter = "razorhtmlValueDelimiter",
	razorcsTypeNullable = "Special",
	razorcsUnaryOperatorKeyword = "Operator",
	razorDelimiter = "Delimiter",
	razorEventAttribute = "PreCondit",
	razorFor = "razorIf",
	razorhtmlAttribute = "htmlArg",
	razorhtmlAttributeOperator = "Operator",
	razorhtmlTag = "htmlTag",
	razorhtmlValueDelimiter = "Delimiter",
	razorIf = "PreCondit",
	razorImplicitExpression = "PreProc",
	razorLine = "Constant",
	razorUsing = "Include",

	-- Ruby
	rubyClass = "Structure",
	rubyDefine = "Define",
	rubyInterpolationDelimiter = "Delimiter",

	-- Scala
	scalaKeyword = "Keyword",
	scalaNameDefinition = "Identifier",

	-- SCSS
	scssAmpersand = "Special",
	scssAttribute = "Noise",
	scssBoolean = "Boolean",
	scssDefault = "Keyword",
	scssDefinition = "PreProc",
	scssElse = "scssIf",
	scssIf = "PreCondit",
	scssInclude = "Include",
	scssMixinName = function(self)
		local definition = self.cssClassName
		return { bg = definition.bg, fg = definition.fg, italic = true }
	end,
	scssSelectorChar = "Delimiter",
	scssSelectorName = "Identifier",
	scssVariable = "Define",
	scssVariableAssignment = "Operator",

	-- shell
	shDerefSimple = "SpecialChar",
	shFunctionKey = "Function",
	shLoop = "Repeat",
	shParen = "Delimiter",
	shQuote = "Delimiter",
	shSet = "Statement",
	shTestOpr = "Debug",

	-- SQL
	sqlKeyword = "Keyword",
	sqlParen = "Delimiter",
	sqlSpecial = "Constant",
	sqlStatement = "Statement",
	sqlParenFunc = "Function",

	-- Solidity
	solBuiltinType = "Type",
	solContract = "Typedef",
	solContractName = "Function",

	-- TeX
	texMathRegion = "Number",
	texMathSub = "Number",
	texMathSuper = "Number",
	texMathRegionX = "Number",
	texMathRegionXX = "Number",

	-- TOML
	tomlComment = "Comment",
	tomlDate = "Special",
	tomlFloat = "Float",
	tomlKey = "Label",
	tomlTable = "Structure",

	-- VimScript
	vimCmdSep = "Delimiter",
	vimFunction = "Function",
	vimFgBgAttrib = "Constant",
	vimHiCterm = "Label",
	vimHiCtermFgBg = "vimHiCterm",
	vimHiGroup = "Typedef",
	vimHiGui = "vimHiCterm",
	vimHiGuiFgBg = "vimHiGui",
	vimHiKeyList = "Operator",
	vimIsCommand = "Identifier",
	vimOption = "Keyword",
	vimScriptDelim = "Ignore",
	vimSet = "String",
	vimSetEqual = "Operator",
	vimSetSep = "Delimiter",
	vimUserFunc = "vimFunction",

	-- XML
	xmlAttrib = "htmlArg",
	xmlEndTag = "xmlTag",
	xmlEqual = "Operator",
	xmlTag = "htmlTag",
	xmlTagName = "htmlTagName",

	-- XXD
	xxdAddress = "Label",
	xxdAscii = "Character",
	xxdDot = "Ignore",
	xxdSep = "Delimiter",

	-- YAML
	yamlInline = "Delimiter",
	yamlKey = "Label",

	--[[ Plugins
		Everything in this section is OPTIONAL. Feel free to remove everything
		here if you don't want to define it, or add more if there's something
		missing. ]]

	-- ALE
	ALEErrorSign = "DiagnosticSignError",
	ALEWarningSign = "DiagnosticSignWarn",

	-- barbar.nvim
	BufferAlternate = function(self)
		return { fg = self.BufferVisible.fg, bg = gray_dark }
	end,
	BufferAlternateERROR = function(self)
		return { fg = self.ErrorMsg.fg, bg = gray_dark }
	end,
	BufferAlternateHINT = function(self)
		return { fg = self.DiagnosticFloatingHint.fg, bg = gray_dark }
	end,
	BufferAlternateIndex = function(self)
		return { fg = self.Number.fg, bg = gray_dark }
	end,
	BufferAlternateINFO = function(self)
		return { fg = self.DiagnosticFloatingInfo.fg, bg = gray_dark }
	end,
	BufferAlternateMod = function(self)
		return { fg = self.BufferVisibleMod.fg, bg = gray_dark, bold = true }
	end,
	BufferAlternateSign = { fg = teal, bg = gray_dark },
	BufferAlternateTarget = function(self)
		return { fg = self.BufferAlternateSign.fg, bg = gray_dark, italic = true }
	end,
	BufferAlternateWARN = function(self)
		return { fg = self.WarningMsg.fg, bg = gray_dark }
	end,

	BufferCurrent = "TabLineSel",
	BufferCurrentERROR = function(self)
		return { fg = self.ErrorMsg.fg, bg = self.BufferCurrent.bg }
	end,
	BufferCurrentHINT = function(self)
		return { fg = self.DiagnosticFloatingHint.fg, bg = self.BufferCurrent.bg }
	end,
	BufferCurrentIndex = function(self)
		return { fg = self.Number.fg, bg = self.BufferCurrent.bg }
	end,
	BufferCurrentINFO = function(self)
		return { fg = self.DiagnosticFloatingInfo.fg, bg = self.BufferCurrent.bg }
	end,
	BufferCurrentMod = { fg = tan, bg = black, bold = true },
	BufferCurrentSign = "DiagnosticFloatingHint",
	BufferCurrentTarget = "BufferCurrentSign",
	BufferCurrentWARN = function(self)
		return { fg = self.WarningMsg.fg, bg = self.BufferCurrent.bg }
	end,

	BufferInactive = "BufferVisible",
	BufferInactiveERROR = function(self)
		return { fg = self.ErrorMsg.fg, bg = self.BufferInactive.bg }
	end,
	BufferInactiveHINT = function(self)
		return { fg = self.DiagnosticFloatingHint.fg, bg = self.BufferInactive.bg }
	end,
	BufferInactiveIndex = function(self)
		return { fg = self.Number.fg, bg = self.BufferInactive.bg }
	end,
	BufferInactiveINFO = function(self)
		return { fg = self.DiagnosticFloatingInfo.fg, bg = self.BufferInactive.bg }
	end,
	BufferInactiveMod = "BufferVisibleMod",
	BufferInactiveSign = "BufferVisibleSign",
	BufferInactiveTarget = "BufferVisibleTarget",
	BufferInactiveWARN = function(self)
		return { fg = self.WarningMsg.fg, bg = self.BufferInactive.bg }
	end,

	BufferTabpages = { bold = true },
	BufferTabpageFill = "TabLineFill",

	BufferVisible = "TabLine",
	BufferVisibleERROR = function(self)
		return { fg = self.ErrorMsg.fg, bg = self.BufferVisible.bg }
	end,
	BufferVisibleHINT = function(self)
		return { fg = self.DiagnosticFloatingHint.fg, bg = self.BufferVisible.bg }
	end,
	BufferVisibleIndex = function(self)
		return { fg = self.Number.fg, bg = self.BufferVisible.bg }
	end,
	BufferVisibleINFO = function(self)
		return { fg = self.DiagnosticFloatingInfo.fg, bg = self.BufferVisible.bg }
	end,
	BufferVisibleMod = function(self)
		return { fg = white, bg = self.BufferVisible.bg, italic = true }
	end,
	BufferVisibleSign = function(self)
		local definition = self.BufferVisibleMod
		return { fg = definition.fg, bg = definition.bg, bold = true }
	end,
	BufferVisibleTarget = "BufferVisibleSign",
	BufferVisibleWARN = function(self)
		return { fg = self.WarningMsg.fg, bg = self.BufferVisible.bg }
	end,

	-- coc.nvim
	CocErrorHighlight = "DiagnosticUnderlineError",
	CocErrorSign = "DiagnosticSignError",
	CocHintHighlight = "DiagnosticUnderlineHint",
	CocHintSign = "DiagnosticSignHint",
	CocInfoHighlight = "DiagnosticUnderlineInfo",
	CocInfoSign = "DiagnosticSignInfo",
	CocWarningHighlight = "DiagnosticUnderlineWarn",
	CocWarningSign = "DiagnosticSignWarn",

	-- Fern
	FernBranchText = "Directory",

	-- gitsigns.nvim
	GitSignsAdd = "GitGutterAdd",
	GitSignsChange = "GitGutterChange",
	GitSignsDelete = "GitGutterDelete",

	-- indent-blankline.nvim
	IndentBlanklineChar = function(self)
		local definition = vim.deepcopy(self.Whitespace)
		definition.nocombine = true
		return definition
	end,
	IndentBlanklineSpaceChar = "IndentBlanklineChar",

	-- lazy.nvim
	LazyButton = "TabLine",
	LazyButtonActive = "TabLineSel",
	LazyCommit = "Number",
	LazyCommitIssue = "LazyUrl",
	LazyCommitType = "Type",
	LazyDir = "Directory",
	LazyH1 = "markdownH1",
	LazyH2 = "markdownH2",
	LazyProp = "@field",
	LazyReasonEvent = "Repeat",
	LazyReasonFt = "Conditional",
	LazyReasonImport = "Function",
	LazyReasonKeys = "String",
	LazyReasonPlugin = "Label",
	LazyReasonSource = "Include",
	LazyReasonStart = "Constant",
	LazySpecial = "Special",
	LazyTaskOutput = "Statement",
	LazyUrl = "Underlined",

	-- LSPSaga
	DefinitionCount = "Number",
	DefinitionIcon = "Special",
	ReferencesCount = "Number",
	ReferencesIcon = "DefinitionIcon",
	TargetFileName = "Directory",
	TargetWord = "Title",

	-- mini.nvim
	MiniJump = "MiniJump2dSpot",

	-- NERDTree
	NERDTreeCWD = "Label",
	NERDTreeUp = "Operator",
	NERDTreeDir = "Directory",
	NERDTreeDirSlash = "Delimiter",
	NERDTreeOpenable = "NERDTreeDir",
	NERDTreeClosable = "NERDTreeOpenable",
	NERDTreeExecFile = "Function",
	NERDTreeLinkTarget = "Tag",

	-- nvim-cmp
	CmpItemAbbr = { fg = white },
	CmpItemAbbrMatch = { fg = magenta_dark },
	CmpItemAbbrMatchFuzzy = { fg = magenta_dark, nocombine = true, underline = true },
	CmpItemKindClass = "CmpItemKindStruct",
	CmpItemKindsp = "Label",
	CmpItemKindConstant = "Constant",
	CmpItemKindConstructor = "CmpItemKindMethod",
	CmpItemKind = "Type",
	CmpItemKindEnum = "CmpItemKindStruct",
	CmpItemKindEnumMember = "CmpItemKindConstant",
	CmpItemKindEvent = "Repeat",
	CmpItemKindField = "Identifier",
	CmpItemKindFile = "Directory",
	CmpItemKindFolder = "CmpItemKindFile",
	CmpItemKindFunction = "Function",
	CmpItemKindInterface = "Type",
	CmpItemKindKeyword = "Keyword",
	CmpItemKindMethod = "CmpItemKindFunction",
	CmpItemKindModule = "Include",
	CmpItemKindOperator = "Operator",
	CmpItemKindProperty = "CmpItemKindField",
	CmpItemKindReference = "StorageClass",
	CmpItemKindSnippet = "Special",
	CmpItemKindStruct = "Structure",
	CmpItemKindText = "String",
	CmpItemKindTypeParameter = "Typedef",
	CmpItemKindUnit = "CmpItemKindStruct",
	CmpItemKindValue = "CmpItemKindConstant",
	CmpItemKindVariable = "Identifier",

	-- nvim-tree
	NvimTreeGitDeleted = function(self)
		return { fg = self.DiffDelete.bg }
	end,
	NvimTreeGitDirty = { fg = orange },
	NvimTreeGitIgnored = "Ignore",
	NvimTreeGitMerge = "NvimTreeGitRenamed",
	NvimTreeGitNew = function(self)
		return { fg = self.DiffAdd.bg }
	end,
	NvimTreeGitRenamed = function(self)
		return { fg = self.DiffChange.bg }
	end,
	NvimTreeGitStaged = { fg = cyan },

	-- packer.nvim
	packerFail = "ErrorMsg",
	packerHash = "Number",
	packerPackageNotLoaded = "Ignore",
	packerStatusFail = "Statement",
	packerStatusSuccess = "packerStatusFail",
	packerSuccess = function(self)
		local definition = vim.deepcopy(self.packerFail)
		definition.bg = nil
		definition.fg = green
		return definition
	end,

	-- symbols-outline.nvim
	FocusedSymbol = {},
	SymbolsOutlineConnector = "Delimiter",

	-- todo-comments.nvim
	TodoFgFIX = function(self)
		return { fg = self.ErrorMsg.fg }
	end,
	TodoFgHACK = { fg = yellow },
	TodoFgNOTE = { fg = green_dark },
	TodoFgPERF = { fg = magenta },
	TodoFgTODO = function(self)
		return { fg = self.Todo.bg, italic = true }
	end,
	TodoFgWARN = function(self)
		return { fg = self.WarningMsg.fg }
	end,
	TodoBgFIX = function(self)
		return {
			fg = black,
			bg = self.TodoFgFIX.fg,
			bold = true,
			italic = true,
			nocombine = true,
		}
	end,
	TodoBgHACK = function(self)
		return {
			fg = black,
			bg = self.TodoFgHACK.fg,
			bold = true,
			italic = true,
			nocombine = true,
		}
	end,
	TodoBgNOTE = function(self)
		return {
			fg = black,
			bg = self.TodoFgNOTE.fg,
			bold = true,
			italic = true,
			nocombine = true,
		}
	end,
	TodoBgPERF = function(self)
		return {
			fg = black,
			bg = self.TodoFgPERF.fg,
			bold = true,
			italic = true,
			nocombine = true,
		}
	end,
	TodoBgTODO = function(self)
		return {
			fg = black,
			bg = self.TodoFgTODO.fg,
			bold = true,
			italic = true,
			nocombine = true,
		}
	end,
	TodoBgWARN = function(self)
		return {
			fg = black,
			bg = self.TodoFgWARN.fg,
			bold = true,
			italic = true,
			nocombine = true,
		}
	end,

	TodoSignFIX = "TodoFgFIX",
	TodoSignHACK = "TodoFgHACK",
	TodoSignNOTE = "TodoFgNOTE",
	TodoSignPERF = "TodoFgPERF",
	TodoSignTODO = "TodoFgTODO",
	TodoSignWARN = "TodoFgWARN",

	-- trouble.nvim
	TroubleCount = function(self)
		local definition = vim.deepcopy(self.Number)
		definition.underline = true
		return definition
	end,

	-- vim-easymotion
	EasyMotion = "IncSearch",

	-- vim-gitgutter
	GitGutterAdd = { fg = green },
	GitGutterChange = { fg = yellow },
	GitGutterDelete = { fg = red },
	GitGutterChangeDelete = { fg = orange },

	-- vim-indent-guides
	IndentGuidesOdd = { bg = gray_darker },
	IndentGuidesEven = { bg = gray },

	-- vim-jumpmotion
	JumpMotion = "EasyMotion",

	-- vim-sandwhich
	OperatorSandwichChange = "DiffText",

	-- vim-signify
	SignifySignAdd = "GitGutterAdd",
	SignifySignChange = "GitGutterChange",
	SignifySignDelete = "GitGutterDelete",
	SignifySignChangeDelete = "GitGutterChangeDelete",

	-- Leap.nvim
	LeapMatch = { fg = white, bold = true, nocombine = true },
	LeapLabelPrimary = { fg = red, bold = true, nocombine = true },
	LeapLabelSecondary = { fg = ice, bold = true, nocombine = true },

	-- HLargs
	HLargs = { fg = teal },

	-- Telescope
	TelescopeNormal = "Normal",
	TelescopePromptCounter = "Comment",
	TelescopeSelection = { fg = white, bg = bg_light, italic = true },
	TelescopeSelectionCaret = { fg = white, bg = bg_light, bold = true },
	TelescopeMultiSelection = { fg = bg_light, italic = true },
	TelescopeBorder = "Normal",
	TelescopeMatching = { fg = magenta_dark },
	TelescopePromptPrefix = { fg = magenta_dark, bold = true },
	TelescopePromptNormal = { bg = bg_light },
	TelescopePromptBorder = { bg = bg_light },
	TelescopePromptTitle = { fg = bg_light, bg = bg_light },
	TelescopePreviewBorder = { bg = bg_dark },
	TelescopePreviewTitle = { fg = bg_dark, bg = bg_dark },
	TelescopePreviewNormal = { bg = bg_dark },
	TelescopeResultsBorder = { bg = bg_dark },
	TelescopeResultsTitle = { fg = bg_dark, bg = bg_dark },
	TelescopeResultsNormal = { bg = bg_dark },

	-- scrollbar.nvim
	ScrollbarHandle = { bg = bg_light },
	ScrollbarError = function(self)
		return { fg = self.Error.fg }
	end,
	ScrollbarErrorHandle = function(self)
		return { fg = self.ScrollbarError.fg, bg = self.ScrollbarHandle.bg }
	end,
	ScrollbarGitDelete = function(self)
		return { fg = self.GitGutterDelete.fg }
	end,
	ScrollbarGitDeleteHandle = function(self)
		return { fg = self.ScrollbarGitDelete.fg, bg = self.ScrollbarHandle.bg }
	end,
	ScrollbarHint = function(self)
		return { fg = self.Hint.fg }
	end,
	ScrollbarHintHandle = function(self)
		return { fg = self.ScrollbarHint.fg, bg = self.ScrollbarHandle.bg }
	end,
	ScrollbarGitAdd = function(self)
		return { fg = self.GitGutterAdd.fg }
	end,
	ScrollbarGitAddHandle = function(self)
		return { fg = self.ScrollbarGitAdd.fg, bg = self.ScrollbarHandle.bg }
	end,
	ScrollbarInfo = function(self)
		return { fg = self.Info.fg }
	end,
	ScrollbarInfoHandle = function(self)
		return { fg = self.ScrollbarInfo.fg, bg = self.ScrollbarHandle.bg }
	end,
	ScrollbarWarn = function(self)
		return { fg = self.WarningMsg.fg }
	end,
	ScrollbarWarnHandle = function(self)
		return { fg = self.ScrollbarWarn.fg, bg = self.ScrollbarHandle.bg }
	end,
	ScrollbarGitChange = function(self)
		return { fg = self.GitGutterChange.fg }
	end,
	ScrollbarGitChangeHandle = function(self)
		return { fg = self.ScrollbarGitChange.fg, bg = self.ScrollbarHandle.bg }
	end,
	ScrollbarSearch = { fg = pink_light },
	ScrollbarSearchHandle = function(self)
		return { fg = self.ScrollbarSearch.fg, bg = self.ScrollbarHandle.bg }
	end,
	ScrollbarCursor = function(self)
		return { fg = self.Normal.fg }
	end,
	ScrollbarCursorHandle = function(self)
		return { fg = self.ScrollbarCursor.fg, bg = self.ScrollbarHandle.bg }
	end,
	ScrollbarMisc = "ScrollbarCursor",
	ScrollbarMiscHandle = "ScrollbarCursorHandle",

	-- Lazygit.nvim
	LazyGitFloat = { bg = bg_dark },
	LazyGitBorder = { bg = bg_dark },

	-- Searchbox.nvim
	SearchBoxMatch = { bg = magenta, fg = bg },

	-- nvim-notify
	NotifyERRORBorder = { fg = red },
	NotifyWARNBorder = { fg = orange_light },
	NotifyINFOBorder = { fg = green_light },
	NotifyDEBUGBorder = { fg = magenta },
	NotifyTRACEBorder = { fg = ice },
	NotifyERRORIcon = { fg = red },
	NotifyWARNIcon = { fg = orange_light },
	NotifyINFOIcon = { fg = green_light },
	NotifyDEBUGIcon = { fg = magenta },
	NotifyTRACEIcon = { fg = ice },
	NotifyERRORTitle = { fg = red },
	NotifyWARNTitle = { fg = orange_light },
	NotifyINFOTitle = { fg = green_light },
	NotifyDEBUGTitle = { fg = magenta },
	NotifyTRACETitle = { fg = ice },
	NotifyERRORBody = "Normal",
	NotifyWARNBody = "Normal",
	NotifyINFOBody = "Normal",
	NotifyDEBUGBody = "Normal",
	NotifyTRACEBody = "Normal",
})

--[[ Step 5: Terminal Colors
	Define the color palette used by :terminal when in GUI Vim
	or in TUI Vim when 'termguicolors' is enabled. If this list
	is empty or if it doesn't contain exactly 16 items, the corresponding
	Vim variable won't be set.

	The expected values are colors defined in step 3.

	Terminal emulators use a basic palette of 16 colors that can be
	addressed by CLI and TUI tools via their name or their index, from
	0 to 15. The list is not really standardized but it is generally
	assumed to look like this:

	 | Index  | Name          |
	 |:------:|:-------------:|
	 | 1      | black         |
	 | 2      | darkred       |
	 | 3      | darkgreen     |
	 | 4      | darkyellow    |
	 | 5      | darkblue      |
	 | 6      | darkmagenta   |
	 | 7      | darkcyan      |
	 | 8      | gray          |
	 | 9      | darkgray      |
	 | 10     | red           |
	 | 11     | green         |
	 | 12     | yellow        |
	 | 13     | blue          |
	 | 14     | magenta       |
	 | 15     | cyan          |
	 | 16     | white         |

	While you are certainly free to make colors 0 to 7 shades of blue,
	this will inevitably cause usability issues so… be careful.
]]
colorscheme.highlight_terminal({
	[1] = black,
	[2] = red,
	[3] = green,
	[4] = orange,
	[5] = blue,
	[6] = magenta,
	[7] = teal,
	[8] = gray,
	[9] = gray_dark,
	[10] = red,
	[11] = green,
	[12] = yellow,
	[13] = turqoise,
	[14] = purple,
	[15] = cyan,
	[16] = gray_light,
})

--[[ Step 5: Sourcing
	When you wish to load your colorscheme, simply add this folder with a plugin manager
	and then use `colorscheme <your colorscheme name>`. For example, in my configuration,
	I source ghostly by using `colorscheme ghostly`.

	These online resources can help you design your colorscheme:

	1. the xterm palette.
		* http://upload.wikimedia.org/wikipedia/en/1/15/Xterm_256color_chart.svg
	2. play with hexadecimal colors right in the address bar (currently down).
		* http://whatcolor.herokuapp.com/
	3. similar concept, fuzzier implementation.
		* http://color.hailpixel.com/
	4. similar concept, fancier implementation.
		* http://colourco.de/
	5. extract a palette from an image.
		* http://www.colr.org/
	6. search for 'word', get images and color palettes.
		* http://colores.manugarri.com/
	7. user-created palettes.
		* http://www.colourlovers.com/palettes
	8. a no-nonsense colorscheme generator.
		* http://www.pluaang.dk/color+scheme/
	9. Adobe's fancy colorscheme generator.
		* https://color.adobe.com/
	10. The classic 'Color Scheme Designer', rebranded.
		* http://paletton.com/
	11. A very smart palette generator.
		* http://vrl.cs.brown.edu/color
	12. 'I Made My Own Colour Scheme and You Can Too!'.
		* https://cmcenroe.me/2018/04/03/colour-scheme.html

	A few things to note:

	* The Windows console (`cmd`) is limited to the 16 so-called 'ANSI' colors but it used to
			have a few of them interverted which makes numbers impractical. Use color names
			instead of numbers: :help cterm-colors
		* The Windows console doesn't do italics, underlines or bolded text;
			it is limited to normal and reverse. Keep that in mind if you want
			your colorscheme to be usable in as many environments as possible by as many
			people as possible.
		* The Windows TERMINAL, however, is capable of more.
	* All of the terminal emulators in use these days allow their users to
		change the 16 so-called 'ANSI' colors. It is also possible on some platforms
		to change some or all of the 256 colors in the xterm palette. Don't take
		anything for granted.
	* When used against a light background, strong colors work better than muted
		ones. Light or dark doesn't really matters. Also, it is harder to discriminate
		between two similar colors on a light background.
	* Both strong and muted colors work well against a dark background. It is also
		easier to work with similar colors, but dark colors don't work at all.
	* Use as many text samples as possible. String-heavy languages may look completely
		different than keyword-heavy ones. This can have an impact on the usability
		of your colorscheme.
	* Most terminal emulators and terminal multiplexers currently in use on unix-like
		systems support 256 colors but they almost always default to a '$TERM' that tells
		Vim otherwise. Your users will need to make sure their terminal emulator/multiplexer
		is correctly set up if they want to enjoy the best possible experience.
]]
-- Thanks to Romain Lafourcade (https://github.com/romainl) for the original template (romainl/vim-rnb).
