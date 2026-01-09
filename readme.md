### dots

My dotfiles for arch, for my laptop, `daedalus`, and my desktop, `eurydice`.

Eurydice has an nvidia graphics card, and I often use it with two monitors, whereas daedalus is a lenovo thinkpad t480, and so
there are some small configuration differences. But for the most part, they share common files in the `common` folder.

#### applying

```
cd
git clone git@github.com:melogale/dots.git
cd dots
stow -D common eurydice daedalus
# use either eurydice or daedalus's machine specific config.
# not both. here i use eurydice.
stow --no-folding --adopt common eurydice
git restore
```
