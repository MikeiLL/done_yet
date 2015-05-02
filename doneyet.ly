\version "2.18.2"

\header {
  title = "R We Done Yet?"
  composer = "Words and Music by Rivka and Mike iLL"
  tagline = "Copyright R. and M. Kilmer Creative Commons Attribution-NonCommercial, BMI"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }

melody = \relative c' {
  \clef treble
  \key cis \minor
  \time 4/4
  \times 2/3 { cis4 cis dis } \times 2/3 { e dis cis } | \times 2/3 { bis gis bis } cis8 r gis r |
  \times 2/3 { cis4 gis cis } \times 2/3 { dis cis dis } | \times 2/3 { e dis e } fis2 |
  r8 gis gis gis gis4. r8 | gis gis gis a gis4 r |
  gis8 gis fis gis r gis r fis | gis4 gis8 r gis r4. | % won with a stacked ... sick
  cis,8 cis cis dis e dis cis bis | bis bis gis gis cis4 gis8 gis | % subdivide ... occu-
  cis cis cis cis4 r8 cis cis | bis bis bis cis4. gis8 a | % pation is real ... final refu
  gis gis gis r gis gis gis gis | gis gis gis gis gis r4 bis8~ | % gees in tent ... homicidal head
  bis bis~ \times 2/3 { bis8 bis bis } \times 2/3 { bis4 bis8~ } \times 2/3 { bis bis bis } | % bowed... it's a
  bis bis bis dis4 dis8 r fis~ | % game of survival singed
  fis fis e dis cis bis bis4 | bis bis8 gis dis'4 r | % before they learn about ... bees
  cis8 bis cis dis e dis cis cis | dis dis4 gis2 r8 | % reading ... ieds
  a8 a4 gis4. gis8 cis,8~ | cis4 cis8 e4.( gis4 ) | % strap-on boys
  fis fis8 e4 dis8 cis bis~ | bis bis a gis4. r4 | % no reward in a moldy revenge
  cis'8 gis4 gis8 gis4 gis | \times 2/3 { gis4 a8~ } \times 2/3 { a gis( g) } gis2 | % stories ... art
  \times 2/3 { fis4 gis fis } \times 2/3 { e fis e } | % thirsty ... too
  \times 2/3 { dis fis a } \times 2/3 { gis gis gis } % young to be mortal be
  \times 2/3 { dis' dis dis } cis cis | \times 2/3 { b4 b b } \times 2/3 { a a a } | % lignorant can't wait to practice the
  \times 2/3 { fis gis gis } gis4 r | fis fis8 fis g g g g |
% CHORUS
  \times 2/3 { gis4 gis gis } \times 2/3 { gis gis gis } | \times 2/3 { gis gis gis } gis4 
\once \override NoteHead.style = #'cross
e' |
  \times 2/3 { gis,4 gis gis } \times 2/3 { gis gis gis } | \times 2/3 { gis gis gis } gis4 
 \once \override NoteHead.style = #'cross
e' |
  \times 2/3 { gis,4 gis gis } \times 2/3 { gis gis gis } | \times 2/3 { gis gis gis } gis4 
\once \override NoteHead.style = #'cross
e' |
  \times 2/3 { r4 gis, gis } gis4 \once \override NoteHead.style = #'cross
e' | r gis8 gis gis4 fis |
  \new Voice = "break" { gis,8 gis gis r4. gis8 gis | gis8 r4 gis8 gis gis r4 }
% Verse 2
  gis8 gis gis gis gis r gis r | gis gis gis gis g4 r | % economic ... planet
  fis fis gis8 fis \times 2/3 { fis8 fis fis } | % worldwide intl
  fis8 fis \times 2/3 { fis8 fis fis } \times 2/3 { fis8 fis e } r4 | % liability limited
  gis8 gis gis gis gis4 gis8 gis | gis gis gis r a a r a16 a | % planting ... over-
  b8 b4 b16 b \times 2/3 { b8 b b~ } b4 | b8 b4 b \times 2/3 { c8 c c~ } c16 r8. | % whelming ... economy
  dis8 dis16 dis8 dis16 d8 cis b8 b~ | b4 a8 gis gis r4 gis8~ | % insurmountable ... interest. poi
  gis gis gis gis4 gis4 gis8~ | gis a \times 2/3 { gis( g) gis~ } gis8 gis r4 | % sonous networks ... assets
  cis,4 cis8 cis~ \times 2/3 { cis8 cis cis } dis8 dis | dis dis e e e2 | % infant ... cigarettes
  fis8 fis fis( e) dis dis dis cis | bis ais bis cis dis2 | % infantile ... collapse  
  gis8 gis gis gis~ \times 2/3 { gis gis gis~ } gis8 r | gis a gis fis gis4. bis,8~ | % puppetry ... war. Kill
  bis8 bis bis bis dis dis dis fis~ | fis fis4 gis gis r8 | % that's what we ... guns for
  dis'4 bis8 gis cis8 cis a a | dis, dis dis dis4. dis8 dis | % aim at ... poor. If ya
  fis4 fis8 fis cis cis cis cis | gis gis gis gis dis2 | % run outta ... more
  dis'8 dis dis cis4 cis8 gis4 | b4 b8 a2 dis,8~ | % three ... deep
  dis8 dis dis a'4 a gis8~ | gis gis gis gis dis4. gis8 | % behind chain ... razor wire. The
  gis gis gis gis4. gis8 gis~ | gis gis gis4 gis2 | % ominous ... gear
  \times 2/3 { r4 fis' fis } \times 2/3 { fis4 fis fis } | % don't you know ... they're
  \times 2/3 { g4 gis gis } gis2 | % doing in there

% CHORUS
  \times 2/3 { gis4 gis gis } \times 2/3 { gis gis gis } | \times 2/3 { gis gis gis } gis4 
\once \override NoteHead.style = #'cross
e' |
  \times 2/3 { gis,4 gis gis } \times 2/3 { gis gis gis } | \times 2/3 { gis gis gis } gis4
 \once \override NoteHead.style = #'cross
e' |
  \times 2/3 { gis,4 gis gis } \times 2/3 { gis gis gis } | \times 2/3 { gis gis gis } gis4 
\once \override NoteHead.style = #'cross
e' |
  \times 2/3 { r4 gis, gis } gis4 \once \override NoteHead.style = #'cross
e' | r gis8 gis gis4 fis |

% Higher  
\repeat volta 2 { e4. e8~ e2~ | e4. e8 fis fis dis4 | % higher ... can
  e1~ | e2 fis4 cis | % buy wing can
  dis1~ | dis2 fis4 e | % fly, smoke can |
  dis4. dis8 fis4 e | dis4 cis cis dis | % rise. The price of life let's make it
  }

% Peace
  \repeat volta 2 {
  dis4( cis2) gis4 | b4. a4.~ a4 |
  gis2. fis4 | a4. gis4. r4 |
  }

}

text =  \lyricmode {
  Dragged off to war a -- gain | fight -- ing for who. What |
  pro -- fit be gained by the | rough -- tro -- dden poor? |
  A -- round the world, | ba -- ttle -- field to rock |
  Won with a stacked deck, but | came back sick! |
  Sub -- di -- vide a fad -- ed com -- | mun -- i -- ty tur -- tle isle. Occ -- u -- |
  pa -- tion -- is -- real, de -- mo -- | li -- tion is final. Ref -- u -- |
  gees in tent ci -- ties grow -- ing | up hom -- i -- ci -- dal. Head |
  bowed at the road block it's a | game of sur -- vi -- val. Singed |
  be -- fore they learn a -- bout | birds and the bees
  rea -- ding books o' re -- ci -- pes for | I. E. D.s
  Strap -- on toys for girls | and boys. |
  No re -- ward in a  mol -- | dy re -- venge. |
  Sto -- ries spin out like | car -- ni -- val art. |
  Thirs -- ty mi -- lli -- tias too | young to be mor -- tal be -- |
  lig -- no -- rant sol -- diers | can't wait to prac -- tice the |
  la -- test tech -- niques | learned in the bel -- ly of the |
  Bing bing bing bing bing bing | bing bing bing bing Clack! |
  Bing bing bing bing bing bing | bing bing bing bing Clack! |
  Bing bing bing bing bing bing | bing bing bing bing Clack! |
  Bing bing bing Clack! | Are we done yet?
% Verse 2
  E -- co -- no -- mic hit men | sco -- ur the pla -- net |
  World -- wide in -- ter -- na -- tion -- al | li -- a -- bi -- li -- ty li -- mi -- ted. |
  Plant -- ing piles of well_ -- laun -- dered | arm_ -- for_ -- drug mo -- ney o -- ver |
  whelm -- ing the a -- bi -- li -- ties fra -- gile e -- co -- no -- mies. |
  In -- sur -- mount -- a -- ble debt ex -- | plo -- ding in -- t'rest poi -- |
  so -- nous net -- works spun | to drain as -- sets |
  In -- fant for -- mu -- la in -- stant | food and ci -- ga -- rets, |
  In -- fan -- tile in -- fra -- struc -- ture | ver -- ging on col -- lapse. |
  Pup -- pe -- try go -- ver -- nment, brink of ci -- vil war. "\"Kill" |
  that's what we gave ya the God -- | dam guns "for.\"" |
  Aim at the char -- as -- ma -- tic med -- dle -- some poor. If ya |
  run out -- ta bul -- lets some -- one's al -- ways ma -- kin' more. |
  Three hun -- dred six -- ty -- five days a year. Deep |
  be -- hind chain -- link fence and ra -- zor wire. The |
  o -- mi -- nous sounds of me -- chan -- ized gear. |
  Don't you know what they're do -- in' in there? |
  Bing bing bing bing bing bing | bing bing bing bing Clack! |
  Bing bing bing bing bing bing | bing bing bing bing Clack! |
  Bing bing bing bing bing bing | bing bing bing bing Clack! |
  Bing bing bing Clack! | Are we done yet?
  High -- er | than mo -- ney can |
  buy | wings can |
  fly | smoke can |
  rise. The price of | life. Let's make it | 
  Peace and Ju -- stice. | Peace and Ju -- stice. |
}

cccc = \chordmode { cis1:m }
gggg = \chordmode { gis1:7 }
ccgc = \chordmode { cis2:m gis4:7 cis:m | }
ggcg = \chordmode { gis2:7 cis4:m gis:7 | }
cg = \chordmode { cis1:m | gis:7 | }
ggcc = \chordmode { gis2:7 cis:m | }
ccgg = \chordmode { cis2:m gis:7 | }
ffff = \chordmode { fis1:m }
ddgg = \chordmode { dis2:m7.5- gis:7 }
dddd = \chordmode { dis1:m7.5- }
ggcf = \chordmode { gis4:7 gis:7 cis:m fis:m }
higher = \chordmode { 
  cis1:m | cis:m | cis:m | cis:m |
  fis:m | fis:m | gis:7 | dis2:m7.5- gis:m |
  }
peace = { \cccc \cccc \ffff \gggg } 

bings = {
  \cccc \ggcc \cccc \gggg
  \cccc \ggcf \cccc \ccgg
  }

begins = \chordmode { 
  cis1:m | gis2:7 cis4:m gis:7 | cis1:m | cis2:m fis:m | % ... poor
  gis1:7 | gis:7 | gis:7 | gis:7 | % around ... back sick
  cis1:m | gis2:7 cis:m | cis1:m | gis2:7 cis:m | % subdivide ... 
  }

harmonies = {
  \begins 
  \gggg \gggg \gggg \gggg % ... survival
  \ffff \gggg \ffff \gggg % i.e.d.s
  \cccc \cccc \ffff \gggg % ... revenge
  \cccc \cccc \ffff \gggg % to be mortal be
  \ffff \ffff \gggg \ddgg % learned in the belly of the
  \bings
  \gggg \gggg % break
  \cccc \cccc \gggg \gggg % ... liability lmtd
  \cccc \cccc \ffff \ddgg % ... fragile economies
  \cccc \cccc \cccc \cccc % to drain assets
  \cccc \cccc \cccc \cccc % ... virgin' on collapse
  \gggg \gggg \ffff \gggg % ... guns for
  \ffff \gggg \ffff \gggg % ... makin' more
  \cccc \cccc \ffff \gggg % ... razor wire
  \gggg \gggg \ffff \ddgg % ... doin in there
  \bings
  \higher
  \peace
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
