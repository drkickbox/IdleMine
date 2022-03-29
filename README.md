# IdleMine
A simple script for running a GPU miner on your PC and switching load and OC profiles based on what you're currently doing.

DEPENDENCIES:
- A Windows system with MSI Afterburner and AutoIT installed at their default directories
- Script and t-rex miner placed at C:\Program Files\trexminer
- MSI Afterburner profile 1 saved for gaming OC settings and profile 2 for mining OC settings
(Note: You can easily change directories of these files within the scripts -- just replace "C:\Program Files\" or "C:\Program Files (x86)\" with your path.)

This is a simple script that utilizes t-rex miner and MSI Afterbuner to switch between various states as you use your computer, rather than relying on questionable closed-source miners and overclocking utilities). You do not need to run the miner as admin in this case.
- State 0: Miner not running/ full-screen program such as a game running
- State 1: Full speed mining when idle
- State 2: Low load mining when not idle but not running a full-screen program

INSTALLATION:
1. Download and install MSI Afterburner and AutoIT making sure that MSI Afterburner starts with Windows.
2. Save a gaming OC or default setting for your GPU as profile 1 and a mining OC as profile 2 in MSI Afterburner.
3. Download T-Rex Miner and place the .exe along with the AutoIT script and .bat files into "C:\Program Files\trexminer" or your desired path.
![image](https://user-images.githubusercontent.com/89110389/160722998-312c9cb0-823a-41be-846b-d4a221c81ac0.png)
4. Modify the .bat files, replacing my ETH address and mining pool with your own.
5. Modify the "trexminer" XML by changing the Author and USER ID to match your user account. Next, import it into task scheduler. This starts the AutoIT script when you log on.
6. Run and enable the task in task scheduler.
7. Profit.
