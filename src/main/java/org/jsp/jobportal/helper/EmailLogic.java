
package org.jsp.jobportal.helper;

import java.io.UnsupportedEncodingException;

import org.jsp.jobportal.dto.Recruiter;
import org.jsp.jobportal.dto.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import jakarta.mail.MessagingException;
import jakarta.mail.internet.MimeMessage;

@Service
public class EmailLogic {

    @Autowired
    private JavaMailSender mailSender;

    @Value("${spring.mail.username}")
    private String senderEmail;

    public void sendOtp(Recruiter recruiter)
            throws MessagingException, UnsupportedEncodingException {

        MimeMessage message = mailSender.createMimeMessage();
        MimeMessageHelper helper = new MimeMessageHelper(message, true, "UTF-8");

        helper.setFrom(senderEmail, "CareerConnect");
        helper.setTo(recruiter.getEmail());
        helper.setSubject("Verify OTP - CareerConnect");
        helper.setText("Your OTP is: " + recruiter.getOtp());

        mailSender.send(message);
    }

    public void sendOtp(User user)
            throws MessagingException, UnsupportedEncodingException {

        MimeMessage message = mailSender.createMimeMessage();
        MimeMessageHelper helper = new MimeMessageHelper(message, true, "UTF-8");

        helper.setFrom(senderEmail, "CareerConnect");
        helper.setTo(user.getEmail());
        helper.setSubject("Verify OTP - CareerConnect");
        helper.setText("Your OTP is: " + user.getOtp());

        mailSender.send(message);}
    
}
