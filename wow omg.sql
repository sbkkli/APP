/* Entities */
entity CHAMBRE {
    EQUIPEMENT (optional, multi),
    ETAGE,
    NUMC (id),
    SUPERFICIE
}
entity DOUBLE
entity TRIPLE
entity SIMPLE
entity SUITES {
    ESPACESDISPO (optional, multi)
}
entity AGENCE {
    CODE_POSTAL,
    RUE,
    NUMERO,
    CODEA (id),
    NUM_TEL,
    SITE_WEB
}
entity VILLE {
    NOM,
    CODEV (id),
    LONGITUDE,
    REGION,
    LATITUDE,
    PAYS
}
entity RESERVATION {
    DATE_DEBUT,
    NUMR (id),
    DATE_FIN,
    PRIX
}

/* Relationships */
relationship EFFECTUE (
    AGENCE: one..many,
    RESERVATION: one..one
)
relationship ASSOCIE (
    RESERVATION: one..one,
    CHAMBRE: zero..many
)
relationship SITUE (
    AGENCE: one..one,
    VILLE: zero..many
)

/* Generalizations */
CHAMBRE <= {
    SIMPLE,
    DOUBLE,
    TRIPLE,
    SUITES
} (total, exclusive)