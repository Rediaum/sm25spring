package edu.sm.dto;

import lombok.*;

import java.security.Timestamp;

@AllArgsConstructor
@NoArgsConstructor
@Data
@Builder
public class Cart {
    private String custId;
    private int productId;
    private int producTQt;
    private Timestamp cartRegdate;
    // Join Data
    private String productName;
    private int productPrice;
    private int productImg;
}
