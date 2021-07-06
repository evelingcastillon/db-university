-- GROUP BY:
-- 1. Contare quanti iscritti ci sono stati ogni anno

SELECT COUNT(id) AS `numeri_studienti` , YEAR(`enrolment_date`) AS `anno_di_iscrizione`
FROM `students`
GROUP BY `anno_di_iscrizione`

-- 2. Contare gli insegnanti che hanno l'ufficio nello stesso edificio

SELECT COUNT(id) AS `numero_insegnanti`, `office_address`
FROM `teachers`
GROUP BY `office_address`

-- 3. Calcolare la media dei voti di ogni appello d'esame

SELECT AVG(`vote`) AS `media_voti`, `exam_id`
FROM `exam_student`
GROUP BY `exam_id`

-- 4. Contare quanti corsi di laurea ci sono per ogni dipartimento

SELECT COUNT(id) AS `numero_corsi`, `department_id` AS `numero_dipartimento`
FROM `degrees`
GROUP BY `department_id`

-- JOINS:
-- 1. Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia

SELECT COUNT(`students`.`id`)
FROM `students`
JOIN `degrees`
ON `students`.`degree_id` = `degrees.id`
WHERE `degrees`.`name` = 'Corso di Laurea in Economia';

-- 2. Selezionare tutti i Corsi di Laurea del Dipartimento di Neuroscienze

SELECT `courses`.`id`, `courses`.`name`, `courses`.`description`
FROM `courses` JOIN `degrees` ON `courses`.`degree_id` = `degrees`.`id`
JOIN `departments` ON `degrees`.`department_id` = `departments`.`id`
WHERE `departments`.`name` = 'Dipartimento di Neuroscienze';

-- 3. Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)

SELECT `courses`.`id`, `courses`.`name`
FROM `courses`
JOIN `course_teacher`
ON `courses`.`id` = `course_teacher`.`course_id`
JOIN `teachers`
ON `course_teacher`.`teacher_id` = `teachers`.`id`
WHERE `teachers`.`id` = 44;

-- 4. Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il relativo dipartimento, in ordine alfabetico per cognome e nome



-- 5. Selezionare tutti i corsi di laurea con i relativi corsi e insegnanti
-- 6. Selezionare tutti i docenti che insegnano nel Dipartimento di Matematica (54)
--BONUS: Selezionare per ogni studente quanti tentativi d’esame ha sostenuto per superare ciascuno dei suoi esami