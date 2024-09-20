package com.entity;


public class Appointment {

    private int id;
    private int user_id;
    private String fullName;
    private String gender;
    private String age;  
    private String appointmentDate;  // Changed to LocalDate
    private String email;
    private String phoneNumber;  // Changed to phoneNumber for clarity
    private String diseases;
    private int doctorId;
    private String address;
    private String status;

    // Default constructor
    public Appointment() {}

    // Parameterized constructor
    public Appointment(int user_id, String fullName, String gender, String age, String appointmentDate,
                       String email, String phoneNumber, String diseases, int doctorId, String address, String status) {
        this.user_id = user_id;
        this.fullName = fullName;
        this.gender = gender;
        this.age = age;
        this.appointmentDate = appointmentDate;
        this.email = email;
        this.phoneNumber = phoneNumber;
        this.diseases = diseases;
        this.doctorId = doctorId;
        this.address = address;
        this.status = status;
    }

    // Getters and Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUserId() {
        return user_id;
    }

    public void setUserId(int userId) {
        this.user_id = userId;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    public String getAppointmentDate() {
        return appointmentDate;
    }

    public void setAppointmentDate(String appointmentDate) {
        this.appointmentDate = appointmentDate;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getDiseases() {
        return diseases;
    }

    public void setDiseases(String diseases) {
        this.diseases = diseases;
    }

    public int getDoctorId() {
        return doctorId;
    }

    public void setDoctorId(int doctorId) {
        this.doctorId = doctorId;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Appointment{" +
                "id=" + id +
                ", userId=" + user_id +
                ", fullName='" + fullName + '\'' +
                ", gender='" + gender + '\'' +
                ", age=" + age +
                ", appointmentDate=" + appointmentDate +
                ", email='" + email + '\'' +
                ", phoneNumber='" + phoneNumber + '\'' +
                ", diseases='" + diseases + '\'' +
                ", doctorId=" + doctorId +
                ", address='" + address + '\'' +
                ", status='" + status + '\'' +
                '}';
    }
}
