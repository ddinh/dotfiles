(require 'doom-themes)

;; Global settings (defaults)
(setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
      doom-themes-enable-italic t) ; if nil, italics is universally disabled

;; Load the theme (doom-one, doom-molokai, etc); keep in mind that each theme
;; may have their own settings.
(load-theme 'doom-city-lights t)

;; Enable flashing mode-line on errors
(doom-themes-visual-bell-config)

;; Corrects (and improves) org-mode's native fontification.
(doom-themes-org-config)

;; Change powerline separator to arrow
(setq powerline-default-separator 'arrow)
(spaceline-compile)

;; Increase line spacing
(setq-default line-spacing 0.3)
