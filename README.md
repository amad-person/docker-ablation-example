# Docker Ablation Example

Template for running reproducible ablation studies. This way of doing things is especially useful when you want to run 
experiments on the same "hardware" to compare performance. 

What's in here:
1. Experiment scripts go in `/code`. A script can parse arguments that will be constant (through config files) and vary
   (through command line arguments) in the ablation study. 
2. Config files to set up an experiment and store constants go in `/configs`. 
3. The `requirements.txt` file stores Python dependencies that need to be installed in the container.
4. The shell script `ablation.sh` runs the ablation study and saves results to the `/save` directory on the host 
   system. 
5. The Dockerfile sets up the container to run the study. 

Note: Commit c926d22 adds changes to the shell script so you can profile your study using cProfile. However, the way 
this has been achieved right now is clunky (and possibly unsafe). If you do not need this functionality, use the 
template from the commit before this change.