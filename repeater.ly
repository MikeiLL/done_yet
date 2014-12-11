\version "2.18.2"

melody = \relative c' {
      \clef treble
      \key bes \major
      \time 6/8
        \new Voice = "words" {
      r4 f4 d | r f f | r2. |% words go to this
        }
      }
      
    text = \lyricmode {
        {
            Words go | to this | |
        }

    }
    
    \score {
      <<
        \new Voice = "one" { \melody }
        \new Lyrics \lyricsto "words" \text
      >>
      \layout { }
      \midi { }
    }