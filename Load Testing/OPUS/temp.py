from locust import HttpUser, task, between
import time

class MyUser(HttpUser):
    wait_time = between(1, 2)  # Wait time between requests in seconds

    def on_start(self):
        # Set the headers required for the API request
        self.headers = {
            "client-id": "Wqp1QNVZQdpWuM3xGiegciX8HRgbRCgT7WujzJV7",
            "client-secret": "OVTBUwzNChgvmtfRjFNlM29WZboeRXqQfYTLoLy4dQETSpsz7yB9WOW0S01dwXuuwkatVDbJHMKK03RnyjCjjjbU64xBnc0U3oTS8LU1kfHp7kRgFxawTY5YC1mj4UA3",
            "grant-type": "password",
            "Content-Type": "application/json",
            "Authorization": "Bearer ZQpgjhDzj2bGxsndjCRVoFB8FSdePi"
        }

        # Perform user authentication
        response = self.client.post("/user/login/", json={
            "username": "ratul@gmail.com",
            "password": "helloadmin"
        }, headers=self.headers)




        # Extract and store the access token
        self.access_token = response.json()["access_token"]

        # Print authentication response (optional)
        # print(response.content)
        
        print(response.text)
        print(response.status_code)
        print(response.headers)



# Working
    # @task
    # def login(self):
    #     # Define the API endpoint and request payload
    #     endpoint = "/user/login/"
    #     payload = {
    #         "username": "ratul@gmail.com",
    #         "password": "helloadmin"
    #     }
    #     # Make the API request using the defined headers and payload
    #     response = self.client.post(endpoint, json=payload, headers=self.headers)
        
    #     # Print the response content and status code (optional)
    #     # print(response.content)
    #     # print(response.status_code)



    # @task
    # def get_employer_data(self):
    #     # Define the API endpoint for the next test case
    #     endpoint = "/employer/self/"

    #     # Set the headers with the stored access token for the next request
    #     headers = {
    #         "Authorization": f"Bearer {self.access_token}"
    #     }

    #     # Make the API request using the defined headers and endpoint
    #     response = self.client.get(endpoint, headers=headers)

    #     # Print the response content and status code (optional)
    #     # print(response.content)
    #     # print(response.status_code)




    # @task
    # def signup_user(self):
    #     # Define the API endpoint for the signup request
    #     endpoint = "/user/signup/"

    #     # Set the headers with the stored access token for the request
    #     headers = {
    #         "Content-Type": "application/json",
    #         "Authorization": f"Bearer {self.access_token}"
    #     }

        

    #     current_time = int(time.time())
    #     mail = str(current_time) + '@gmail.com' 

    #     # Define the payload for the signup request
    #     payload = {
    #         "profile": "employer",
    #         "account": {
    #             "email": mail,
    #             "password": "helloadmin"
    #         },
    #         "employer": {
    #             "company_name": "EWN Bangladesh",
    #             "phone_number": "01711",
    #             "city": "Dhaka",
    #             "country": "Bangladesh",
    #             "cr_number": "1234567890",
    #             "avatar": "/avatar.jpg"
    #         }
    #     }

    #     # Make the API request using the defined headers, endpoint, and payload
    #     response = self.client.post(endpoint, json=payload, headers=headers)

    #     # Print the response content and status code (optional)
    #     # print(response.content)
    #     # print(response.status_code)

##########################


    @task
    def signup_candidate(self):
        # Define the API endpoint for the signup request
        endpoint = "/user/signup/"


        # Set the headers with the stored access token for the request
        # headers = {
        #     "Content-Type": "application/json",
        #     "Authorization": f"Bearer {self.access_token}"
        # }


        current_time = int(time.time())
        mail = str(current_time) + '@gmail.com' 

        # Define the payload for the signup request
        payload = {
            "profile": "candidate",
            "account": {
                "email": mail,
                "password": "helloadmin"
            },
            "candidate": {
                "name": "Candidate User",
                "gender": "Male",
                "phone_number": "01711",
                "lat": 34.34,
                "lon": 90.2,
                "city": "Dhaka",
                "country": "Bangladesh",
                "candidate_skill": [
                    {
                        "skill_id": 1,
                        "skill_level": 4
                    }
                ]
            }
        }

        # Make the API request using the defined headers, endpoint, and payload
        response = self.client.post(endpoint, json=payload, headers=self.headers)

        # Print the response content and status code (optional)
        print('Candidate signed up')
        print(response.content)
        print(response.status_code)