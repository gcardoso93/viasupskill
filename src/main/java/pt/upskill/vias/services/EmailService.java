package pt.upskill.vias.services;

public interface EmailService {

    public void sendEmail(String to, String subject, String htmlBody);
}
