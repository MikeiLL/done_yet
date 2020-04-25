\version "2.18.2"

\header {
  title = "April 25 2020"
  composer = "Words and Music by Rivka & Mike iLL"
  tag = "Copyright R. and M. Kilmer Creative Commons Attribution-NonCommercial, BMI"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }

melody = \relative c' {
  \clef treble
  \key ees \minor
  \time 4/4
  
  \repeat volta 2 {
  ees4 bes' aes8 ges4 r8 | aes4 ges8 bes4. r4 |
  aes4 ges aes8 ges4 r8 | aes4 ges8 bes4. r4 |
  ges8 ges ges r ges8 ges4 r8 | aes4\staccato bes8 ces4. r4 |
  ges8 ges ges r ges4\staccato ges4\staccato | ges2 f4 r | 
  f4. ges16 f ees2~ | ees1 |
  } 
  
  
}

text =  \lyricmode {
	a
}


harmonies = \chordmode {
  ees:m1 | aes:m | aes:m | aes:m |
  aes:m | aes:m | aes:m | aes:m | 
  ees:m | ees:m |
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Voice = "one" { 
      \melody 
    }
    \new Lyrics \with {
      \override VerticalAxisGroup.
        nonstaff-relatedstaff-spacing.padding = #15
      \override VerticalAxisGroup.
        nonstaff-unrelatedstaff-spacing.padding = #15
    }
    \lyricsto "one" \text
  >>

  \layout { #(layout-set-staff-size 25) }
  \midi { }
}
