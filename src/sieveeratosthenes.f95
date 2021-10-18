subroutine sieveeratosthenes(n, B)
		implicit none
		integer :: i, j, k, n
		
		real :: limit

		logical :: A(n) 

		integer:: B(0:n) 

		do i = 1, n
			A(i) = .true.
		end do

		i = 2
		limit = sqrt(real(n))

		do while	(i < limit)
			if (A(i) .eqv. .true.) then
				j = i*i
				k = 1
				do while (j <= n)
					A(j) = .false.
	 				j = i*i + k*i
					k = k + 1
				end do
			end if
			i = i + 1
		end do

		k = 0
		do i = 1, n
			if (A(i) .eqv. .true.) then
				k = k + 1
			end if
		end do

		k = 0	
		do i = 1, n
			if (A(i) .eqv. .true.) then
				B(k) = i
				k = k + 1
			end if
		end do


	end subroutine sieveeratosthenes

