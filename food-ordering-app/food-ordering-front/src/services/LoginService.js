import axios from "axios";
import TokenService from "./TokenService";

class LoginService{
    login(loginParams){
        return axios.post("https://localhost:8080/api/login", loginParams);
    }

    logout(){
        TokenService.setTokenInHeader();
        return axios.get("https://localhost:8080/api/logout");
    }
}

export default new LoginService();