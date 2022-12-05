
function EnableDisable(searchVal) {
  //Reference the Button.
  var btnSubmit = document.getElementById("submitbuttonid");

  console.log(btnSubmit)
  //Verify the TextBox value.
  if (searchVal.value.trim() != "") {
      //Enable the TextBox when TextBox has value.
      btnSubmit.disabled = false;
      console.log('here')
  } else {
      //Disable the TextBox when TextBox is empty.
      btnSubmit.disabled = true;
  }
};

function fetchData(searchVal) {

  fetch('http://localhost:8081/petpal?city='+searchVal)
    .then((response) => response.json())
    .then((data) => {
      if(data.result.length > 0) {
        showTable(),
        updateTable('table', JSON.stringify(data))
      } else {
        errorhtml = '<h4> No vets found in this city! </h4>'
        document.getElementById('error').innerHTML = errorhtml;
      }
    })
    
}

function showTable(){
  console.log('getting called')
  document.getElementById('table').style.visibility = "visible";
}

function hideTable(){
document.getElementById('table').style.visibility = "hidden";
}

function updateTable(table, jsonData1){

  const jsonData = JSON.parse(jsonData1)

  var tableHTML = "<tr>";
  colNames = ['Hospital Name', 'Address', 'ER Availability', 'Beds', 'Contact Number', 'Website']
  for (var headers in colNames) {
    tableHTML += "<th>" + colNames[headers] + "</th>";
  }
  tableHTML += "</tr>";

  for (var eachItem in jsonData.result) {
    tableHTML += "<tr>";
    var dataObj = jsonData.result[eachItem]

    rowVals = ['Hospital_Name', 'Address', 'ER_availability', 'Number_of_Beds', 'Contact_Number', 'Website']
    for (var eachValue in rowVals){
      tableHTML += "<td>" + dataObj[rowVals[eachValue]] + "</td>";
    }

    tableHTML += "</tr>";
  }

  document.getElementById(table).innerHTML = tableHTML;
}