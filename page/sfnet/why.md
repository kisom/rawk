why write rawk?
===============

rawk was born out of my frustration in building simple sites that did not 
need to change often and did not need to serve dynamic content. i felt that
it being the 21st century, we should have a better way to quickly do this.

i came across the suckless webframework (and smu, coincidentally) which 
worked for a small site i wanted to build. when i added in a larger site,
it seemed to struggle building it. i figured i'd seen it was possible to do
what i wanted, so i rolled my sleeves up and wrote rawk. as i regularly use
multiple operating systems (debian, openbsd, and os x), it is pretty important
to me to have as portable of code as possible.

a lot of credit goes to sw, as this was very much inspired by and a direct
result of my encounter with sw. in fact, rawk's templates are based on the
ones used in sw.

the goals of rawk are:
* lynx friendly (i reworked the site menu to look better under lynx)
* simple code (rawk is currently 85 actual lines of code and 134 total lines)
* compliant (rawk only uses posix syntax and generates w3c compliant html)
* customisable (simple code + templates means the user has quite a bit of room
to customise their site)
* portability (if i wanted to depend on a particular shell or implementation of
sed, i would have just written this in perl)
* build websites like i build code (easily version controlled, automate the
repetitive tasks to focus on adding content)

