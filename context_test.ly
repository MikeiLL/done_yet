\version "2.19.45"

\score {
  <<
    \new Staff {
      \time 3/4
      \new Voice = "a" { a'2. }
      % Sequential:
      \new Voice = "b" { b'4 \new Voice { g'8[ 8] } b'4 }
      % Parallel:
      <<
        \new Voice = "c" { c''4 s c'' }
        \new Voice { s4 g'8 8 s }
      >>
      % Parallel within Sequential:
      {
        \new Voice = "d" { d''4 }
        <<
          \context Voice = "d" { s4 }
          \new Voice { g'8[ 8] }
        >>
        \context Voice = "d" { d''4 }
      }
      % Sequential within Parallel:
      <<
        \new Voice = "e" { s2. }
        {
          \context Voice = "e" { e''4 }
          \new Voice { g'8[ 8] }
          \context Voice = "e" { e''4 }
        }
      >>
    }
    \new Lyrics <<
      \lyricsto "a" { a }
      \lyricsto "b" { b b }
      \lyricsto "c" { c c }
      \lyricsto "d" { d d }
      \lyricsto "e" { e e }
    >>
  >>
}

% Thanks to Aaron Hill lilypond@hillvisions.com
% Reference http://lilypond.org/doc/v2.19/Documentation/notation/keeping-contexts-alive.en.html
