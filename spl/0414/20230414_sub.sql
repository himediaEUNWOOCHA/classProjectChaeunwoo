--43. 사원 번호가 7788인 사원과 담당 업무가 같은 사원을 표시(사원 이름과 담당업무)하시오.
select ename , job
from emp
where job = (select job from emp where empno=7788);

--44. 사원번호가 7499인 사원보다 급여가 많은 사원을 표시하시오. 사원이름과 감당 업무
select ename , job
from emp
where SAL > (select SAL from emp where empno=7499);

--45. 최소급여를 받는 사원의 이름, 담당업무 및 급여를 표시하시오. (그룹함수 사용)
select ENAME , job , SAL
from emp
WHERE SAL = (
    select MIN(SAL)
    from emp
);

--46. 평균급여가 가장 적은 직급의 직급 이름과 직급의 평균을 구하시오.
SELECT JOB , AVG(SAL) 
FROM EMP
WHERE JOB = (
    SELECT JOB
    FROM (select job , AVG(SAL) AS D from emp GROUP BY job ORDER BY AVG(SAL))
    WHERE ROWNUM = 1
)
GROUP BY JOB;

--47. 각 부서의 최소 급여를 받는 사원의 이름, 급여, 부서번호를 표시하시오.
SELECT E1.DEPTNO , MIN(E1.SAL)
FROM EMP E1 , EMP E2
WHERE E1.DEPTNO = E2.DEPTNO
GROUP BY E1.DEPTNO;


--48. 담당업무가 ANALYST 인 사원보다 급여가 적으면서 업무가 ANALYST가 아닌 사원들을 표시(사원번호, 이름, 담당 업무, 급여)하시오.




--49. 부하직원이 없는 사원의 이름을 표시하시오.
--
--50. 부하직원이 있는 사원의 이름을 표시하시오.
--
--51. BLAKE와 동일한 부서에 속한 사원의 이름과 입사일을 표시하는 질의를 작성하시오. ( 단 BLAKE는 제외 )
--
--52. 급여가 평균 급여보다 많은 사원들의 사원 번호와 이름을 표시하되 결과를 급여에 대해서 오름차순으로 정렬하시오.
--
--53. 이름에 K가 포함된 사원과 같은 부서에서 일하는 사원의 사원 번호와 이름을 표시하시오.
--
--54. 부서위치가 DALLAS인 사원의 이름과 부서번호 및 담당업무를 표시하시오.
--
--55. KING에게 보고하는 사원의 이름과 급여를 표시하시오.
--
--56. RESEARCH 부서의 사원에 대한 부서번호, 사원이름 및 담당 업무를 표시하시오.
--
--57. 평균 월급보다 많은 급여를 받고 이름에 M이 포함된 사원과 같은 부서에서 근무하는 사원의 
--사원 번호, 이름, 급여를 표시하시오.
--
--58. 평균급여가 가장 적은 업무를 찾으시오.
--
--59. 담당업무가 MANAGER 인 사원이 소속된 부서와 동일한 부서의 사원을 표시하시오.