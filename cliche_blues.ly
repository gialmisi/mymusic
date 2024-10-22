\version "2.24.4"
\header{
    title = "Cliché Blues(ish)"
    composer = "Giovanni Misitano"
}

music = \relative c {
            \numericTimeSignature
            \time 4/4
            \tempo "Swing feel" 4=140
            \key c \major
            \set Staff.midiInstrument = #"rock organ"
            \partial 8 c''8 |
                dis8. f8 fis8. g16 f16 dis8. c8.~ |
                c8. r8 r8 c8 ais8. b8 c8 |
                r4 c8 dis8. f8. r4 |
                g8. ais8 g8. fis8 f4. |
                r4 g8. ais8 fis8. g8 fis8~ |
                fis8. c4 r4 dis8 f8. |
                g16 fis f8. dis8 ais8. c8~ c4 |
                \bar "||"
        }

\score{
    \music
    \layout{}
}

\score{
    \unfoldRepeats{
    \music
    }
    \midi{}
}