# VIDEOCLUB DATABSE

![Danger!! there are dolphins over here](https://miro.medium.com/max/1004/1*J7-B1fiMCxzuQ7E_LcWk-g.png)


### :file_folder: **Folder structure**

```
└── Videoclub
    ├── .gitignore
    ├── README.md
    └── data
    │   ├── actor_clean.csv
    │   ├── category_clean.csv  
    │   ├── film_clean.csv
    │   ├── inventory_clean.csv
    │   ├── language_clean.csv
    │   ├── old_clean.csv
    │   ├── rental_clean.csv
    │   └── data_for_tables
    │   │   ├── actorFilmTable.csv
    │   │   ├── actorTable.csv
    │   │   ├── categoryTable.csv
    │   │   ├── filmInventoryTable.csv
    │   │   ├── filmLanguageTable.csv
    │   │   ├── filmTable.csv
    │   │   ├── inventoryTable.csv
    │   │   ├── languageTable.csv
    │   └── └── rentalTable.csv
    └── sql
    │   ├── queries.sql
    │   ├── SCRIPT_a_mano.sql
    │   ├── SCRIPT_COMPLETO_ESTRUCTURA_Y_DATOS.sql
    │   ├── SCRIPT_insercciones.sql
    │   ├── SCRIPT_SIN_INSERT.sql
    │   └── VIDEOCLUB_EER.png
    └── src
        ├── DATA_FOR_TABLES.ipynb
        └── cleaning_files
        │   ├── cleaning_actor.ipynb
        │   ├── cleaning_category.ipynb
        │   ├── cleaning_film.ipynb
        │   ├── cleaning_inventory.ipynb
        │   ├── cleaning_language.ipynb
        │   ├── cleaning_old_HDD.ipynb
        └── └── cleaning_rental.ipynb
        
```

## :🛠️: Installation of mySQL


Additional detailsare available [on the documentation](https://dev.mysql.com/doc/workbench/en/wb-installing.html).



## :📚🐬: Qué hemos hecho

Migración de datos de un videoclub a una base de datos `relacional`.
Limpieza de `datos`.
Modelado del `EER`, creación de las `tablas` y las `relaciones` entre ellas.
Inserción de los `datos` y funcionamiento de la base de datos a través de `consultas`.