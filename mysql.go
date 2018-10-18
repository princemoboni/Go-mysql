package main

import (
	"database/sql"
	"encoding/json"
	"fmt"
	"net/http"

	_ "github.com/go-sql-driver/mysql"
)

type Result struct {
	Country           string
	Project_ID        string
	Project_Title     string
	Commitment_Amount string
	Status            string
	Approval_Date     string
}

func getresults(w http.ResponseWriter, r *http.Request) {
	fmt.Println("Go Mysql tuttorial")

	db, err := sql.Open("mysql", "root:root@tcp(localhost:3306)/resultdb")
	if err != nil {
		panic(err.Error())
	}
	defer db.Close()

	result, err := db.Query("SELECT * FROM results")
	if err != nil {
		panic(err.Error())
	}
	//The make built-in function allocates and initializes an object of type []string call it Slice of string
	var collection = make([]Result, 1)

	var rowCount = 0
	for result.Next() {
		var results Result

		err = result.Scan(&results.Project_Title, &results.Country, &results.Project_ID, &results.Commitment_Amount, &results.Status, &results.Approval_Date)
		if err != nil {
			panic(err.Error())
		}

		newCollection := make([]Result, rowCount+1)
		copy(newCollection, collection)

		newCollection[rowCount] = results
		rowCount = rowCount + 1

		collection = newCollection
	}

	json.NewEncoder(w).Encode(collection)
}
