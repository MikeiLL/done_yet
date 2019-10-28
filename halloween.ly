\version "2.19.80"

#(define-markup-command (halloween-page-numbers layout props arg) (scheme?)
   ; arg is a dummy parameter
   (let ((page-number (chain-assoc-get 'page:page-number props -1))
         (monsters (circular-list
                    #{ \markup \char ##x1F47B #} ; ghost
                    #{ \markup \char ##x1F47E #} ; weird alien
                    #{ \markup \char ##x1F47D #} ; typical alien
                    #{ \markup \char ##x1F987 #} ; bat
                    #{ \markup \char ##x1F9DB #} ; vampire
                    #{ \markup \char ##x1F383 #} ; jack-o'-lantern
                    )))
     (interpret-markup layout props
       #{ \markup \concat #(list-head monsters page-number) #})))

\paper {
  oddHeaderMarkup =
  \markup \on-the-fly \not-first-page {
    \fill-line {
      \concat {
        \italic {
          \small "Document - "
          \on-the-fly #print-page-number-check-first \huge \halloween-page-numbers ##f
        }
      }
    }
  }
  evenHeaderMarkup = \oddHeaderMarkup
}

\score {
  \new Staff {
    \repeat unfold 6 { s1 \pageBreak }
  }
  \layout {}
}