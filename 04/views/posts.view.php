<!DOCTYPE html>
<html>
<style>
    table {
        width: 80%;
        border-collapse: collapse;
        margin: 20px auto;
        text-align: center;
        font-family: Arial, sans-serif;
    }

    th, td {
        border: 1px solid #ddd;
        padding: 8px;
    }

    thead tr {
        background-color: #4CAF50;
        color: white;
    }

    tbody tr:nth-child(even) {
        background-color: #f9f9f9;
    }

    tbody tr:nth-child(odd) {
        background-color: #ffffff;
    }

    tbody tr:hover {
        background-color: #e6f5e6; /* delikatne podświetlenie po najechaniu */
    }
    h2 {
        text-align: center;
    }

    button {
        background-color: #4CAF50;
        color: white;
    }

</style>
<body>

<h2 ><?= $viewNameTable ?></h2>

</body>
</html>