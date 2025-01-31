PRO find_longest_increasing_sequence, array, longest_seq_indices, longest_seq_array
  
  ; Initialize variables
  longest_seq_indices = []
  longest_seq_array = []

  temp_indices = []
  temp_array = []

  prev_value = -1  ; Set to a value outside the valid range

  FOR k = 0, N_ELEMENTS(array) - 1 DO BEGIN
    value = array[k]

    IF (value GE 4.0) AND (value LE 88.8) THEN BEGIN
      IF (prev_value LT 0) OR (value GT prev_value) THEN BEGIN
        temp_indices = [temp_indices, k]
        temp_array = [temp_array, value]
        prev_value = value
      ENDIF ELSE BEGIN
        ; Check if the found sequence is the longest
        IF (N_ELEMENTS(temp_array) GT N_ELEMENTS(longest_seq_array)) THEN BEGIN
          longest_seq_indices = temp_indices
          longest_seq_array = temp_array
        ENDIF

        ; Reset sequence search
        temp_indices = [k]
        temp_array = [value]
        prev_value = value
      ENDELSE
    ENDIF
  ENDFOR

  ; Final check for the last sequence
  IF (N_ELEMENTS(temp_array) GT N_ELEMENTS(longest_seq_array)) THEN BEGIN
    longest_seq_indices = temp_indices
    longest_seq_array = temp_array
  ENDIF

; ______________________________________________________________________________________________________
; ______________________________________________________________________________________________________
END
