;;; init-c.el --- -*- lexical-binding: t -*-
;;
;; Copyright (C) 2019 Mingde Zeng
;;
;; Filename: init-c.el
;; Description: Initialize CCMode
;; Author: Mingde (Matthew) Zeng
;; Created: Fri Mar 15 10:58:29 2019 (-0400)
;; Version: 2.0.0
;; URL: https://github.com/MatthewZMD/.emacs.d
;; Keywords: M-EMACS .emacs.d
;; Compatibility: emacs-version >= 25.1
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;; Commentary:
;;
;; This initialize cc-mode
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or (at
;; your option) any later version.
;;
;; This program is distributed in the hope that it will be useful, but
;; WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
;; General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs.  If not, see <https://www.gnu.org/licenses/>.
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;; Code:

;; CCModeConf
(use-package cc-mode
  :ensure nil
  :bind (:map c-mode-base-map
              ("<f5>" . compile))
  :hook (c-mode-common . (lambda ()
                           (c-set-style "bsd")
                           (setq-default c-basic-offset 4)
                           (c-set-offset 'comment-intro 0)
                           (c-set-offset 'innamespace 0))))
;; -CCModeConf

;; CPPFontLockPac
(use-package modern-cpp-font-lock
    :diminish
    :init (modern-c++-font-lock-global-mode t))
;; -CPPFontLockPac

(provide 'init-c)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-c.el ends here
