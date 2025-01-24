# Weather Guardian

This is one of the tasks where I referred to [YouTube](https://www.youtube.com/watch?v=gtF2nHVjqFk&t=144s) for the basics. I also learned how to use API keys to fetch the specific data I needed. Thats how I completed the task.

## Errors came through

- I thought we should create a new HTML error page that would return to the normal page if the place was found. It ended up wasting my time.

- I assigned the city name to the user's input. When an error occurred, I assigned it to "Place not found." This was the mistake I made, which caused the city name to remain fixed as "Place not found" and not revert to its original value when the place was found.

- I found this error and assigned the city name to `data.name`. When there is an error, I assigned it to "Place not found."
