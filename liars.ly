\version "2.18.2"

\header {
  title = "The Liars"
  composer = "Words and Music by Mike iLL"
  tagline = "Copyright R. and M. Kilmer Creative Commons Attribution-NonCommercial, BMI"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }

melody = \relative c'' {
  \clef treble
  \key g \minor
  \time 4/4
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
  \repeat volta 2 {
  g4 r a2 | bes4. a g4 | fis1( | fis1) |
  r4 d fis g | a4. g fis4 | g1( | g1) |
  r4 d g a | bes4. a g4 | a4.( g fis4~ | fis1) |
  r4 d fis g | a a g fis | g1( | g) | }
  \alternative {
  { 
  r4 d g a | bes bes bes r | r1 | r2. bes4 | % You rode my
  a g fis a | g d g r | r1 | r2. d4 | % Showed me how to
  g a bes c | d2.~( \times 2/3 {d8 c bes}| a1 ) | r1 | r | % now I'm stuck
  r2 g8 a4 bes8~ | bes bes4. a4 g | a8 a4 g4. fis8 fis~ | fis1 |
  r4. d8 fis4 g | a a g fis | a g2.~ | g2 r | % a pair of
  bes4 r2 bes8 bes | a4 g fis a | a8.( bes16 a8) g4.~ g4 |r1 | % ah well at least
  % Verse two
  r4. d8 g a4 bes8~ | bes bes4. a4 g | a4 g g fis8 fis~ | fis1 | % i wanted someone who could
  r2 fis4 g8 a~ | a4. g4 fis a8~ | a4. g4.~ g4~ | g1 |  % goddess knows it ain't easy
  r4 d g a8 bes~ | bes8 bes4. a4 g | c bes bes a8 a~ | a1 | % We made a pact
  r4. fis4 fis g8 | a4 a g fis | g1~ | g2 r2 | % We've got ta keep
  r4 g g a8 bes~ | bes4 bes a g | c a2.~ | a1 | % So far beyond love's first impression
  r4 a4 a bes | c c bes a | c bes2.~ | bes1 | % We've seen our
  r4. g4 g a8 | bes4 bes a g | a g8 g4. fis8 fis~ | fis1 | % you must remind me
  r4 d fis g8 a~ | a4 a g fis | a4. g~ g4~ | g2. r4 | % I'm twisted up
  r4 g g a8 bes~ | bes4 bes a g | \times 2/3 {fis a fis~} fis2~ | fis1 | % so let's agree
  r4 d fis g8 a~ | a4 a g8 fis4. | a4 g8 g4.~ g4~ | g1~ | % and let's indulge each other's
  g4 r g a8 bes~ | bes8 bes4. a4 g | a4. bes c4~ | c1 | % and together we can
  r2 a4 bes8 c~ | c4 bes a8 bes4 g8~ | g1~ | g2. r4 | % to the truth we've got it made
    }
  {
  r4 d g a | bes bes bes r | r1 | r2. r8 bes | % unplanned endurance test suf
  a4 g8 fis4. a4 | g1~ | g4 r \times 2/3 {d4 g a} | % fice ta say you passed you were the
  bes4 r bes8 bes4 bes8 | bes4 r bes c | bes r bes8 a bes a~ | a4 g fis a | % couldn't believe you ... so
  g1~ | g | r4 g g a8 bes~ | bes4 bes a g8 fis~ | % fast. these demon dogs that live within 
  fis4 a2.~ | a1 | r4 fis fis g | a a g fis | \times 2/3 { a4 g g~ } g2~ | g1 | % me. sometimes give strength ... trickery
  r4 g g a | bes bes a g8 fis~ | fis4 a2.~ | a r4 | % so dare i ask of you to trust me
  r4 fis8 fis4 g4 a8~ | a a4. g4 r8 fis | a4 g2.~ | g1 | % when i can't ... completely
  r4 d'8 d4 d d8 | d4 d c bes | d c2.~ | c1 | % you don't have ta trust me with your money
  c8 c4 c4. c8 c~ | c c4. bes4 a8 bes~ | bes2 r2 | r1 | % you don't have to trust me not to talk
  r4 bes8 bes4 bes bes8 | bes4 bes a g | a1~ | a | % ya don't ... mind
  r4 a8 a4 a4 a8 | a4 a g fis | g1~ | g~ | g4 r2. | % ya just ... heart
    }
  }
}



text =  \lyricmode {
  Trust me | far 's'I can |  fly__ |  |
  'Cause I could | fly past the | moon |
  I ne -- ver | told you a | lie |
  I on -- ly | said some things too | soon |
  You rode my | rest -- less bucks | | and |
  showed me how to | fix my luck | | and |
  now I'm stuck on | you- | | | |
  We've both said | some things we | want -- ed to be true |
  A pair of | well in -- ten -- tioned | li -- ars | |
  Ah. Well at | least we've got each | o -- ther |
  I wan -- ted some -- | one who could | stand my com -- pa -- ny |
  God -- dess knows it ain't eas -- y |
  We made a pact | no good can | come from turn -- in' back | 
  We've got to keep | our -- selves in | tact | |
  So far be -- yond | love's first im -- | pres -- sion | |
  We've seen our | eve -- ry im -- per -- | fec -- tion | |
  You must re -- mind | me eve -- ry | time I might for -- get |
  I'm twis -- ted up | to fit you per -- | fect | |
  So let's a -- gree | that we can dis -- | a -- gree | |
  And let's in -- | dulge each o -- ther's fan -- | ta -- sies- |
  And to -- ge -- | ther we can | lie our way- | |
  To the truth | we've got it | made.
  Un -- planned en -- | dur -- ance test | | suf -- |
  fice to say you | passed | you were the |
  best, beat out the | rest, no con -- | test could -- n't be -- lieve |
  you held so | fast. | |
  these de -- mon dogs | that live with -- in | me | |
  some -- times give | strength some -- times just | trick -- e -- ry | 
  so dare I | ask of you to | trust me | |
  when I can't trust | my -- self com -- plete -- | ly | |
  you don't have to | trust me with your | mo -- ney | |
  you don't have to | trust me not to | talk | |
  you don't have to | trust me with your | mind |
  you just have to | trust me with your | heart | | 
}


ggddddgg = \chordmode {
  g1:m |g1:m |d1:7 |d1:7 |
  d1:7 |d1:7 |g1:m |g1:m | 
  }
dd = \chordmode { d1:7 | d1:7 }
gg = \chordmode { g1:m | g1:m }
gind = \chordmode { g1:m | }
dind = \chordmode { d1:7 | }
ahhh = \chordmode { ees1:7 | d1:7 | g1:m | d1:7 | }
cc = \chordmode { c1 | }

harmonies = {
\ggddddgg \ggddddgg 
\gg \gg \dind \gg \gg % you rode ... and now I'm stuck on
\dd \dd % you
\ggddddgg % we both ... liars
\ahhh
\ggddddgg % i wanted someone who ... it ain't easy
\ggddddgg % we made a pact ... intact
\ggddddgg % so far bayond ... impression
\ggddddgg % we've seen ... imperfection
\ggddddgg % you must remind ... perfect
\ggddddgg % so let's agree ... fantasies
% \ggddddgg % and together we can ... made
\gg \gg \dind \gg % unplanned ... passed you were the
\gg \gind \dind \gg % best beat out the ... held so fast
\ggddddgg % these demon ... trickery
\ggddddgg % so dare i .. completely
\ggddddgg % you don't ... not to talk
\gg \dd \dd \gind % you don't ... mind ... with your
\dind \gind
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
