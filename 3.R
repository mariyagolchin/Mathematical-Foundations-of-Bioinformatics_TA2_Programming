

nth_Fibonacci_number<- function(int_input){
      n1<-0
      n2<-1
      n_counter = 2
      while(n_counter < int_input){
        nth = n1 + n2
        # update values
        n1 = n2
        n2 = nth
        n_counter <-n_counter+ 1
      } 
      return(n2)
} 

########################################33
# n <- 6
# fib<- nth_Fibonacci_number(n)
# print(fib)
# input
input_num= readline(prompt='Enter your number:')
input_num = as.integer(input_num)
fib<- nth_Fibonacci_number(input_num)
print(fib)
