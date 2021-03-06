;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.
;;
;; ----------------------------------------------------------------
;; TASKS
;; ----------------------------------------------------------------
;;
;; 5. how to select rectangle
;; 6. How to fold code
;;
;;
;; ----------------------------------------------------------------
;; TIPS
;; ----------------------------------------------------------------
;;
;; 1. Add snippet for coding
;;    - DONE (configured automatically)
;; 2. Add autocomplete for header
;;    - DONE by configuration
;; 3. Add autocomplete for invoking
;;    - DONE by configuring ycmd
;;	| modify : -> ycmd-server-command '("python" "/Users/kevinzhong/git/ycmd/ycmd")
;; 4. Add code navigation
;;    - Generate TAGS in the root directory of your project
;;	| find . -name "*.cc" -or -name "*.hh"  | xargs etags --members --language=c++
;;    - Set TAGS for emacs
;;	| M-x visit-tags-table
;;      |  OR configure the tagfile in the configuration
;;         (setq tags-file-name "~/git/leveldb/TAGS")
;;    - Jump code
;;      Emacs
;;	| M-. ->
;;	| M-* <-
;;      VIM
;;      | C-]
;;      | C-t
;;
;; ----------------------------------------------------------------
;; How to mark the area?
;; Ctrl-Shit-Space == mark set
;; M-w == settle mark
;;



