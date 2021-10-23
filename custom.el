(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(c-basic-offset 2)
 '(safe-local-variable-values
	 '((projectile-project-run-cmd . "cd ./Build/Bin && ./Editor")
		 (projectile-globally-ignored-directory-names "Build" "External")
		 (projectile-project-run-cmd . "./Build/Bin/Editor")
		 (projectile-project-compilation-cmd . "cmake --build Build")
		 (projectile-project-configure-cmd . "cmake -S . -B Build -DCMAKE_EXPORT_COMPILE_COMMANDS=On -DCMAKE_BUILD_TYPE=Asan")))
 '(standard-indent 2))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
