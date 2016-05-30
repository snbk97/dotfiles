(setq dotfiles-ui-packages
 '(
   nlinum
   (linum-relative :excluded t)
   smooth-scrolling

   dracula-theme
   gotham-theme
   leuven-theme
   moe-theme
   molokai-theme
   monokai-theme
   subatomic-theme
  ))

(defun dotfiles-ui/init-nlinum ()
  (use-package nlinum
   :init
   (setq nlinum-format "%5d")
   :config
   (progn
    (when dotspacemacs-line-numbers
      (remove-hook 'prog-mode-hook 'linum-mode)
      (remove-hook 'text-mode-hook 'linum-mode)
      (add-hook 'prog-mode-hook 'nlinum-mode)
      (add-hook 'text-mode-hook 'nlinum-mode))
    (spacemacs|add-toggle line-numbers
      :status nlinum-mode
      :on (nlinum-mode)
      :off (nlinum-mode -1)
      :documentation "Show the line numbers."
      :evil-leader "tn")
   )))

(defun dotfiles-ui/post-init-smooth-scrolling ()
  (setq
   scroll-margin 5
   mouse-wheel-scroll-amount '(1 ((shift) . 1))
  ))
