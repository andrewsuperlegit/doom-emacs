;; -*- no-byte-compile: t; -*-
;;; tools/lsp/packages.el

(if (featurep! +eglot)
    (package! eglot :pin "5cc8df63d86a6c43134dd6e4e3ae26cfae14e66a")
  (package! lsp-mode :pin "9aa22de1b2424a44c8c4a3f9e03b3f9a39636a77")
  (package! lsp-ui :pin "9953a4857227ad83fb18bc295c8c12b1e4d29007")
  (when (featurep! :completion ivy)
    (package! lsp-ivy :pin "bccd86028e669f5a1cad78364775fe7a0741ff93"))
  (when (featurep! :completion helm)
    (package! helm-lsp :pin "c2c6974dadfac459b1a69a1217441283874cea92"))
  (when (featurep! :completion vertico)
    (package! consult-lsp :pin "c882749e91e4de3bae17d825ac9950cc074b1595")))
