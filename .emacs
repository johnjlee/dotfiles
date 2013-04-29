;; -*- lisp -*-
(setq inhibit-splash-screen t)
(setq meta-keys 'alt)
(tool-bar-mode -1)
(menu-bar-mode nil)
(scroll-bar-mode nil)
(subword-mode)

(defun up-slightly () (interactive) (scroll-up 5))
(defun down-slightly () (interactive) (scroll-down 5))
(global-set-key [mouse-4] 'down-slightly)
(global-set-key [mouse-5] 'up-slightly)

(defun up-one () (interactive) (scroll-up 1))
(defun down-one () (interactive) (scroll-down 1))
(global-set-key [S-mouse-4] 'down-one)
(global-set-key [S-mouse-5] 'up-one)


(defun up-a-lot () (interactive) (scroll-up))
(defun down-a-lot () (interactive) (scroll-down))
(global-set-key [C-mouse-4] 'down-a-lot)
(global-set-key [C-mouse-5] 'up-a-lot)

; Add a newline to the end of everything.
(setq require-final-newline t)

; Show trailing whitespace, and also highlight tab characters.
(setq-default show-trailing-whitespace t)
(add-hook 'font-lock-mode-hook
          (lambda ()
            (font-lock-add-keywords
             nil
             '(("\t" 0 'trailing-whitespace prepend)))))
(global-font-lock-mode t)


(add-hook 'c-mode-hook (function (lambda ()
                                   (c-set-style "bsd")
                                   (setq c-basic-offset 2)
                                   (setq c-brace-offset -4)
                                   (c-set-offset 'innamespace 0)
                                   (c-set-offset 'namespace-open 0)
                                   (c-set-offset 'namespace-close 0)
                                   (setq indent-tabs-mode nil))))

(add-hook 'python-mode-hook (function (lambda ()
                                        (setq tab-width 2)
                                        (setq py-indent-offset 2)
                                        (setq py-smart-indentation)
                                        (setq indent-tabs-mode nil)
                                        (setq python-indent 2)
                                        (subword-mode))))

(add-hook 'c++-mode-hook (function (lambda ()
                                     (c-set-style "bsd")
                                     (setq c-basic-offset 2)
                                     (setq c-brace-offset -4)
                                     (c-set-offset 'innamespace 0)
                                     (c-set-offset 'namespace-open 0)
                                     (c-set-offset 'namespace-close 0)
                                     (setq indent-tabs-mode nil))))

(add-hook 'html-mode-hook (function (lambda ()
                                      (setq indent-tabs-mode nil))))

(add-hook 'java-mode-hook (function (lambda ()
                                      (c-set-style "bsd")
                                      (setq c-basic-offset 2)
                                      (setq c-brace-offset -4)
                                      (subword-mode)
                                      (setq indent-tabs-mode nil))))

(add-hook 'js-mode-hook (function (lambda ()
                                    (setq js-indent-level 2)
                                    (subword-mode)
                                    (setq indent-tabs-mode nil))))

(add-hook 'css-mode-hook (function (lambda ()
                                     (setq css-indent-offset 2)
                                     (subword-mode)
                                     (setq indent-tabs-mode nil))))

'(c-offsets-alist (quote ((innamespace . 0))))

(add-hook 'latex-mode-hook (function (lambda()
                                       (auto-fill-mode))))
(set-background-color "black")
(setq tex-dvi-view-command "xdvi")
(set-foreground-color "white")
(set-default-font "10x20")
(global-set-key [\M-s] 'execute-extended-command)
(global-set-key "\C-cw" 'delete-trailing-whitespace)

(global-set-key "\C-c\C-r" 'replace-string)

(add-to-list 'Info-default-directory-list "/usr/share/info")
