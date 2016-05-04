Get-Module FormatSilly | Remove-Module -Force
Import-Module $PSScriptRoot\..\FormatSilly -Force

Describe 'Format-Silly' {
    It 'Returns string with all letters having combining unicode characters appended' {
        Format-Silly "The quick, brown fox jumped over the lazy dog"  |
            Should MatchExactly "T.h.e. q.u.i.c.k., b.r.o.w.n. f.o.x. j.u.m.p.e.d. o.v.e.r. t.h.e. l.a.z.y. d.o.g."
    }
}