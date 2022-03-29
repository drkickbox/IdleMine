# IdleMine
A simple script for running a GPU miner on your PC and switching load and OC profiles based on what you're currently doing.

DEPENDENCIES:
- A Windows system with MSI Afterburner and AutoIT installed at their default directories
- Script and t-rex miner placed at C:\Program Files\trexminer
- MSI Afterburner profile 1 saved for gaming OC settings and profile 2 for mining OC settings
(Note: You can easily change directories of these files within the scripts -- just replace "C:\Program Files\" with your path.)

This is a simple script that utilizes t-rex miner and MSI Afterbuner to switch between various states as you use your computer, rather than relying on questionable closed-source miners and overclocking utilities).
State 0: Miner not running/ full-screen program such as a game running
State 1: Full speed mining when idle
State 2: Low load mining when not idle but not running a full-screen program
