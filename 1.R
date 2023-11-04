
bubbleSort<- function(input_array){
      for(i in 1:(length(input_array)-1)){  
        for (j in ((i+1):length(input_array))){
                if(input_array[i]< input_array[j]){
                  input_array[j] = input_array[i]-input_array[j]
                  input_array[i] = input_array[i]-input_array[j]
                  input_array[j] = input_array[i]+input_array[j]
                }
      }
      }
      return(input_array)
      
}
# input_array<- readline(prompt = "Enter array=> ")
# input_array<-as.integer(input_array)

input_array <- readline("Enter array=> ")
input_array <- eval(parse(text = input_array)) # convert char to numeric
sorting_array<- bubbleSort(input_array)
print(sorting_array)
# c(1,1,7,1,1,14,1,1,9,1,1,7)