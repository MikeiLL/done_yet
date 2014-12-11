\version "2.18.2"

\header {
  title = "Steady Roll"
  composer = "Words and Music by Mike iLL"
}

melody = \relative c' {
  \clef treble
  \key bes \major
  \time 6/8
  \repeat volta 2 {
  r4 f4 d | r f f | % first i rubber her
  f4. f8 f4 | f4. f8 f ees8~ | % thighs 'till they turned to butter
  \time 3/8 ees4 r8 | \time 6/8
  r4 ees c | r ees ees | % then i rubber her
  ees4. ees8 ees4 | r8 ees8~ ees16 d16 d4. | % lips 'till they turned to bread
  r4 d bes | r d d | % let's just say i
  r4. des4 des8 | c4 bes a4 c8 | % layed us out a fancy 
  c16( bes16~) bes4. r4 | r4 aes' ges | % spread steady 
  gs16( f~) f4. r4 | r2. |
  }
}

text =  \lyricmode {
  First I | rubbed her |
  thighs 'till they |
  turned | to but -- ter. | 
  | |
  Then I | rubbed her |
  lips 'till they | turned to bread |
  Let's just | say I | 
  layed us out | a fan -- cy |
  spread |
  stea -- dy | roll |  |
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
