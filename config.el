;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(setq user-full-name "Eearslya Sleiarion"
      user-mail-address "eearslya@gmail.com")

(setq doom-font (font-spec :family "Source Code Pro" :size 16 :weight 'semi-bold)
      doom-theme 'doom-one)
(unless (doom-font-exists-p doom-font)
  (setq doom-font nil))

(setq display-line-numbers-type t
      indent-tabs-mode nil
      org-directory "~/org/")

(setq-default tab-width 2)

(add-to-list 'initial-frame-alist '(fullscreen . maximized))
(doom/set-indent-width 2)

(after! cc-mode
  (setq-default
   c-basic-offset 2
   c-offsets-alist '((access-label . /) (inclass . +) (innamespace . 0))))

(after! company
  (setq company-idle-delay 0)
  (define-key company-active-map (kbd "<return>") nil)
  (define-key company-active-map (kbd "RET") nil)
  (define-key company-active-map (kbd "<tab>") #'company-complete-selection)
  (define-key company-active-map (kbd "TAB") #'company-complete-selection)
  (define-key company-active-map (kbd "SPC") nil))

(after! debugger
  (setq dap-auto-configure-mode t)
  (require 'dap-cpptools))

(after! lsp-clangd
  (set-lsp-priority! 'clangd 2)
  (setq lsp-clients-clangd-args '("-j=3"
                                  "--background-index"
                                  "--clang-tidy"
                                  "--compile-commands-dir=Build"
                                  "--completion-style=detailed"
                                  "--header-insertion=never"
                                  "--header-insertion-decorators=0")))

(after! lsp-mode-hook
  (setq lsp-restart 'auto-restart))

(after! projectile
  (setq projectile-auto-discover t
        projectile-indexing-method 'native
        projectile-project-search-path '("~/Dev" "/Dev"))
  (setq-default projectile-project-configure-cmd "cmake -S . -B Build -DCMAKE_EXPORT_COMPILE_COMMANDS=On -G\"Unix Makefiles\" -DCMAKE_C_COMPILER=clang -DCMAKE_CXX_COMPILER=clang++ -DCMAKE_BUILD_TYPE=Debug"
                projectile-project-compilation-cmd "cmake --build Build --parallel 8"
                projectile-project-run-cmd "cmake --build Build --target Run --parallel 8")
  (add-to-list 'projectile-globally-ignored-directories "^[Bb]uild$")
  (add-to-list 'projectile-globally-ignored-directories "^[Ee]xternal$"))
