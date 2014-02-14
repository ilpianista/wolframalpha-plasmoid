About wolframalpha-plasmoid
===========================
A plasmoid for KDE plasma which redirect the text you typed to the Wolfram Alpha website.

It starts your default browser (or it opens a new tab into) to show the result on the wolfram alpha website.

[![Flattr this git repo](http://api.flattr.com/button/flattr-badge-large.png)](https://flattr.com/submit/auto?user_id=andreascarpino&url=https://github.com/andreascarpino/wolframalpha-plasmoid&title=WolframAlpha Plasmoid&language=&tags=github&category=software)

##How to install
    $ zip wolframalpha.zip package -r
    $ plasmapkg -i wolframalpha.zip
    $ kbuildsycoc4

or

    $ mkdir build
    $ cd build
    $ cmake ../
    # make install

##Licensing
LGPL
