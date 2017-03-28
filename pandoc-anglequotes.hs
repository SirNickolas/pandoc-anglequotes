import Text.Pandoc.JSON

replaceQuotes ('<':'<':tl) = '«' : replaceQuotes tl
replaceQuotes ('>':'>':tl) = '»' : replaceQuotes tl
replaceQuotes (hd:tl)      = hd  : replaceQuotes tl
replaceQuotes ""           = ""

process (Str text) = Str $ replaceQuotes text
process x = x

main = toJSONFilter process
