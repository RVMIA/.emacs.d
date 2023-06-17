(require 'autothemer)

(autothemer-deftheme
 ame "custom theme"

 ((((class color) (min-colors #xFFFFFF)))

 (ame-black "#000000")
 (ame-white "#ffffff")
 (ame-grey "#0f0f0f")
 (ame-orange "#df5714")
 (ame-purple "#6e18cc")
 (ame-green-light "#3bae4b")
 (ame-green-dark "#1f712a")
 (ame-blue "#0018ff")
 (ame-red "#dc3d3d")
 (ame-sky-blue "#96a0ff")
 (ame-lavender "#d5dcff")
 (ame-light-pink "#ffb2ce")
 (ame-dark-pink "#a07082")
 (ame-light-grey "#efecec"))

 ((default (:foreground ame-light-grey :background ame-grey))
  (cursor (:background ame-orange))
  (region (:background ame-sky-blue))
  (mode-line (:background ame-light-pink))
  (mode-line-inactive (:background ame-dark-pink))
  (font-lock-keyword-face (:foreground ame-red))
  (font-lock-constant-face (:foreground ame-green-dark))
  (font-lock-string-face (:foreground ame-light-pink))
  (font-lock-builtin-face (:foreground ame-green-light))
  (font-lock-comment-face (:foreground ame-dark-pink))
  (font-lock-variable-name-face (:foreground ame-purple))

  (org-level-1 (:foreground ame-green-light))
  (org-level-2 (:foreground ame-orange))))

(provide-theme 'ame)
