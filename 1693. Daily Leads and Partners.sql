SELECT
    date_id,
    make_name,
    count(distinct(lead_id)) AS unique_leads,
    count(distinct(partner_id)) AS unique_partners
FROM dailysales GROUP BY date_id, make_name;
