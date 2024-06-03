# Assignment 1: Design a Logical Model

## Question 1
Create a logical model for a small bookstore. 📚

At the minimum it should have employee, order, sales, customer, and book entities (tables). Determine sensible column and table design based on what you know about these concepts. Keep it simple, but work out sensible relationships to keep tables reasonably sized. Include a date table. There are several tools online you can use, I'd recommend [_Draw.io_](https://www.drawio.com/) or [_LucidChart_](https://www.lucidchart.com/pages/).

## Question 2
We want to create employee shifts, splitting up the day into morning and evening. Add this to the ERD.

## Question 3
The store wants to keep customer addresses. Propose two architectures for the CUSTOMER_ADDRESS table, one that will retain changes, and another that will overwrite. Which is type 1, which is type 2?

_Hint, search type 1 vs type 2 slowly changing dimensions._

Bonus: Are there privacy implications to this, why or why not?
```
Type 1 Slowly Changing Dimension (Overwrite):
Privacy Implications: Since this architecture overwrites the existing address with the new one, it reduces the risk of outdated or incorrect information being stored. However, if a customer updates their address due to privacy concerns or other sensitive reasons, the old address is immediately replaced with the new one, potentially making it more difficult to trace historical changes. While this can protect privacy by ensuring that only the latest information is stored, it also means that historical data, which might be relevant for auditing or legal purposes, is lost.
Type 2 Slowly Changing Dimension (Retain Changes):
Privacy Implications: This architecture retains historical addresses, which could pose privacy risks if not managed carefully. While it offers comprehensive tracking of address changes over time, it means that outdated personal information remains in the database alongside the latest information. This increases the risk of unauthorized access or misuse of outdated personal information, potentially leading to privacy breaches or identity theft. Additionally, the storage of historical addresses may be subject to data protection regulations, requiring organizations to ensure the security and confidentiality of this data.
In summary, both architectures have privacy implications that need to be carefully considered and managed. The choice between them should take into account not only the organization's data management needs but also its obligations to protect customer privacy and comply with relevant data protection laws and regulations.
```

## Question 4
Review the AdventureWorks Schema [here](https://i.stack.imgur.com/LMu4W.gif)

Highlight at least two differences between it and your ERD. Would you change anything in yours?
```
Adventureworks schema is highly complex and covers many domains. It includes a wide array of tables and relationships to manage different aspects of a large-scale business. My model is simpler and focused on a small bookstore. It includes only the essential tables for managing employees, customers, books, orders, sales, shifts, and dates.
Adventureworks schema is highly normalized, with specialized tables for various functions. For example, there are separate tables for Person, Address, ContactType, EmailAddress, etc.
Potential Change:1. I could normalize our address management by creating a separate CustomerAddress table to store customer addresses. This would align with the AdventureWorks approach and make our design more scalable and flexible. 2. HASH sensitive data for security. and request password for accessing


```

# Criteria

[Assignment Rubric](./assignment_rubric.md)

# Submission Information

🚨 **Please review our [Assignment Submission Guide](https://github.com/UofT-DSI/onboarding/blob/main/onboarding_documents/submissions.md)** 🚨 for detailed instructions on how to format, branch, and submit your work. Following these guidelines is crucial for your submissions to be evaluated correctly.

### Submission Parameters:
* Submission Due Date: `June 1, 2024`
* The branch name for your repo should be: `model-design`
* What to submit for this assignment:
    * This markdown (design_a_logical_model.md) should be populated.
    * Two Entity-Relationship Diagrams (preferably in a pdf, jpeg, png format).
* What the pull request link should look like for this assignment: `https://github.com/<your_github_username>/sql/pull/<pr_id>`
    * Open a private window in your browser. Copy and paste the link to your pull request into the address bar. Make sure you can see your pull request properly. This helps the technical facilitator and learning support staff review your submission easily.

Checklist:
- [ ] Create a branch called `model-design`.
- [ ] Ensure that the repository is public.
- [ ] Review [the PR description guidelines](https://github.com/UofT-DSI/onboarding/blob/main/onboarding_documents/submissions.md#guidelines-for-pull-request-descriptions) and adhere to them.
- [ ] Verify that the link is accessible in a private browser window.

If you encounter any difficulties or have questions, please don't hesitate to reach out to our team via our Slack at `#cohort-3-help`. Our Technical Facilitators and Learning Support staff are here to help you navigate any challenges.
