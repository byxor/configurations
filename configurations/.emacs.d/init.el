(defun relatively-import (file-name)
  (absolutely-import (full-path-of file-name)))

(defun full-path-of (file-name)
  (expand-file-name file-name (file-name-directory load-file-name)))

(defun absolutely-import (file-path)
  (progn (message "Importing '%s'..." file-name) (load-file file-path)))

(package-initialize)

(mapcar 'relatively-import
        '("melpa-loader.el"
          "arista-loader.el"
          "custom-binds.el"
          "default-modes.el"
          "disable-startup-message.el"
          "unsorted-functions.el"
          "autosave-changes.el"))

;; Automated custom stuff
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(company-quickhelp-color-background "#b0b0b0")
 '(company-quickhelp-color-foreground "#232333")
 '(custom-enabled-themes (quote (wombat)))
 '(custom-safe-themes
   (quote
    ("6dd2b995238b4943431af56c5c9c0c825258c2de87b6c936ee88d6bb1e577cb9" "604648621aebec024d47c352b8e3411e63bdb384367c3dd2e8db39df81b475f5" "9b402e9e8f62024b2e7f516465b63a4927028a7055392290600b776e4a5b9905" "61a1e541d51262c86ac14faa90ed300163be8bdd22edb0a738654cb1da740845" "e9460a84d876da407d9e6accf9ceba453e2f86f8b86076f37c08ad155de8223c" "bea5fd3610ed135e6ecc35bf8a9c27277d50336455dbdd2969809f7d7c1f7d79" "83db918b06f0b1df1153f21c0d47250556c7ffb5b5e6906d21749f41737babb7" "1db337246ebc9c083be0d728f8d20913a0f46edc0a00277746ba411c149d7fe5" "7997e0765add4bfcdecb5ac3ee7f64bbb03018fb1ac5597c64ccca8c88b1262f" "50e9ef789d599d39a9ecb6e983757306ea19198d1a8f182be7fd3242b613f00e" "a0feb1322de9e26a4d209d1cfa236deaf64662bb604fa513cca6a057ddf0ef64" "ab04c00a7e48ad784b52f34aa6bfa1e80d0c3fcacc50e1189af3651013eb0d58" "04dd0236a367865e591927a3810f178e8d33c372ad5bfef48b5ce90d4b476481" "27b97024320d223cbe0eb73104f2be8fcc55bd2c299723fc61d20057f313b51c" "7356632cebc6a11a87bc5fcffaa49bae528026a78637acd03cae57c091afd9b9" "1b27e3b3fce73b72725f3f7f040fd03081b576b1ce8bbdfcb0212920aec190ad" "2b8dff32b9018d88e24044eb60d8f3829bd6bbeab754e70799b78593af1c3aba" "3fa07dd06f4aff80df2d820084db9ecbc007541ce7f15474f1d956c846a3238f" "7153b82e50b6f7452b4519097f880d968a6eaf6f6ef38cc45a144958e553fbc6" "de0b7245463d92cba3362ec9fe0142f54d2bf929f971a8cdf33c0bf995250bcf" "251348dcb797a6ea63bbfe3be4951728e085ac08eee83def071e4d2e3211acc3" "ee89863f86247942d9fc404d47b2704475b146c079c1dcd2390d697ddfa9bdf4" "87073e92c4437df15f127e18cb05b2832c99689201c4d81dee3c20c7197d62e7" "adde823697efd8b7532eb0406b60903310979b334e431f35d282399d6655512e" "5e3fc08bcadce4c6785fc49be686a4a82a356db569f55d411258984e952f194a" "64ca5a1381fa96cb86fd6c6b4d75b66dc9c4e0fc1288ee7d914ab8d2638e23a9" "721bb3cb432bb6be7c58be27d583814e9c56806c06b4077797074b009f322509" "946e871c780b159c4bb9f580537e5d2f7dba1411143194447604ecbaf01bd90c" "28ec8ccf6190f6a73812df9bc91df54ce1d6132f18b4c8fcc85d45298569eb53" "551596f9165514c617c99ad6ce13196d6e7caa7035cea92a0e143dbe7b28be0e" default)))
 '(cycle-themes-mode t)
 '(diary-entry-marker (quote font-lock-variable-name-face))
 '(emms-mode-line-icon-image-cache
   (quote
    (image :type xpm :ascent center :data "/* XPM */
static char *note[] = {
/* width height num_colors chars_per_pixel */
\"    10   11        2            1\",
/* colors */
\". c #358d8d\",
\"# c None s None\",
/* pixels */
\"###...####\",
\"###.#...##\",
\"###.###...\",
\"###.#####.\",
\"###.#####.\",
\"#...#####.\",
\"....#####.\",
\"#..######.\",
\"#######...\",
\"######....\",
\"#######..#\" };")))
 '(fci-rule-color "#f6f0e1")
 '(gnus-logo-colors (quote ("#259ea2" "#adadad")))
 '(gnus-mode-line-image-cache
   (quote
    (image :type xpm :ascent center :data "/* XPM */
static char *gnus-pointer[] = {
/* width height num_colors chars_per_pixel */
\"    18    13        2            1\",
/* colors */
\". c #358d8d\",
\"# c None s None\",
/* pixels */
\"##################\",
\"######..##..######\",
\"#####........#####\",
\"#.##.##..##...####\",
\"#...####.###...##.\",
\"#..###.######.....\",
\"#####.########...#\",
\"###########.######\",
\"####.###.#..######\",
\"######..###.######\",
\"###....####.######\",
\"###..######.######\",
\"###########.######\" };")))
 '(hl-paren-colors
   (quote
    ("#B9F" "#B8D" "#B7B" "#B69" "#B57" "#B45" "#B33" "#B11")))
 '(indent-tabs-mode nil)
 '(markdown-command "/usr/bin/pandoc")
 '(notmuch-search-line-faces
   (quote
    (("unread" :foreground "#aeee00")
     ("flagged" :foreground "#0a9dff")
     ("deleted" :foreground "#ff2c4b" :bold t))))
 '(nrepl-message-colors
   (quote
    ("#336c6c" "#205070" "#0f2050" "#806080" "#401440" "#6c1f1c" "#6b400c" "#23733c")))
 '(package-selected-packages
   (quote
    (ample-theme ample-zen-theme anti-zenburn-theme arjen-grey-theme atom-dark-theme atom-one-dark-theme autumn-light-theme avk-emacs-themes badger-theme badwolf-theme base16-theme basic-theme birds-of-paradise-plus-theme cypher-mode cycle-themes cyberpunk-theme creamsody-theme colonoscopy-theme clues-theme chyla-theme cherry-blossom-theme challenger-deep-theme calmer-forest-theme busybee-theme alect-themes csharp-mode treemacs projectile sr-speedbar pomidor pomodoro tdd-status-mode-line afternoon-theme abyss-theme markdown-mode auto-complete ace-window 2048-game)))
 '(pdf-view-midnight-colors (quote ("#232333" . "#c7c7c7")))
 '(red "#ffffff")
 '(vc-annotate-background "#f6f0e1")
 '(vc-annotate-color-map
   (quote
    ((20 . "#d81212")
     (40 . "#f71010")
     (60 . "#6a621b")
     (80 . "#958323")
     (100 . "#ef8300")
     (120 . "#9ca30b")
     (140 . "#008b45")
     (160 . "#077707")
     (180 . "#028902")
     (200 . "#1c9e28")
     (220 . "#3cb368")
     (240 . "#0d7b72")
     (260 . "#358d8d")
     (280 . "#286060")
     (300 . "#2020cc")
     (320 . "#1111ff")
     (340 . "#2c53ca")
     (360 . "#a020f0"))))
 '(vc-annotate-very-old-color "#a020f0"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
