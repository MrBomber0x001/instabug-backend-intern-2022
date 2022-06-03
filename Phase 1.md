# Phase 1
Questions and Answers
https://docs.google.com/forms/d/e/1FAIpQLScQ8COJfReJmhyq6q7EYOSVdmovsJlMggJgvkIewHQPZBvvww/viewscore?vc=0&c=0&w=1&flr=0&viewscore=AE0zAgCLPCctyYrTjiyIDzUtZo21SCBG2o_1YHXbjw4XvUoEjXvv0LnRcWqvWDZxFh_4vLw
### Ruby
Q1. What is the value of arr in the following ruby code? 1/1 <br>
![image](https://user-images.githubusercontent.com/42917814/171854011-d7f31e53-dfa2-426a-8867-c12014361fb3.png)

Q2. What is the value of arr in the following ruby code? <br>
![image](https://user-images.githubusercontent.com/42917814/171854133-b25befb7-3194-49a2-b81c-258cadc35bc1.png)


Q3. What is the value of arr after calling arr.flatten in the following code? <br>
![image](https://user-images.githubusercontent.com/42917814/171854174-a3b2e5b9-65b7-48c5-8378-ea7f43798d6a.png)

Q4. What is the value of the array records after the following code completes?
![image](https://user-images.githubusercontent.com/42917814/171854231-f6ed3cb9-8316-4722-a49b-fab367bf40fe.png)

### Ruby on Rails
Q1. In Rails, assume that the function foo_bar must be called just after a record of class Project is saved for the first time. If the foo_bar function failed, the record should not be saved. Which callback would you add to the project?

Q2.  In Rails, assume that the function foo_bar should be called just after a record of class Project is saved for the first time. If the foo_bar function failed, the record should be saved normally. Which callback would you add to the project?


Q3. Let's assume we have a Customer model, we want to populate the email column of one record. Which of the following is the most efficient way (in terms of the number of database queries) to populate one record given its id (id) and its email (user_email)?


Q4. Let’s assume we have an after_commit callback in the Customer model that notifies the customer if any changes were made to his/her account. While populating the email column in the previous question, we think it’s unnecessary to notify customers, i.e. we want to avoid the callback. Which of the following is NOT suitable for this use case?


Q5. Assume we have a Document model that has a title column and we want to select the first document whose title is equal to a value stored in the given_title variable. Which of the following is NOT a secure way to do it?


### Golang

Q1.  What is the output of the following code? <br>
![image](https://user-images.githubusercontent.com/42917814/171854553-96c828e8-d33b-423c-b7f5-4dcf9a552889.png)

Q2.  What is the value of arr after running the following Go code?
![image](https://user-images.githubusercontent.com/42917814/171854577-b4d80fd8-392b-490e-aa19-d1fb67ab15a8.png)

Q3.  What will be printed after running the following Go code?
![image](https://user-images.githubusercontent.com/42917814/171854618-60ca0f29-ecf9-4a96-84de-9dfd09b300ec.png)

Q4.  What is the more likely output of the following go code?

![image](https://user-images.githubusercontent.com/42917814/171854648-ae8bd8a5-71e6-4b35-a788-ad5a6b2555e7.png)

Q5. Roughly, how much time in milliseconds will the previous code take to complete?


Q6. Considering the following go code, which of the following statement is correct?
![image](https://user-images.githubusercontent.com/42917814/171854731-d4eb4dea-20b3-42f2-ada2-c5420bffed39.png)


Q7.  What is a correct possible output of running the following Go code?
![image](https://user-images.githubusercontent.com/42917814/171854790-6d429e4e-cea6-4361-9898-01c0c48d50cc.png)


### MySQL

Q1. What does "GROUP BY d.name" in the given query do?
![image](https://user-images.githubusercontent.com/42917814/171854865-b9dfa6c2-001b-4f46-9b03-47a0e3fcae0f.png)

Q2. Complete the following query
![image](https://user-images.githubusercontent.com/42917814/171854888-5c9290a4-312f-424d-a750-9a3fb20dcbf5.png)

 Q3. In which join all the rows from the left table appear in the output regardless of the content of the right table?

 Q4. Given a table with the following columns (id, rental_date, inventory_id, customer_id), assume we have the following 4 rows. What would be the output of the following query?
 
 ![image](https://user-images.githubusercontent.com/42917814/171854943-e740e84b-7304-4a0f-84d2-385bdf59103b.png)
 
 Q5.  Assume we have a table called sales with columns (id, rental_date, inventory_id, customer_id) and the table has a clustered innoDB index on id (primary key) and a secondary B+ tree index on (rental_date, inventory_id). A clustered index in innoDB contains the entire row (all columns) in its leaf nodes while a B+ tree index contains only the indexed columns (rental_date, inventory_id) and the primary key (id) in its leaf node. Which index/indices will be used to perform the following query?
 ![image](https://user-images.githubusercontent.com/42917814/171854979-ad6e8a66-93b4-4ba5-9e2a-44475df60037.png)

 Q6. For the same table and indices as the previous question, which index/indices will be used to perform the following query?
 ![image](https://user-images.githubusercontent.com/42917814/171855012-acfe11e8-8dec-45f0-b72f-05afb6aa444c.png)

 Q7. For the same table and indices as the previous questions, which index/indices will be used to perform the following query?
 ![image](https://user-images.githubusercontent.com/42917814/171855062-659a52b1-d42c-4db2-b703-23aed60840da.png)

 Q8. For the same table and indices as the previous questions, which index/indices will be used to perform the following query?
![image](https://user-images.githubusercontent.com/42917814/171855098-31058f92-e4d6-4ffc-a0c1-6f88b514300f.png)

 Q9. For the same table and indices as the previous questions, which index/indices will be used to perform the following query?

![image](https://user-images.githubusercontent.com/42917814/171855136-1c2d1940-be5c-4368-862a-3c21208f13d2.png)

 Q10. For the same table and indices as the previous questions, can the next query be optimized by adding extra indices?
 ![image](https://user-images.githubusercontent.com/42917814/171855170-1685f6b8-634a-4fd7-b792-3dd5ebf3d495.png)

 Q11. For the same table and indices as the previous questions, can the next query be optimized by adding extra indexes?
 ![image](https://user-images.githubusercontent.com/42917814/171855192-31a43c66-c2f4-425e-870b-b1d8fb65ff7c.png)
