# Helix Core Server 2024 Docker image Ubuntu Noble updated

Updated [2024-11-20] version of:
https://github.com/p4paul/helix-docker/tree/master


## Requirements
- Docker Desktop


## Initialization

1. Clone the repository:
    ```powershell
    git clone -b only-server https://github.com/Cybernetic-Ransomware/helix-docker.git
    ```

2. Build the image:

    ```powershell
    cd helix-p4d
    docker build -t helix-core-local .
    ```

3. Run the container (Windows)

    You can replace volumen folder as the part `C:\HC3` in last command. 

    ```powershell
	docker run -it --rm --name helix-core-local -p 1667:1666 -v C:\HC3:/p4 helix-core-local
    ```
	
    Server runs on port [1667](http://localhost:1667).\
    Perforce super user is `super` and password `Passw0rd`.

4. Check the connection:

    Connect via P4Admin using `1667` as a server and `super` as an user. 

### Security level is by default setted as the lovest possible level. 
It is recommended to improve by following the [instruction](https://help.perforce.com/helix-core/quickstart/current/Content/quickstart/admin-configure-security.html)


## Useful Links and Documentation

- Basics:
[Lostcrowdev](https://lostcrowdev.com/integrating-unreal-engine-5-with-perforce-helix-core-for-version-control/)
- Setting security:
[Perforce](https://help.perforce.com/helix-core/quickstart/current/Content/quickstart/admin-configure-security.html)
- Quick install guide:
[Perforce](https://help.perforce.com/helix-core/quickstart/current/Content/quickstart/admin-reference.html?mkt_tok=ODQ2LUhFTC0yMjIAAAGWzvVES3jFwMJhoWlvm3EFbYNQCUmbcVRZgDOAc0t97lccaLyaE6UDCtHjaFqNXPZSXyh46PLY_cyWpkcueW6r6KXIJnSkEw5E0hOdxN_dU-w)
- One_file_per_actor
[Epicgames Dev](https://dev.epicgames.com/documentation/en-us/unreal-engine/one-file-per-actor-in-unreal-engine?application_version=5.2)
- Unreal integration:
[YouTube](https://youtu.be/7PRo8gK6SNM)
- Stream types:
[YouTube](https://youtu.be/qB6mpOy8ZUs)
- Linux install guide:
[Perforce](https://help.perforce.com/helix-core/quickstart/current/Content/quickstart/admin-install-linux.html)
- User guide:
[YouTube](https://www.youtube.com/watch?v=jIQEjDiSe0g&list=PLH3pq2J85xsPYn71_yzzsZQKvalTW-duE&index=**1)
