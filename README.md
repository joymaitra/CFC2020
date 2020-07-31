# CHCGPT-Rockers
This is the repository for Call for Code 2020 for the submission by team CHCGPT-Rockers under the topic sustainability of energy.

# Short Description
## What's the problem?

Electrical energy is a necessity is our daily life and its comsuption is always increasing. But it is derived from coal and fossil fuel and other natual sources, which are non-renewable.
It is thus of high urgency that we try and use less amount of this energy.

## How can technology help?

Several attempts are already made to reduce the consumption, namely :
Solar panel for homes
energy efficient appliances
smart appliances

But there seems to be some gap, as the survey says that the consumption of the energy is increasing every year, and so is the production to meet the requirement.

## The Idea

If every consumer can be involved in the attempt to preserve then a surging impact can be achived. So the idea is to provide every customer with a dashboard reflecting their realtime consumption and the approximate cost of the consumption. 
Being updated and aware of their consumption and cost, they all will be cautious in utilizing the energy.


# Demo Video


# The Architecture

![architecture](https://user-images.githubusercontent.com/41389493/89035447-96466500-d358-11ea-92c8-bb39f8956b73.PNG)


# Long Description

Few steps are required to fulfil this project deployment.
- a raspberrypi / nodemcu connected to IBM cloud mqtt service.
- a mobile device to operate the appliances by connecting to the cloud mqtt service.
- Node red application to capture the timing of the operation of the appliances.
- DB2 to store the device attributes, the location detail and the timing of the operation of appliances.
- Cognos dashboard to present the metric visualization to the end consumers. 

# Project Roadmap
[Roadmap](roadmap.pptx)

# Built With

- IBM cloud DB2
- IBM cloud Foundry services - Node Red
- Watson Studio - Cognos
- RabbitMqtt

# Authors
- Joy Maitra - Architect(Cognizant)
- Abhishek Ojha - Data Analyst(Cognizant)
- Moazzam Shaikh - Data Analyst(Cognizant)


