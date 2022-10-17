package com.example.springtp.repository.entity;

import javax.persistence.*;

@Entity
public class FamilleContact {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @ManyToOne
    @JoinColumn(name = "contactParent_id", referencedColumnName = "id")
    private Contact contactParent;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "contactFils_id", referencedColumnName = "id")
    private Contact contactFils;

    private String typeRelation;

    public FamilleContact() {
    }

    public FamilleContact(Long id, Contact contactParent, Contact contactFils, String typeRelation) {
        this.id = id;
        this.contactParent = contactParent;
        this.contactFils = contactFils;
        this.typeRelation = typeRelation;
    }

    public FamilleContact(Contact contactParent, Contact contactFils, String typeRelation) {
        this.contactParent = contactParent;
        this.contactFils = contactFils;
        this.typeRelation = typeRelation;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Contact getContactParent() {
        return contactParent;
    }

    public void setContactParent(Contact contactParent) {
        this.contactParent = contactParent;
    }

    public Contact getContactFils() {
        return contactFils;
    }

    public void setContactFils(Contact contactFils) {
        this.contactFils = contactFils;
    }

    public String getTypeRelation() {
        return this.typeRelation;
    }

    public void setTypeRelation(String typeRelation) {
        this.typeRelation = typeRelation;
    }
}
