SELECT 
    id, founded, industry, linkedin_url, size, website
FROM
    free_company_dataset
WHERE
    country = 'united states'
        AND industry IN ('computer software' , 'computer networking',
        'information technology and services',
        'financial services',
        'internet',
        'telecommunications',
        'banking',
        'capital markets',
        'computer & network security',
        'venture capital & private equity',
        'media production',
        'e-learning',
        'information services',
        'online media',
        'investment management',
        'investment banking')
        AND region IN ('california')
        AND website != ''
        AND company_name != ''
        AND size NOT IN ('11-50')