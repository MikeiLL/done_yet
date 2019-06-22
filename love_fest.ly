\version "2.18.2"

\header {
  title = "Good Old New Age Love Fest"
  composer = "Words and Music by Rivka & Mike iLL"
  tag = "Copyright R. and M. Kilmer Creative Commons Attribution-NonCommercial, BMI"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }

melody = \relative c' {
  \clef treble
  \key c \minor
  \time 4/4
  \partial 8*7 g4. c4 ees |
  g1~ | g8 aes g aes g f ees r | f4. d4.~ d4~ | d8 g,4. bes4 d |
  f1~ | f8 g f g f ees d r | ees2 d4 c8 c | r c4. ees4 g |
  c1~ | c8 ees d ees d r c r | b4. aes'~ aes4 | aes8 b, aes' b, g' f d ees |
  c8 r4 c8 r c c r8 | c4 r2. | c8 c r4 c c | c4 r2. |
}

text =  \lyricmode {

}


harmonies = \chordmode {
  c:min1
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
