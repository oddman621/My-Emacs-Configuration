(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
    (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)

;; auto install use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

; make ibuffer default
(defalias 'list-buffers 'ibuffer) 

(set-language-environment "Korean")	
(prefer-coding-system 'utf-8)
(global-set-key (kbd "<kana>") 'toggle-input-method)

(when (string-equal system-type "windows-nt")
(setq exec-path (append '("C:/emacs-25.1-2-x86_64-w64-mingw32/bin" "C:/MinGW/bin" "C:/MinGW/msys/1.0/bin" "C:/glo662wb/bin") exec-path))
(setenv "PATH" (concat "C:\\emacs-25.1-2-x86_64-w64-mingw32\\bin;" "C:\\MinGW\\bin;" "C:\\MinGW\\msys\\1.0\\bin;" "C:\\glo662wb\\bin;" (getenv "PATH")))
)

(add-hook 'c-mode-common-hook
	  (lambda ()
	    (when (derived-mode-p 'c-mode 'c++-mode 'java-mode 'asm-mode)
	      (ggtags-mode 1))))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (ggtags use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

