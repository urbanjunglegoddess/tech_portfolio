// Import the functions you need from the SDKs you need
import { initializeApp } from "firebase/app";
import { getAnalytics } from "firebase/analytics";
// TODO: Add SDKs for Firebase products that you want to use
// https://firebase.google.com/docs/web/setup#available-libraries

// Your web app's Firebase configuration
// For Firebase JS SDK v7.20.0 and later, measurementId is optional
const firebaseConfig = {
    apiKey: "AIzaSyDMPTuNmj1qSsBvWwcl2J7AW_3cDORkHSM",
    authDomain: "linkedin-clone-9bb10.firebaseapp.com",
    projectId: "linkedin-clone-9bb10",
    storageBucket: "linkedin-clone-9bb10.appspot.com",
    messagingSenderId: "817086527064",
    appId: "1:817086527064:web:009772a218ae965f12bc2d",
    measurementId: "G-T9QD3XB5VG"
};

// Initialize Firebase
const app = initializeApp(firebaseConfig);
const analytics = getAnalytics(app);