;; nasb-mode - an Emacs major mode for reading the NASB
;; Copyright (C) 2014 Scott Weldon

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

(defvar nasb-location nil)

(setq nasb-keywords
      '(("\nGen \\|\nEx \\|\nLev \\|\nNum \\|\nDeut \\|\nJosh \\|\nJudg \\|\nRuth \\|\n1 Sam \\|\n2 Sam \\|\n1 Kin \\|\n2 Kin \\|\n1 Chr \\|\n2 Chr \\|\nEzra \\|\nNeh \\|\nEsth \\|\nJob \\|\nPs \\|\nProv \\|\nEccl \\|\nSong \\|\nIs \\|\nJer \\|\nLam \\|\nEzek \\|\nDan \\|\nHos \\|\nJoel \\|\nAmos \\|\nJon \\|\nMic \\|\nNah \\|\nHab \\|\nZeph \\|\nHag \\|\nZech \\|\nMal \\|\nMatt \\|\nMark \\|\nLuke \\|\nJohn \\|\nActs \\|\nRom \\|\n1 Cor \\|\n2 Cor \\|\nGal \\|\nEph \\|\nPhil \\|\nCol \\|\n1 Thess \\|\n2 Thess \\|\n1 Tim \\|\n2 Tim \\|\nTitus \\|\nPhilem \\|\nHeb \\|\nJames \\|\n1 Pet \\|\n2 Pet \\|\n1 John \\|\n2 John \\|\n3 John \\|\nJude \\|\nRev" . font-lock-keyword-face)
))

(define-derived-mode nasb-mode fundamental-mode
  (setq font-lock-defaults '(nasb-keywords))
  (setq mode-name "nasb"))

(defun nasb()
  (interactive)
  (unless nasb-location
    (error "nasb-location is not defined."))
  (if (get-buffer "*NASB*")
      (switch-to-buffer "*NASB*")
    (when nasb-location
      (find-file nasb-location)
      (read-only-mode)
      (nasb-mode)
      (rename-buffer "*NASB*"))))

(provide 'nasb-mode)
