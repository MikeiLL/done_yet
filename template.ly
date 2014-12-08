\version "2.18.2"

\header {
  title = "Better Never"
  composer = "Words and Music by Mike iLL"
}

melody = \relative c'' {
  \clef treble
  \key g \minor
  \time 4/4
}

text =  \lyricmode {
}


harmonies = \chordmode {
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Voice = "one" { \melody }
    \new Lyrics \lyricsto "one" \text
  >>
  \layout { }
  \midi { }
}
