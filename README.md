#Brian's .vim setup#

ymmv

# Quick Start #
    git clone git@github.com:brian-leung/dotvim.git ~/.vim
    ln -sf ~/.vim/.vimrc ~/.vimrc
    cd .vim
    git submodule init
    git submodule update

# CTags #
  To use ctags and automate tagging code, add the following line to your cronjobs:

      */30 * * * * cd $HOME/<PROJECT_DIRECTORY>; ctags -R --python-kinds=-i * 2> /dev/null


[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/brian-leung/dotvim/trend.png)](https://bitdeli.com/free "Bitdeli Badge")

