import axios from "axios";
import TokenService from "./TokenService";


class UserService{

    getAllEmployees () {
        TokenService.setTokenInHeader();
        return axios.get("https://localhost:8080/api/user/getAllEmployees");
    }

    getAllUsers(){
        TokenService.setTokenInHeader();
        return axios.get("https://localhost:8080/api/user/getAllUsers");
    }

    createEmployee(user){
        TokenService.setTokenInHeader();
        return axios.post("https://localhost:8080/api/user/createEmployee", user);
    }

    getEmployeeById(employeeId){
        TokenService.setTokenInHeader();
        return axios.get("https://localhost:8080/api/user/" + employeeId);
    }
    //moze i samo employee da se salje, ne mora i id
    updateEmployee(employeeId, employee){
        TokenService.setTokenInHeader();
        return axios.put("https://localhost:8080/api/user/updateUserByIdAndDetails/" + employeeId, employee);
    }
    //logicko brisanje, setuje se isDeleted na true
    deleteEmployee(employeeId){
        TokenService.setTokenInHeader();
        return axios.put("https://localhost:8080/api/user/deactivateUser/" + employeeId);
    }

    registration(user){
        return axios.post("https://localhost:8080/api/user/registration", user);
    }

    getCurrentUser(){
        TokenService.setTokenInHeader();
        return axios.get("https://localhost:8080/api/user/getCurrentUser");
    }

    updateUser(user){
        TokenService.setTokenInHeader();
        return axios.put("https://localhost:8080/api/user/updateUser", user);
    }

    changePassword(passwordObj){
        TokenService.setTokenInHeader();
        return axios.put("https://localhost:8080/api/user/changePassword", passwordObj);
    }

}

export default new UserService();