(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(safe-local-variable-values
	 '((projectile-project-configure-cmd . "cmake -S . -B Build -DCMAKE_EXPORT_COMPILE_COMMANDS=On -DCMAKE_CXX_COMPILER=clang++ -DCMAKE_C_COMPILER=clang -G\"Unix Makefiles\" -DCMAKE_BUILD_TYPE=Debug")
	   (projectile-project-configure-cmd . "cmake -S . -B Build -DCMAKE_EXPORT_COMPILE_COMMANDS=On -DCMAKE_CXX_COMPILER=clang++ -DCMAKE_C_COMPILER=clang -G\"Unix Makefiles\" -DCMAKE_BUILD_TYPE=Release")
	   (projectile-project-run-cmd . "cmake --build Build --target Run --parallel 8")
	   (projectile-project-compilation-cmd . "cmake --build Build --parallel 8"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
