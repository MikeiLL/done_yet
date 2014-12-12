    \version "2.18.2"

    \header {
      title = "Lullaby of Twisted Feelings"
      composer = "Based on De Cind Te Cunosc Pe Tine by Nicolae Gutsa"
      poet = "Words by Mike iLL"  
      tagline = "Copyright R. and M. Kilmer Creative Commons Attribution-NonCommercial, BMI"
}

\paper{ print-page-number = ##f }

melody = \relative c' {
  \clef treble
  \key fis \minor
  \time 4/4
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
  \repeat volta 2 {
    <<
    \new Voice = "shown" {
      fis8 e fis e fis e4 fes8~ | fes ges~ ges2. | % lullaby ... feelings
      gis8 fis gis fis gis fis4 gis8~ | gis( a~ a2.) | % whispered ... megaphone
      a8 b cis b b( a4) gis8~ | gis a gis fis gis( fis4) r8 | % can ... this
      r eis eis eis fis gis4 fis8~ | fis( eis4.) fis4( gis) | % till any ... gone
        }
    \new Voice = "hidden" {
      \hideNotes {                  % !!
     fis'8 e fis e fis4 e8 fis~ | fis gis~ gis2 r4 | % choruses ... defenses
     gis8 fis gis fis gis fis4 gis8~ | gis4 a2 r4 | % drone until ... old
     a8 b cis b b a4 r8 | gis8 a gis fis gis fis4 r8 | % dancing ... ceiling
     eis8 eis eis eis fis gis4 fis8~ | fis( eis~) eis2. | % just ... soul
       }
    }
    >>
      \repeat volta 2 { 
      fis4 fis8 e d4 fis8 fis~ | fis4 e2. | % it's not ... money
      e8 d e d cis e4 e8~ | e4( d2.) | % there's ... we need
      d8 e fis e e d r cis~ | cis d cis b cis a4. | % tell me ... seen it
      gis8 gis gis gis a4 b8 a~ | a( gis4.~ gis4 ) r4 | % everything ... be 
        }
      }
      \alternative {
        {
          cis8 cis cis cis a'4 a8 a~ | a gis2. r8 | % sexy ... tempting
          r8 eis eis eis gis4 fis8 fis~ | fis4 r2. | % they tend ... flaws 
          r8 cis cis cis a'4 a8 a~ | a gis2. r8 | % their ... empty
          r8 eis eis eis gis4 fis8 fis~ | fis4 r2. | % let's stick to mine and yours

          cis8 cis cis cis a'4 a8 a | gis gis~ gis2. | % think ... against
          eis8 eis eis eis gis4 fis8 fis | r1 | % livin ... vanity 
          r8 cis4 cis8 a'4 a8 a | gis gis~ gis4. r4. | % what they lack ... sense
          r8 a gis a gis4 a8 gis~ | gis fis fis4 r2 | % is made ... arguments
        }
        {
        cis8 cis cis cis a'4 a8 a | ais gis~ gis2. | % lovers ... face
        eis4 eis8 eis gis r fis8 fis~ | fis4 r2. | % drenched ... musk perfume
        cis4 a'8 a a4 a8 a~ | a4 gis8 fis gis4 eis | % chefs .. bedroom
        eis4 gis8 eis gis gis4 fis8~ | fis4 r2. | % maids ... room
        
        r4 cis'8 cis cis4 cis8 cis~ | cis b8~ b2 r4 | % when i ... serve you
        r8 cis cis cis cis4 a | gis( fis2) r4 | % choices ... firm
        r4 cis'8 cis cis4 cis8 d~ | d4. cis4.( b4) | % when ... you
        a8 b cis a b b4. | fis1 |
        }
      }
}
    
text =  \lyricmode {
  
  It's not a -- bout the mo -- | ney |
  There's e -- nough for all we need. | |
  Tell me that you mean it. Tell | me that you've seen it. |
  Eve -- ry thing we aim | to be. |
    
  Se -- xy si -- lhou -- ettes are temp -- | ting |
  They tend to hide our flaws. | |
  Their pro -- mi -- ses are em -- pty |
  Let's stick to mine and yours. | |

  Think a -- bout the fools we're up | a -- gainst |
  Li -- ving in the va -- ni -- ty. | |
  What they lack in com -- | mon sense |
  is made up for in ar -- | gu -- ments |
  
  Lo -- vers who re -- veal a hi -- | den face, |
  drenched in a musk per -- fume. | |
  Chefs in the ki -- tchen whores | in the bed -- room |
  maids in the li -- ving room | |
  
  When I aim to serve | you |
  choi -- ces are | clear and firm. |
  When I aim to use | you |
  'lone I lay in bed and | squirm. |
  }
  
 wordsOne = \lyricmode {
    \set associatedVoice = "shown"
       \set stanza = #"1. "
    Lul -- la -- by of twis -- ted fee -- | lings |
    whis -- pered in a me -- ga -- phone, | |
    "\"Can" you 'ma -- gine this? Can | you 'ma -- gine "this?\"" |
    'Till a -- ny sense is gone. | Oh. |
    }
       
  wordsTwo = \lyricmode {
    \set associatedVoice = "hidden"
      \set stanza = #"2. " 
      Cho -- ru -- ses of spent de -- fen -- | ces |
      Drone un -- till the night is so | old  |
      Dan -- cing a re -- pea -- ting | Pa -- tern on the cei -- ling |
      Just to a -- gi -- tate my soul | |
    }
    
harmonies = \chordmode {
  fis1:m | a | fis:7 | b:m |
  b:m | fis:m | gis:7 | cis:7 |

  d:7 | e:7 | fis:7 | b:m |
  b:m | fis:m | gis:7 | cis:7 |

  fis:m | cis:7 | cis:7 | fis:m |
  fis:m/dis | d:7 | cis:7 | fis:m |

  fis:m | cis:7 | cis:7 | fis:m |
  fis:m/dis | d:7 | cis:7 | fis:m |

  fis:m | cis:7 | cis:7 | fis:m |
  dis:m7.5- | d:7 | cis:7 | fis:m |

  fis:m | cis:7 | cis:7 | fis:m |
  fis:m/dis | d:7 | cis:7 | fis:m |
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Voice = "one" { \melody }
    \new Lyrics \lyricsto "shown" \wordsOne
    \new Lyrics \lyricsto "hidden" \wordsTwo
    \new Lyrics \lyricsto "one" \text
  >>
 
  \layout { }
  \midi { }
}
   %Additional Verses
\markup \fill-line {
    \column {
    "Third round of lyrics:"
    " "
    "Military draft apologies"
    "Demonstrate against the throne."
    "Vive la concession!"
    "Vive la confession!"
    "Or else you're on your own."
    " "
    "It's not about the money."
    "There's enough for all we need."
    "Tell me that you mean it."
    "Tell me that you've seen it."
    "Everything we aim to be."
    " "
    "Fighters who can face reality."
    "Writers who reveal the facts."
    "Travelers at home in mystery."
    "And this is how we act?"
    "Heads as hard as ebony."
    "Hearts behind plate glass."
    "When the war is over,"
    "First I'm gonna cry, then laugh."
    }
  }  
