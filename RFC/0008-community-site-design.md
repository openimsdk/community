# [RFC #0008](https://github.com/OpenIMSDK/community/edit/main/RFC/0008-community-site-design.md) Cluster Deployment for OpenIMSDK

<!-- 🤖 design template: https://github.com/OpenIMSDK/community/blob/main/0000-template.md ⚠️ Please submit a PR to https://github.com/OpenIMSDK/community/tree/main/RFC according to the specification after the design is completed -->

## Meta

- Name: OpenIM community site design
- Start Date: 2023-09-28
- Author(s): @cubxxw
- Status: Draft
- RFC Pull Request: https://github.com/OpenIMSDK/community/edit/main/RFC/0007-openim-cluster-deployment.md
- OpenIMSDK Pull Request: https://github.com/openim/web/pulls
- OpenIMSDK Issue: https://github.com/openimsdk/open-im-server/issues/1103
- Supersedes: N/A

## TOC
- [RFC #0008 Cluster Deployment for OpenIMSDK](#rfc-0008-cluster-deployment-for-openimsdk)
  - [Meta](#meta)
  - [TOC](#toc)
  - [About](#about)
  - [Critical Design Details](#critical-design-details)
  - [Documentation Automation \& Synchronization Strategy](#documentation-automation--synchronization-strategy)
    - [Document Segmentation \& Design](#document-segmentation--design)
    - [Automated Document Generation \& Deployment](#automated-document-generation--deployment)
    - [Bidirectional Document Synchronization Strategy](#bidirectional-document-synchronization-strategy)


+ [中文设计稿](https://github.com/openim/website/blob/main/openim-design_zh.md)
+ [English design draft](https://github.com/openim/website/blob/main/openim-design.md)

## About

**I have designed the key modules for OpenIM:**

+ **Blog:** OpenIM's official blog, showcasing the latest posts and handpicked articles.
+ **Docs:** Comprehensive documentation for the OpenIM ecosystem.
+ **Community:** The vibrant community ecosystem of OpenIM, including biweekly meetings, affiliate events, and face-to-face interactions.

## Critical Design Details

> With a vision for long-term sustainability and community engagement, I hold the OpenIM site's design to the highest standards:

1. User Interface (UI):
   + **Color Scheme:** Deep blue is chosen as the primary hue, signifying technology and reliability, complemented by shades of grey or white for a clean and professional aesthetic.
   + **Responsive Design:** Optimized for various screen sizes, ensuring a consistent user experience across desktops, tablets, and mobile devices.
   + **User Navigation:** A clear top navigation bar showcasing the three main modules: “Blog,” “Docs,” and “Community,” enabling swift user access.
2. Blog Module:
   + **Featured Posts:** The homepage or main blog page prominently displays the newest and curated articles to engage visitors.
   + **Categories and Tags:** Facilitates content discovery based on user interests or themes.
   + **Comment Functionality:** Users can provide feedback and engage in discussions beneath each post.
3. Docs Module:
   + **Layered Structure:** Documentation is categorized into levels like "Beginner," "Advanced," and "API Reference," catering to users of varying expertise.
   + **Search Capability:** Empowers users to swiftly locate pertinent documentation.
   + **Version Control:** As OpenIM evolves, its documentation incorporates version management for users to find relevant document editions.
4. Community Module:
   + **Event Calendar:** Provides insights into upcoming biweekly meetings, offline interactions, and other event details.
   + **Member Showcase:** Highlights active community participants or contributors to foster greater involvement.
   + **Resource Links:** Curates links to tools, plugins, and other resources pertinent to OpenIM.
5. Other Considerations:
   + **Multilingual Support:** Given OpenIM's potential global reach, offering multiple languages broadens its audience scope.
   + **Access Speed:** A commitment to swift website loading times using technologies like CDN and code optimization.
   + **Security:** Ensuring protection against malicious attacks or misuse by employing HTTPS and periodic security reviews.

## Documentation Automation & Synchronization Strategy

### Document Segmentation & Design

For consolidating vast projects, managing and organizing documents is paramount. By segmenting the content, we effectively cater to diverse reader profiles:

+ Document Abstraction Layers:

   Significant design efforts ensure each section serves a distinct purpose and audience.

  + **Community:** Guidelines and resources for community engagement.
  + **Blog:** Changelogs, feature introspections, and relevant articles.
  + **Docs:** Technical documents, API references, installation, and configuration guides.

### Automated Document Generation & Deployment

Automation is the cornerstone of efficient documentation management. We've instituted tools and workflows to simplify document creation and deployment:

+ **Automation Tools:** On Mac and Linux platforms, we employ `make` and `gendocs` to automate certain documentation processes.

  + Example: The following command auto-generates multilingual markdown documents and their foundational templates.

    ```bash
    make new-post POST_NAME="openim-offline-deployment-design"
    ```

+ **Testing & Deployment:** GitHub actions test the documents, generating test reports. Additionally, a DevOps workflow ensures documentation accuracy and relevance.

  + Upon passing tests, GitHub actions deploy these, synchronizing with Netlify. Netlify then completes the deployment, rendering the corresponding web pages.
  + Notably, `https://netlify.app/` leverages plugins for accelerated access in regions like China.

### Bidirectional Document Synchronization Strategy

In multi-repository management, bidirectional document synchronization is challenging. We've devised the following solution to streamline this process:

+ Webhook Integration:

   Webhooks link the directories of 

  ```bash
  GitHub openim/website
  ```

   with sub-repositories like `openim-server` and `openim-chat` :

  + Modifications made to markdown documents in these sub-repositories automatically reflect in the `website` repository, eliminating manual maintenance and synchronization, thereby enhancing efficiency.

In summary, this strategy offers a comprehensive guide and toolset for document management, automated deployment, and bidirectional synchronization. This not only guarantees document precision and quality but also significantly elevates the team's productivity.
