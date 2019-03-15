# Testing Results

- unzip all zip archives (annotations.zip, candidates.zip, parameter_files.zip)
```bash
unzip annotations.zip
unzip candidates.zip
unzip parameter_files.zip
```

- download latest MetFrag version CLI and Tools from http://msbi.ipb-halle.de/~cruttkie/metfrag/{MetFrag2.4.5-CL.jar,MetFrag2.4.5-Tools.jar} in testing folder

- process all parameter files (from parameter_files folder) by running:
  - for single file java -jar MetFrag2.4.5-CL.jar PARAMETER_FILE
  - run all files by 
```bash
     for i in parameter_files/pos/*; do java -jar MetFrag2.4.5-CL.jar $i; done
     for i in parameter_files/neg/*; do java -jar MetFrag2.4.5-CL.jar $i; done
```
- calculate rankings of correct candidates by executing ranking scripts
```bash
  bash rank_neg.sh
  bash rank_pos.sh
```
- the scripts generate a ranking file for each result file located in rankings/{neg,pos}
