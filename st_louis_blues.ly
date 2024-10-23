\version "2.24.4"
\header{
    title = "St. Louis Blues"
    composer = ""
    instrument = "Alto Saxophone"
}

music = \relative c {
            \numericTimeSignature
            \time 4/4
            \tempo "Swing" 4=120
            \key c \major
            \set Staff.midiInstrument = #"rock organ"
            \partial 4. e''8 \noBeam e8 c8 |
                \repeat volta 2 {
                e8 e8~ e2. |
                r8 d8 \noBeam d8 dis8 e4 c4 |
                b1( |
                b2) r8 d8 \noBeam d8 b8 |
                d8 d8 b8 d8~ d2( |
                d8) d8 d8 dis8 e4 c4 |
                \alternative {
                    \volta 1 {
                        c1( |
                        c2) e4 e8 c8 |
                    }
                    \volta 2 {
                        c4 r4 b4 r4 |
                        e4 e8 e8~e2 |
                    }
                }
                \key a \major
                \repeat volta 1 {
                    \acciaccatura bis8 cis8 e8 \noBeam cis8 a8~ a2 |
                    r8 eis8 fis8 a8 c4 b8 a8~ |
                    a1~|
                    a2. r4 |
                }
            }
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