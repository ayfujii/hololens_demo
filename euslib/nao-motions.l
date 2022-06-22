#!/usr/bin/env roseus

(defun reset-sit-pose-naomodel()
  (progn (send *nao* :rarm :angle-vector #f(118 -10 90 88 0))
	 (send *nao* :larm :angle-vector #f(118 10 -90 -88 0))
	 ;(send *nao* :rarm :angle-vector #f(81 -7 50 60 -5))
	 ;(send *nao* :larm :angle-vector #f(81 7 -50 -60 5))
	 (send *nao* :rleg :angle-vector #f(-14 5 -41 121 -68 -4))
	 (send *nao* :lleg :angle-vector #f(-14 -5 -41 121 -68 4))
	 (send *nao* :head :angle-vector #f(0 0))))

(defun reset-sit-pose(&optional (time 3000))
  (progn (reset-sit-pose-naomodel)
	 (send *ri* :angle-vector (send *nao* :angle-vector) time)
	 (unix::usleep (* 1000 time))
	 (send *ri* :send-stiffness-controller :rknee-foot 0)
	 (unix::usleep (* 1000 1000))
	 (send *ri* :send-stiffness-controller :lknee-foot 0)
	 ))

(defun reset-eat-pose(&optional (time 3000))
  (progn (reset-sit-pose-naomodel)
	 (send *nao* :rarm :angle-vector #f(118 -30 110 88 0))
	 (send *nao* :larm :angle-vector #f(118 30 -110 -88 0))
	 (send *ri* :angle-vector (send *nao* :angle-vector) time)))

;最初のこんにちはのポーズ1
(defun pose0(&optional (time 3000))
  (progn (send *nao* :rarm :angle-vector #f(30 -50 118 88 0))
	 (send *nao* :larm :angle-vector #f(118 30 -110 -88 0))
	 (send *nao* :head :angle-vector #f(0 -10))
	 (send *ri* :angle-vector (send *nao* :angle-vector) time)))
(defun pose1(&optional (time 3000))
  (progn (send *nao* :rarm :angle-vector #f(20 -35 100 88 0))
	 (send *nao* :larm :angle-vector #f(118 30 -110 -88 0))
	 (send *nao* :head :angle-vector #f(0 0))
	 (send *ri* :angle-vector (send *nao* :angle-vector) time)))
(defun pose1-l(&optional (time 3000))
  (progn (send *nao* :rarm :angle-vector #f(40 -35 100 88 0))
	 (send *nao* :larm :angle-vector #f(118 30 -110 -88 0))
	 (send *nao* :head :angle-vector #f(10 0))
	 (send *ri* :angle-vector (send *nao* :angle-vector) time)))
(defun pose1-r(&optional (time 3000))
  (progn (send *nao* :rarm :angle-vector #f(40 -35 100 88 0))
	 (send *nao* :larm :angle-vector #f(118 30 -110 -88 0))
	 (send *nao* :head :angle-vector #f(-10 0))
	 (send *ri* :angle-vector (send *nao* :angle-vector) time)))

;;両腕を上げたポーズ
(defun pose2(&optional (time 3000))
  (progn (send *nao* :rarm :angle-vector #f(70 -35 100 88 0))
	 (send *nao* :larm :angle-vector #f(30 50 -118 -88 0))
	 (send *nao* :head :angle-vector #f(0 0))
	 (send *ri* :angle-vector (send *nao* :angle-vector) time)))

;;両腕を広げたポーズ
(defun pose3(&optional (time 3000))
  (progn (send *nao* :rarm :angle-vector #f(40 -35 119 30 0))
	 (send *nao* :larm :angle-vector #f(40 35 -119 -30 0))
	 (send *nao* :head :angle-vector #f(0 0))
	 (send *ri* :angle-vector (send *nao* :angle-vector) time)))

;;チョコを食べ始めてねの両腕を広げたポーズ
(defun pose4(&optional (time 3000))
  (progn (send *nao* :rarm :angle-vector #f(10 -35 119 10 0))
	 (send *nao* :larm :angle-vector #f(10 35 -119 -10 0))
	 (send *nao* :head :angle-vector #f(0 0))
	 (send *ri* :angle-vector (send *nao* :angle-vector) time)))

;;右手前のポーズ
(defun pose5(&optional (time 3000))
  (progn (send *nao* :rarm :angle-vector #f(30 -50 50 50 90))
	 (send *nao* :larm :angle-vector #f(118 30 -110 -88 -40))
	 (send *nao* :head :angle-vector #f(0 -10))
	 (send *ri* :angle-vector (send *nao* :angle-vector) time)))

;;右手前のポーズで右向き
(defun pose5-r(&optional (time 3000))
  (progn (send *nao* :rarm :angle-vector #f(30 -50 50 50 90))
	 (send *nao* :larm :angle-vector #f(118 30 -110 -88 -40))
	 (send *nao* :head :angle-vector #f(-20 -10))
	 (send *ri* :angle-vector (send *nao* :angle-vector) time)))

;;右手前のポーズで左向き
(defun pose5-l(&optional (time 3000))
  (progn (send *nao* :rarm :angle-vector #f(30 -50 50 50 90))
	 (send *nao* :larm :angle-vector #f(118 30 -110 -88 -40))
	 (send *nao* :head :angle-vector #f(20 -10))
	 (send *ri* :angle-vector (send *nao* :angle-vector) time)))

;;両手前でよしってポーズ
(defun pose6(&optional (time 3000))
  (progn (send *nao* :rarm :angle-vector #f(40 -35 100 88 90))
	 (send *nao* :larm :angle-vector #f(40 35 -100 -88 -90))
	 (send *nao* :head :angle-vector #f(0 0))
	 (send *ri* :angle-vector (send *nao* :angle-vector) time)))

;;右向き
(defun pose6-r(&optional (time 3000))
  (progn (send *nao* :rarm :angle-vector #f(40 -35 100 88 90))
	 (send *nao* :larm :angle-vector #f(40 35 -100 -88 -90))
	 (send *nao* :head :angle-vector #f(-20 0))
	 (send *ri* :angle-vector (send *nao* :angle-vector) time)))

;;左向き
(defun pose6-l(&optional (time 3000))
  (progn (send *nao* :rarm :angle-vector #f(40 -35 100 88 90))
	 (send *nao* :larm :angle-vector #f(40 35 -100 -88 -90))
	 (send *nao* :head :angle-vector #f(20 0))
	 (send *ri* :angle-vector (send *nao* :angle-vector) time)))

;;左手前のポーズ
(defun pose7(&optional (time 3000))
  (progn (send *nao* :rarm :angle-vector #f(118 -30 110 88 40))
	 (send *nao* :larm :angle-vector #f(30 60 -50 -60 -90))
	 (send *nao* :head :angle-vector #f(0 -10))
	 (send *ri* :angle-vector (send *nao* :angle-vector) time)))

;;左手前のポーズで右向き
(defun pose7-r(&optional (time 3000))
  (progn (send *nao* :rarm :angle-vector #f(118 -30 110 88 40))
	 (send *nao* :larm :angle-vector #f(30 60 -50 -60 -90))
	 (send *nao* :head :angle-vector #f(-20 -10))
	 (send *ri* :angle-vector (send *nao* :angle-vector) time)))

;;左手前のポーズで左向き
(defun pose7-l(&optional (time 3000))
  (progn (send *nao* :rarm :angle-vector #f(118 -30 110 88 40))
	 (send *nao* :larm :angle-vector #f(30 60 -50 -60 -90))
	 (send *nao* :head :angle-vector #f(20 -10))
	 (send *ri* :angle-vector (send *nao* :angle-vector) time)))

;;両手でよしって感じのポーズ
(defun pose8(&optional (time 3000))
  (progn (send *nao* :rarm :angle-vector #f(40 10 80 88 40))
	 (send *nao* :larm :angle-vector #f(40 -10 -80 -88 -40))
	 (send *nao* :head :angle-vector #f(0 0))
	 (send *ri* :angle-vector (send *nao* :angle-vector) time)))

;;右手胸左手前
(defun pose9(&optional (time 3000))
  (progn (send *nao* :rarm :angle-vector #f(40 10 88 88 40))
	 (send *nao* :larm :angle-vector #f(20 50 -50 -50 -60))
	 (send *nao* :head :angle-vector #f(0 -10))
	 (send *ri* :angle-vector (send *nao* :angle-vector) time)))

;;左手で相手をさすようなポーズ
(defun pose10(&optional (time 3000))
  (progn (send *nao* :rarm :angle-vector #f(30 10 30 88 40))
	 (send *nao* :larm :angle-vector #f(20 30 -50 -30 -90))
	 (send *nao* :head :angle-vector #f(0 -10))
	 (send *ri* :angle-vector (send *nao* :angle-vector) time)))

(defun reach1-0(&optional (time 3000))
  (progn (send *nao* :rarm :angle-vector #f(-25 -45 30 11 -18))
	 (send *nao* :head :angle-vector #f(0 0))
	 (send *ri* :angle-vector (send *nao* :angle-vector) time)))

(defun reach1-1(&optional (time 3000))
  (progn (send *nao* :rarm :angle-vector #f(-20 13 30 30 90))
    ;(send *nao* :rarm :angle-vector #f(118 -75 119 88 0))
	 (send *nao* :head :angle-vector #f(0 -10))
	 (send *ri* :angle-vector (send *nao* :angle-vector) time)))

(defun reach1-2(&optional (time 3000))
  (progn (send *nao* :rarm :angle-vector #f(-25 13 30 11 -18))
	 (send *nao* :head :angle-vector #f(0 0))
	 (send *ri* :angle-vector (send *nao* :angle-vector) time)))

(defun reach1-3(&optional (time 3000))
  (progn (send *nao* :rarm :angle-vector #f(-11 13 30 11 -18))
	 (send *nao* :head :angle-vector #f(0 0))
	 (send *ri* :angle-vector (send *nao* :angle-vector) time)))

(defun reach1-4(&optional (time 3000))
  (progn (send *nao* :rarm :angle-vector #f(-11 18 30 11 -18))
	 (send *nao* :head :angle-vector #f(0 0))
	 (send *ri* :angle-vector (send *nao* :angle-vector) time)))

(defun reach1-5(&optional (time 3000))
  (progn (send *nao* :rarm :angle-vector #f(0 13 30 11 -18))
	 (send *nao* :head :angle-vector #f(0 0))
	 (send *ri* :angle-vector (send *nao* :angle-vector) time)))

(defun reach1-7(&optional (time 3000))
  (progn (send *nao* :rarm :angle-vector #f(0 -10 15 30 -18))
	 (send *nao* :head :angle-vector #f(0 0))
	 (send *ri* :angle-vector (send *nao* :angle-vector) time)))

(defun eat1-1(&optional (time 3000))
  (progn (send *nao* :rarm :angle-vector #f(20 15 45 60 45))
	 (send *nao* :head :angle-vector #f(0 -20))
	 (send *ri* :angle-vector (send *nao* :angle-vector) time)))

(defun eat1-2(&optional (time 3000))
  (progn (send *nao* :rarm :angle-vector #f(10 15 45 88 45))
	 (send *nao* :head :angle-vector #f(0 -20))
	 (send *ri* :angle-vector (send *nao* :angle-vector) time)))

(defun eat1-3(&optional (time 3000))
  (progn (send *nao* :head :angle-vector #f(0 0))
	 (send *ri* :angle-vector (send *nao* :angle-vector) time)))

(defun move-neck()
  (progn (send *nao* :head :angle-vector #f(0 -20))
	 (send *ri* :angle-vector (send *nao* :angle-vector) 500)
	 (unix::usleep (* 1000 500))
	 (send *nao* :head :angle-vector #f(0 0))
	 (send *ri* :angle-vector (send *nao* :angle-vector) 500)
	 (unix::usleep (* 1000 500))
	 (send *nao* :head :angle-vector #f(0 -20))
	 (send *ri* :angle-vector (send *nao* :angle-vector) 500)
	 (unix::usleep (* 1000 500))
	 (send *nao* :head :angle-vector #f(0 0))
	 (send *ri* :angle-vector (send *nao* :angle-vector) 500)
	 (unix::usleep (* 1000 500))))
