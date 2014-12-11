melody = \relative c' {
      \clef treble
      \key bes \major
      \repeat volta 2 {
      \time 6/8 e4. fis4 g8 | a4. g4 bes8 |
      \time 6/8
        \new Voice = "words" {
      r4 f4 d | r f f | r2. |% words go to this
        }
      }
      \alternative { 
        { 
         r2. |
        }
        { 
         r2. |
        }
      }
      % CHORUS
      \new Voice = "chorus"	{
      g4. a | bes g4 a8 | % words go here too, see?
        }
  
    }

    text = \lyricmode {
      <<
        {
            \set stanza = #"1. "
            Words go | to this | | |
        }
        \new Lyrics {
            \set associatedVoice = "words"
            \set stanza = #"2. " 
            More words | go here |
    
            }
      >>

    }
    chorus = \lyricmode {
        Words go | here too, see? |
        }

    harmonies = \chordmode {
      e2.:m7.5- | bes |
      bes2. | g:m7 | f:7 |
      c:7/e |
      c4.:7 d:7 |
      g2.:m | g:m |
    }

    \score {
      <<
        \new ChordNames {
          \set chordChanges = ##t
          \harmonies
        }
        \new Voice = "one" { \melody }
        \new Lyrics \lyricsto "words" \text
        \new Lyrics \lyricsto "chorus" \chorus
      >>
      \layout { }
      \midi { }
    }