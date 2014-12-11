    \version "2.18.2"

    \header {
      title = "Lullaby of Twisted Feelings"
      composer = "Based on De Cind Te Cunosc Pe Tine by Nicolae Gutsa"
      poet = "Words by Mike iLL"
    }

melody = \relative c' {
  \clef treble
  \key fis \minor
  \time 4/4
  fis8 e fis e fis e4 fes8~ | fes ges~ ges2. | % lullaby ... feelings
  gis8 fis gis fis gis fis4 ges8~ | ges( a~ a2.) | % whispered ... megaphone
  a8 b cis b b( a4) gis8~ | gis a gis fis gis( fis4) r8 | % can ... this
  r eis eis eis fis gis4 fis8~ | fis( eis4.) fis4( gis) | % till any ... gone

  \repeat volta 2 { 
  fis4 fis8 e d4 fis8 fis~ | fis4 e2. | % it's not ... money
  e8 d e d cis e4 e8~ | e4( d2.) | % there's ... we need
  d8 e fis e e d r cis~ | cis d cis b cis a4. | % tell me ... seen it
  gis8 gis gis gis a4 b8 a~ | a( gis4.~ gis4 ) r4 | % everything ... be 
    }
 
  <<
    \new Voice = "shown" {
      \relative c' {
  \repeat volta 2 { 
  cis8 cis cis cis a'4 a8 a~ | a gis2. r8 | % sexy ... tempting
  r8 eis eis eis gis4 fis8 fis~ | fis4 r2. | % they tend ... flaws 
  r8 cis cis cis a'4 a8 a~ | a gis2. r8 | % their ... empty
  r8 eis eis eis gis4 fis8 fis~ | fis4 r2. | % let's stick to mine and yours
        }
      }
    }  
    
    \new Voice = "hidden" {
      \hideNotes {                  % !!
  cis8 cis cis cis a'4 a8 a | gis gis~ gis2. | % think ... against
  eis8 eis eis eis gis4 fis8 fis | r1 | % livin ... vanity 
  r8 cis4 cis8 a'4 a8 a gis gis~ | gis4 r2. | % what they lack ... sense
  r8 a gis a gis4 a8 gis~ | gis fis fis4 r2 | % is made ... arguments
      }
    }
  >>
}
    
text =  \lyricmode {
   Lul -- la -- by of twis -- ted fee -- | lings |
  whis -- pered in a me -- ga -- phone, | |
  "\"Can" you 'ma -- gine this? Can | you 'ma -- gine "this?\"" |
  'Till a -- ny sense is gone. | Oh. |
  
  It's not a -- bout the mo -- | ney |
  There's e -- nough for all we need. | |
  Tell me that you mean it. Tell | me that you've seen it. |
  Eve -- ry thing we aim | to be. |
}
    
wordsOne = \lyricmode {
  \set stanza = #"1. "
  Se -- xy si -- lhou -- ettes are temp -- | ting |
  They tend to hide our flaws. | |
  Their pro -- mi -- ses are em -- pty |
  Let's stick to mine and yours. | |
}
 
wordsTwo = \lyricmode {
  \set stanza = #"2. " 
  Think a -- bout the fools we're up | a -- gainst |
  Li -- ving in the va -- ni -- ty. | |
  What they lack in co -- | mmon sense |
  is made up for in ar -- | gu -- ments |
}

harmonies = \chordmode {
  fis1:m | a | fis:7 | b:m |
  b:m | fis:m | gis:7 | cis:7 |

  d:7 | e:7 | fis:7 | b:m |
  b:m | fis:m | gis:7 | cis:7 |
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Voice = "one" { \melody }
    \new Lyrics \lyricsto "one" \text
    \new Lyrics \lyricsto "shown" \wordsOne
    \new Lyrics \lyricsto "hidden" \wordsTwo
  >>
 
  \layout { }
  \midi { }
}
   %Additional Verses
\markup \fill-line {
\column {
    Choruses of spent defenses.
    Drone until the night is so old
    }
  }  