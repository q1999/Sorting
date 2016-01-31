(defun sort-vector (vector-length sort-type)
  (let ((my-sort sort-type)
        (unsorted-vector (create-unsorted-vector vector-length)))
    (funcall (intern my-sort) unsorted-vector)
    (princ unsorted-vector t)))

(defun create-unsorted-vector (args)
  ;(fill-vector)
  (princ "create-unsorted-vector has been called...\n")
  (fill-unsorted-vector (make-vector args ?\C-@))
  )

(defun fill-unsorted-vector (unsorted-vector)
  (setq i 0)
  (while (< i (1- (length unsorted-vector)))
    (setq ran (random (length unsorted-vector)))
    (when (not (does-vector-contain unsorted-vector ran))
      (aset unsorted-vector i ran)
      (setq i (1+ i))
      )
    )
  (eval unsorted-vector)
  )

(defun does-vector-contain (vector args)
  (setq k 0)
  (setq result nil)
  (while (< k (length vector))
    (setq value-current-slot (aref vector k))
    (if (eq value-current-slot args)
        (setq result value-current-slot))
    (setq k (1+ k)))
  (eval result))

(defun bubble-sort (unsorted-vector)
  (princ "bubble-sort has been called...\n")
  ()
  )

(defun quick-sort (unsorted-vector)
  (princ "quick-sort has been called...\n")
  ()
  )

