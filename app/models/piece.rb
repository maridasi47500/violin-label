class Piece < ApplicationRecord
belongs_to :composer
after_create :hellothere
after_update :hellothere
def hellothere
@myscore="


\\version \"2.24.3\"


\\header {
  title = \"#{self.name}\"
}

global = {
  \\key #{key_signature.sub(" "," \\")}
  \\numericTimeSignature
  \\time #{time_signature}
}

Myscore = #{relative.to_s.length > 0 ? "\\relative #{relative}" : ""} {
  \\global
  % En avant la musique.
  #{content}
}




\\header {
  title=\"Dans le style de #{composer.name}\"
  subtitle = \"#{name}\"
}
\\score {

    

  \\new Staff \\with {
    instrumentName = \"Violon\"
    midiInstrument = \"violin\"
  } \\Myscore

}


"


wow="./public/uploads/"
hi=self.name.parameterize
p wow+hi
File.write(wow+"hey"+hi+".html", "<lilypond staffsize=34>"+@myscore+"</lilypond>")
@hey=`(cd #{wow} && lilypond-book hey#{hi}.html -f html --output #{hi})`

end

end
