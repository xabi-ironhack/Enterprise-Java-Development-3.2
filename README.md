# Lab 3.2
Labs are mandatory and must be completed before the start of the next class.

You make work collaboratively with your classmates, but you may not copy and paste another students code.

## INSTRUCTIONS
Create a new github repository named Enterprise-Java-Development-3.2

Add your instructor and the class graders to your repository and ensure that your repository is private. Public repositories will receive a zero on the assigment.

If you are unsure who your class graders are, ask your instructor or refer to the day 1 slide deck.

Upload the code for all of the following prompts to your repository.

## SPECIFICATIONS
Normalize the following blog database and write the DDL scripts to create the database tables:


**Author** | **Title**	| **word count**	| **views**
--- | --- | --- | ---
Maria Charlotte	| Best Paint Colors	| 814	| 14
Juan Perez	| Small Space Decorating Tips |	1146	| 221
Maria Charlotte	| Hot Accessories	| 986	| 105
Maria Charlotte	| Mixing Textures |	765	| 22
Juan Perez	| Kitchen Refresh	| 1242	| 307
Maria Charlotte	| Homemade Art Hacks	| 1002	| 193
Gemma Alcocer	| Refenishing Wood Floors	| 1571	| 7542


Normalize the following airline database and write the DDL scripts to create the database tables:

**Customer Name** | **Customer Status** |	**Flight Number	Aircraft** |	**Total Aircraft Seats**	| **Flight Mileage** |	**Total Customer Mileage**
--- | --- | --- | --- | --- | ---
Agustine Riviera	| Silver	| DL143	| Boeing 747	| 400	| 135	| 115235
Agustine Riviera	| Silver	| DL122	| Airbus A330	| 236	| 4370	| 115235
Alaina Sepulvida	| None	| DL122	| Airbus A330	| 236	| 4370	| 6008
Agustine Riviera	| Silver	| DL143	| Boeing 747 | 400	| 135	| 115235
Tom Jones	| Gold	| DL122	| Airbus A330	| 236	| 4370	| 205767
Tom Jones	| Gold	| DL53	| Boeing 777	| 264	| 2078	| 205767
Agustine Riviera	| Silver	| DL143	| Boeing 747	| 400	| 135	| 115235
Sam Rio	| None	| DL143	| Boeing 747	| 400	| 135	| 2653
Agustine Riviera	| Silver	| DL143	| Boeing 747	| 400	| 135	| 115235
Tom Jones	| Gold	| DL222	| Boeing 777	| 264	| 1765	| 205767
Jessica James	| Silver	| DL143	| Boeing | 747	| 400	| 135	| 127656
Sam Rio	| None	| DL143	| Boeing 747	| 400	| 135	| 2653
Ana Janco	| Silver	| DL222	| Boeing 777	| 264	| 1765	| 136773
Jennifer Cortez	| Gold	| DL222	| Boeing 777	| 264	| 1765	| 300582
Jessica James	| Silver	| DL122	| Airbus A330	| 236	| 4370	| 127656
Sam Rio	None	| DL37	| Boeing 747	| 400	| 531	| 2653
Christian Janco	| Silver	| DL222	| Boeing 777	| 264	| 1765	| 14642

1. In the Airline database write the SQL script to get the total number of flights in the database

2. In the Airline database write the SQL script to get the average flight distance

3. In the Airline database write the SQL script to get the average number of seats

4. In the Airline database write the SQL script to get the average number of miles flown by customers grouped by status

5. In the Airline database write the SQL script to get the maximum number of miles flown by customers grouped by status

6. In the Airline database write the SQL script to get the total number of aircraft with a name containing Boeing

7. In the Airline database write the SQL script to find all flights with a distance between 300 and 2000 miles

8. In the Airline database write the SQL script to find the average flight distance booked grouped by customer status (this should require a join)

9. In the Airline database write the SQL script to find the most aircraft most often booked by gold status members (this should require a join)
