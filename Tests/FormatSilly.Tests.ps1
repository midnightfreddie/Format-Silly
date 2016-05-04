# Regex Unicode note: \p{Mn} matches the combining diacritic codepoints
# Ref: https://msdn.microsoft.com/en-us/library/20bw873z.aspx#SupportedUnicodeGeneralCategories

Get-Module FormatSilly | Remove-Module -Force
Import-Module $PSScriptRoot\..\FormatSilly -Force

Describe 'Format-Silly' {
    It 'Returns string with all letters having combining unicode characters appended' {
        Format-Silly "The quick, brown fox jumped over the lazy dog"  |
            Should MatchExactly "T\p{Mn}h\p{Mn}e\p{Mn} q\p{Mn}u\p{Mn}i\p{Mn}c\p{Mn}k\p{Mn}, b\p{Mn}r\p{Mn}o\p{Mn}w\p{Mn}n\p{Mn} f\p{Mn}o\p{Mn}x\p{Mn} j\p{Mn}u\p{Mn}m\p{Mn}p\p{Mn}e\p{Mn}d\p{Mn} o\p{Mn}v\p{Mn}e\p{Mn}r\p{Mn} t\p{Mn}h\p{Mn}e\p{Mn} l\p{Mn}a\p{Mn}z\p{Mn}y\p{Mn} d\p{Mn}o\p{Mn}g\p{Mn}"
    }
}

Describe 'Format-Zalgo' {
    It 'Returns string with each character having trailing combining diacritics' {
        Format-Zalgo "To invoke the hive-mind representing chaos." |
            Should MatchExactly "T\p{Mn}+o\p{Mn}+ \p{Mn}+i\p{Mn}+n\p{Mn}+v\p{Mn}+o\p{Mn}+k\p{Mn}+e\p{Mn}+ \p{Mn}+t\p{Mn}+h\p{Mn}+e\p{Mn}+ \p{Mn}+h\p{Mn}+i\p{Mn}+v\p{Mn}+e\p{Mn}+-\p{Mn}+m\p{Mn}+i\p{Mn}+n\p{Mn}+d\p{Mn}+ \p{Mn}+r\p{Mn}+e\p{Mn}+p\p{Mn}+r\p{Mn}+e\p{Mn}+s\p{Mn}+e\p{Mn}+n\p{Mn}+t\p{Mn}+i\p{Mn}+n\p{Mn}+g\p{Mn}+ \p{Mn}+c\p{Mn}+h\p{Mn}+a\p{Mn}+o\p{Mn}+s\p{Mn}+\.\p{Mn}+"
    }
}