(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `!distribution'. For now available distributions are `spacemacs-core'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load. If it is the symbol `all' instead
   ;; of a list then all discovered layers will be installed.
   dotspacemacs-configuration-layers
   '(
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     ;;
     ;; ----------------------------------------------------------------
     ;; LANGUAGE
     ;; ----------------------------------------------------------------
     ;;
     (c-c++ :variables
            c-c++-default-mode-for-headers 'c++-mode
            c-c++-enable-clang-support t)
     python
     java
     javascript
     html
     ;;
     ;; ----------------------------------------------------------------
     ;; TOOL
     ;; ----------------------------------------------------------------
     ;;
     colors
     auto-completion
     semantic
     better-defaults
     emacs-lisp
     gtags
     ycmd
     eyebrowse
     deft
     ;;emoji
     ;;
     markdown
     ;;spell-checking
     syntax-checking
     ;;
     ;; ----------------------------------------------------------------
     ;; VERSION CONTROL
     ;; ----------------------------------------------------------------
     ;;
     version-control
     git
     ;;
     ;; ----------------------------------------------------------------
     ;; DOCUMENT
     ;; ----------------------------------------------------------------
     ;;
     org
     markdown
     ;;
     ;;
     ;;
     ;; ----------------------------------------------------------------
     ;; VARIABLE
     ;; ----------------------------------------------------------------
     ;;
     ;; cat
     (colors :variables
             colors-enable-nyan-cat-progress-bar t
     )

     ;; snippets
     (auto-completion :variables
                      auto-completion-enable-snippets-in-popup t
                      ;;auto-completion-enable-sort-by-usage t
     )

     ;; ycmd
     (ycmd :variables
           ycmd-server-command '("python" "/Users/ezhonke/git/ycmd/ycmd")
     )

     ;; shell
;;     (shell :variables
;;            shell-default-shell 'ansi-term
;;            shell-default-term-shell "bin/zsh"
;;            shell-default-height 30
;;            shell-default-position 'bottom
;;     )

     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages then consider to create a layer, you can also put the
   ;; configuration in `dotspacemacs/config'.
   dotspacemacs-additional-packages '()
   ;; A list of packages and/or extensions that will not be install and loaded.
   dotspacemacs-excluded-packages '()
   ;; If non-nil spacemacs will delete any orphan packages, i.e. packages that
   ;; are declared in a layer which is not a member of
   ;; the list `dotspacemacs-configuration-layers'. (default t)
   dotspacemacs-delete-orphan-packages t))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; One of `vim', `emacs' or `hybrid'. Evil is always enabled but if the
   ;; variable is `emacs' then the `holy-mode' is enabled at startup. `hybrid'
   ;; uses emacs key bindings for vim's insert mode, but otherwise leaves evil
   ;; unchanged. (default 'vim)
   dotspacemacs-editing-style 'emacs
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official
   ;; List of items to show in the startup buffer. If nil it is disabled.
   ;; Possible values are: `recents' `bookmarks' `projects'.
   ;; (default '(recents projects))
   dotspacemacs-startup-lists '(recents projects)
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(
                         monokai
                         spacemacs-dark
                         spacemacs-light
                         solarized-light
                         solarized-dark
                         leuven
                         zenburn)
   ;; If non nil the cursor color matches the state color.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font. `powerline-scale' allows to quickly tweak the mode-line
   ;; size to make separators look not too crappy.
   dotspacemacs-default-font '("Source Code Pro"
                               :size 14
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m)
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; The command key used for Evil commands (ex-commands) and
   ;; Emacs commands (M-x).
   ;; By default the command key is `:' so ex-commands are executed like in Vim
   ;; with `:' and Emacs commands are executed with `<leader> :'.
   dotspacemacs-command-key ":"
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; If non nil then `ido' replaces `helm' for some commands. For now only
   ;; `find-files' (SPC f f), `find-spacemacs-file' (SPC f e s), and
   ;; `find-contrib-file' (SPC f e c) are replaced. (default nil)
   dotspacemacs-use-ido nil
   ;; If non nil, `helm' will try to miminimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-micro-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters the
   ;; point when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil advises quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init'.  You are free to put any
user code."
  ;;(setq yas-snippet-dirs "~/.emacs.d/private/snippets")

    ;; proxy
  (setq url-proxy-services '(("http" . "www-proxy.exu.ericsson.se:8080")))

  )

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
 This function is called at the very end of Spacemacs initialization after
layers configuration. You are free to put any user code."

        ;; ----------------------------------------------------------------
        ;; GLOBAL
        ;; ----------------------------------------------------------------
        ;;
        ;; no backup file
        (setq-default make-backup-files nil)

        ;; company
        (global-company-mode t)

        ;;(set-default yas-prompt-functions '(yas-ido-prompt yas-dropdown-propt))

        ;;(diminish 'global-whitespace-mode)

        (setq ycmd-request-message-levedl -1)

        (setq helm-ag-insert-at-point 'symbol)

        (setq company-backends-c-mode-common '((company-c-headers
                                                company-ycmd
                                                company-dabbrev-code
                                                company-dabbrev :with company-yasnippet
                                               ) company-files
                                              )
        )



        ;; display time
        (display-time)


        ;; neotree
        (global-set-key [f8] 'neotree-toggle)

        ;; line number
        (global-linum-mode t)

        ;; indent
        (setq inden-tabs-mode nil)
        (setq default-tab-width 8)
        (setq tab-width 8)
        (setq tab-stop-list())

        ;; imenu
        (setq imenu-sort-function 'imenu--sort-by-name)

        ;; Bind clang-format-region to C-M-tab in all modes:
        (global-set-key [C-M-tab] 'clang-format-region)
        ;; Bind clang-format-buffer to tab on the c++-mode only:
        (add-hook 'c++-mode-hook 'clang-format-bindings)
        (defun clang-format-bindings ()
          (define-key c++-mode-map [tab] 'clang-format-buffer))

        ;; define function
        (add-hook 'c-mode-hook 'linux-c-mode)

        (defun linux-c-mode()
          (define-key c-mode-map [return] 'newline-and-indent)
          (interactive)
          (c-set-style "K&R")
          (c-toggle-hungry-state)
          (setq c-basic-offset 8)
          (setq c++-basic-offset 8)
          (imenu-add-menubar-index)
          (which-function-mode)
        )


        ;; yasnippet
        (require 'yasnippet)
        (yas-global-mode 1)

        ;; cedet
        (require 'cedet)
        (global-ede-mode t)

        ;; set TAGS file
        (setq tags-file-name "/c/Users/ezhonke/git/leveldb/TAGS")

        ;; powerline
        (setq powerline-default-separator 'arrow)

        ;;(require 'ycmdtest)
        ;;(ert-run-tests-interactively "ycmd-test")


        ;; ----------------------------------------------------------------
        ;; gtags configuration
        ;; ----------------------------------------------------------------
        ;;
        ;; GNU GLOBAL incremental update
        ;;       (defun gtags-root-dir ()
        ;;           "Returns GTAGS root directory or nil if doesn't exist."
        ;;           (with-temp-buffer
        ;;           (if (zerop (call-process "global" nil t nil "-pr"))
        ;;               (buffer-substring (point-min) (1- (point-max))) nil)
        ;;           )
        ;;           )
        ;;
        ;;       (defun gtags-update ()
        ;;           "Make GTAGS incremental update"
        ;;           (call-process "global" nil nil nil "-u")
        ;;       )
        ;;
        ;;       (defun gtags-update-hook ()
        ;;           (when (gtags-root-dir)
        ;;           (gtags-update)
        ;;           )
        ;;       )
        ;;
        ;;       (add-hook 'after-save-hook #'gtags-update-hook)
        ;;
        ;;
        ;;
        ;;       ;;GNU GLOBAL update for a single file
;;        (defun gtags-update-single(filename)
          ;;           "Update Gtags database for changes in a single file"
;;           (interactive)
;;           (start-process "update-gtags" "update-gtags" "bash" "-c" (concat "cd " (gtags-root-dir) " ; gtags --single-update " filename ))
;;       )
;;
;;       (defun gtags-update-current-file()
;;           (interactive)
;;           (defvar filename)
;;            (setq filename (replace-regexp-in-string (gtags-root-dir) "." (buffer-file-name (current-buffer))))
;;            (gtags-update-single filename)
;;            (message "Gtags updated for %s" filename)
;;        )

;;        (defun gtags-update-hook()
;;            "Update GTAGS file incrementally upon saving a file"
;;            (when gtags-mode
;;            (when (gtags-root-dir)
;;                (gtags-update-current-file)
;;            )
;;            )
;;        )


;;        (add-hook 'after-save-hook 'gtags-update-hook)
        ;; ----------------------------------------------------------------

)

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (powerline magit helm git-commit evil-org evil-indent-textobject auto-dictionary ws-butler window-numbering web-mode web-beautify volatile-highlights vi-tilde-fringe toc-org tagedit stickyfunc-enhance srefactor spray spacemacs-theme spaceline smooth-scrolling smeargle slim-mode scss-mode sass-mode restart-emacs rainbow-mode rainbow-identifiers rainbow-delimiters pyvenv pytest pyenv-mode popwin pip-requirements persp-mode pcre2el paradox page-break-lines org-repo-todo org-present org-pomodoro org-plus-contrib org-bullets open-junk-file neotree move-text mmm-mode markdown-toc markdown-mode magit-gitflow macrostep lorem-ipsum linum-relative leuven-theme less-css-mode json-mode js2-refactor js2-mode js-doc jade-mode info+ indent-guide ido-vertical-mode hy-mode hungry-delete htmlize highlight-parentheses highlight-numbers highlight-indentation helm-themes helm-swoop helm-pydoc helm-projectile helm-mode-manager helm-make helm-gtags helm-gitignore helm-flx helm-descbinds helm-css-scss helm-company helm-c-yasnippet helm-ag haml-mode google-translate golden-ratio gnuplot gitignore-mode gitconfig-mode gitattributes-mode git-timemachine git-messenger gh-md ggtags flycheck-ycmd flycheck-pos-tip flycheck flx-ido fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-magit evil-lisp-state evil-jumper evil-indent-plus evil-iedit-state evil-exchange evil-escape evil-args evil-anzu eval-sexp-fu emmet-mode emacs-eclim elisp-slime-nav disaster diff-hl deft define-word cython-mode company-ycmd company-web company-tern company-statistics company-quickhelp company-c-headers company-anaconda company coffee-mode cmake-mode clean-aindent-mode clang-format buffer-move auto-yasnippet auto-highlight-symbol auto-compile anaconda-mode aggressive-indent adaptive-wrap ace-window ace-link ace-jump-helm-line ac-ispell evil-leader evil which-key quelpa package-build use-package bind-key s dash monokai-theme)))
 '(paradox-github-token t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((((class color) (min-colors 257)) (:foreground "#F8F8F2" :background "#272822")) (((class color) (min-colors 89)) (:foreground "#F5F5F5" :background "#1B1E1C"))))
 '(company-tooltip-common ((t (:inherit company-tooltip :weight bold :underline nil))))
 '(company-tooltip-common-selection ((t (:inherit company-tooltip-selection :weight bold :underline nil)))))
