#include<stdio.h>
#include<stdlib.h>
#include<stdbool.h>
#include<time.h>

typedef struct centroide_s{
  int posX, posY;
} centroide;

int abs(int);
int powerOfTwo(int);

int main(int argc, char *argv[]){
  FILE *fp, *defFile;
  bool mask[8];
  int maskInt;
  bool uscita[8];
  int uscitaInt;
  int pivotX, pivotY;
  centroide centroidi[8];

  int i, j;
  int distTemp, distMin;

  char tempChar;


  srandom(time(NULL));
  for(i = 0; i < 8; i++)
    uscita[i] = 0;
  distMin = 512;

  if(fp = fopen("tb1.vhd", "w")){
    for(i = 0; i < 8; i++)
      mask[i] = random() % 2;

    pivotX = random() % 256;
    pivotY = random() % 256;

    for(i = 0; i < 8; i++){
      centroidi[i].posX = random() % 256;
      centroidi[i].posY = random() % 256;
    }

    //Calcolo la maschera di uscita
    for(i = 0; i < 8; i++){
      if(mask[i] == 1){
        distTemp = abs(centroidi[i].posX - pivotX) + abs(centroidi[i].posY - pivotY);
        if(distTemp < distMin){
          distMin = distTemp;
          for(j = 0; j < 8; j++)
            uscita[j] = 0;
          uscita[i] = 1;
        }
        else if(distTemp == distMin){
          uscita[i] = 1;
        }
      }
    }

    maskInt = 0;
    for(i = 0; i < 8; i++)
      if(mask[i] == 1)
        maskInt += powerOfTwo(i);

    uscitaInt = 0;
    for(i = 0; i < 8; i++)
      if(uscita[i] == 1)
        uscitaInt += powerOfTwo(i);


    printf("Maschera: ");
    for(i = 7; i >= 0; i--)
      printf("%d", mask[i]);
    printf("-->%d\n", maskInt);

    for(i = 0; i < 8; i++)
      printf("Centroide X: %d\t Centroide Y: %d\n", centroidi[i].posX, centroidi[i].posY);

    printf("PivotX: %d \t PivotY: %d\n", pivotX, pivotY);
    printf("Maschera uscita: ");
    for(i = 7; i >= 0; i--){
      printf("%d", uscita[i]);
    }
    printf("-->%d\n", uscitaInt);

    if(defFile = fopen("default.txt", "r")){
      // prima lettura fino a # e inserimento maschera di ingresso
      fscanf(defFile, "%c", &tempChar);
      while(!feof(defFile) && tempChar != '#'){
        fprintf(fp, "%c", tempChar);
        fscanf(defFile, "%c", &tempChar);
      }

      fprintf(fp, "%d", maskInt);

      //inserimento centroidi
      for(i = 0; i < 8; i++){
        fscanf(defFile, "%c", &tempChar);
        while(!feof(defFile) && tempChar != '#'){
          fprintf(fp, "%c", tempChar);
          fscanf(defFile, "%c", &tempChar);
        }

        fprintf(fp, "%d", centroidi[i].posX);

        fscanf(defFile, "%c", &tempChar);
        while(!feof(defFile) && tempChar != '#'){
          fprintf(fp, "%c", tempChar);
          fscanf(defFile, "%c", &tempChar);
        }

        fprintf(fp, "%d", centroidi[i].posY);
      }


      fscanf(defFile, "%c", &tempChar);
      while(!feof(defFile) && tempChar != '#'){
        fprintf(fp, "%c", tempChar);
        fscanf(defFile, "%c", &tempChar);
      }

      fprintf(fp, "%d", pivotX);

      fscanf(defFile, "%c", &tempChar);
      while(!feof(defFile) && tempChar != '#'){
        fprintf(fp, "%c", tempChar);
        fscanf(defFile, "%c", &tempChar);
      }

      fprintf(fp, "%d", pivotY);

      fscanf(defFile, "%c", &tempChar);
      while(!feof(defFile) && tempChar != '#'){
        fprintf(fp, "%c", tempChar);
        fscanf(defFile, "%c", &tempChar);
      }

      fprintf(fp, "%d", uscitaInt);

      fscanf(defFile, "%c", &tempChar);
      while(!feof(defFile)){
        fprintf(fp, "%c", tempChar);
        fscanf(defFile, "%c", &tempChar);
      }

      fclose(defFile);

    }
    else{
      fprintf(stderr, "Errore apertura file defFile\n");
      fclose(defFile);
      fclose(fp);
      return -1;
    }




    fclose(fp);
  }
  else{
    fprintf(stderr, "Errore apertura file \n");
    fclose(fp);
    return -1;
  }

  return 0;
}


int abs(int x){
  if(x < 0)
    return -x;
  return x;
}

int powerOfTwo(int x){
  int i, out;
  if(x == 0)
    return 1;
  out = 1;
  for(i = 0; i < x; i++)
    out *= 2;

  return out;
}
