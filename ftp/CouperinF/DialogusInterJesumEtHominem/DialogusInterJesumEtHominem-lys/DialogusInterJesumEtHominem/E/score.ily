\score {
  \new StaffGroupNoBar <<
    \newStaffWithLyrics <<
      \global \includeNotes "voix-haute-contre"
    >> \includeLyrics "paroles1"
    \newStaffWithLyrics <<
      \global \includeNotes "voix-basse"
    >> \includeLyrics "paroles2"
    \newStaff << \scoreInit \global \includeNotes "basse"
                 \includeFigures "chiffres" >>
  >>
  \layout {
    indent = \noindent
    #(define tweak-key (*current-piece*))
  }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 132 4) } }
}
