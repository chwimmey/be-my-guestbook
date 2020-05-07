/*                                                                          */
/*                      Creates the Guestbook database.                     */
/*                                                                          */

CREATE DATABASE guestbook OWNER postgres;
\connect guestbook

/* ----------------------------------------------------------------------------
mid             Message ID
guestname       Name of the guest
date            Timestamp of the message
url             Guest's website url (optional)
text            Text contents of the message
---------------------------------------------------------------------------- */
CREATE TABLE Messages(
    mid         BIGINT      PRIMARY KEY     NOT NULL,
    guestname   TEXT                        NOT NULL,
    date        TIMESTAMP                   NOT NULL,
    url         VARCHAR(50),
    text        TEXT                        NOT NULL
);