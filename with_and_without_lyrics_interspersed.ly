\version "2.19.45"

withLyrics = \relative c'' {
  \time 3/4
  \markLengthOn
  \mark "Chorus"
  c2.
  \mark "Interlude"
  s
  \mark "Verse I"
  c
  \mark "Interlude"
  s
  \mark "Verse II"
  c
}
withoutLyrics = \relative {
  s2.
  e''
  s
  e
}

lyr = \lyricmode {
  chorus
  one
  two
}

\score {
  <<
    \new Staff <<
      \new Voice = "withLyrics" \withLyrics
      \new Voice \withoutLyrics
    >>
    \new Lyrics \lyricsto "withLyrics" \lyr
  >>
}
