\version "2.18.2"

\header {
  title = "Minimart"
  subtitle = "Derived from Traditional Balkan Song: Rumelaj"
  poet = "Text by Mike iLL"
}

melody = \relative c'' {
  \clef treble
  \key g \minor
  \time 4/4
  \repeat volta 2 { c4. b8 c b c( a) | r8 bes4 a8 bes( a) g r8 |
  g a bes c d( c) bes c | g a4 a8 a4 a8 r8 | }

 \repeat volta 2 { d8 cis d cis d cis d( cis) | d cis d cis d( cis) bes( a) |
  g bes bes bes bes bes c( bes) | r a4 a8 bes( a) a8 r | }
}

text =  \lyricmode {
  There's a mi -- ni -- mart on the cor -- ner
  At the mi -- ni -- mart is a moon -- pie, I'm rea -- dy. 
  <<
    {
      \set stanza = #"1. "
      Need I need I need a high Pen -- ny pen -- ny pen -- ny
      Need I need I need a high God al --  migh -- ty.
    }
    \new Lyrics {
      \set associatedVoice = "melody"
      \set stanza = #"2. " 
      Lift me lift me lift me high Hea -- ven Hea -- ven Hea -- ven
      Lift me lift me lift me high God al -- migh -- ty.
    }
  >>
}

harmonies = \chordmode {
  d1:7 | g1:m | g2:m/f g2:m/ees | d1:7
  d1:7 | d1:7  | g1:m  | d1:7   |
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
