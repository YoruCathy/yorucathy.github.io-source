---
title: "LitAR: Visually Coherent Lighting for Mobile Augmented Reality"
date: 2022-07-29
thumbnail: /assets/img/project/litar/thumbnail.png
previewCardDirection: horizontal
tag: research
layout: default
---

::ProjectHeader
---
title: "LitAR: Visually Coherent Lighting for Mobile Augmented Reality"
venue: UbiComp 2022 (IMWUT 2022)
authors:
    - name: Yiqin Zhao
      url: https://yiqinzhao.me
      affiliation: Worcester Polytechnic Institute
    - name: Chongyang Ma
      url: http://www.chongyangma.com/
      affiliation: Kuaishou Technology
    - name: Haibin Huang
      url: https://brotherhuang.github.io/
      affiliation: Kuaishou Technology
    - name: Tian Guo
      url: https://tianguo.info
      affiliation: Worcester Polytechnic Institute
artifactLinks:
    Paper: /assets/img/project/litar/litar_imwut22.pdf
    Code (coming soon): /project/litar/
---
::

![](/assets/img/project/litar/teaser.png)

## Abstract

An accurate understanding of omnidirectional environment lighting is crucial for high-quality virtual object rendering in mobile augmented reality (AR). In particular, to support reflective rendering, existing methods have leveraged deep learning models to estimate or have used physical light probes to capture physical lighting, typically represented in the form of an environment map. However, these methods often fail to provide visually coherent details or require additional setups. For example, the commercial framework ARKit uses a convolutional neural network that can generate realistic environment maps; however the corresponding reflective rendering might not match the physical environments. In this work, we present the design and implementation of a lighting reconstruction framework called LitAR that enables realistic and visually-coherent rendering. LitAR addresses several challenges of supporting lighting information for mobile AR.

First, to address the spatial variance problem, LitAR uses two-field lighting reconstruction to divide the lighting reconstruction task into the spatial variance-aware near-field reconstruction and the directional-aware far-field reconstruction. The corresponding environment map allows reflective rendering with correct color tones. Second, LitAR uses two noise-tolerant data capturing policies to ensure data quality, namely guided bootstrapped movement and motion-based automatic capturing. Third, to handle the mismatch between the mobile computation capability and the high computation requirement of lighting reconstruction, LitAR employs two novel real-time environment map rendering techniques called multi-resolution projection and anchor extrapolation. These two techniques effectively remove the need of time-consuming mesh reconstruction while maintaining visual quality. Lastly, LitAR provides several knobs to facilitate mobile AR application developers making quality and performance trade-offs in lighting reconstruction. We evaluated the performance of LitAR using a small-scale testbed experiment and a controlled simulation. Our testbed-based evaluation shows that LitAR achieves more visually coherent rendering effects than ARKit. Our design of multi-resolution projection significantly reduces the time of point cloud projection from about 3 seconds to 14.6 milliseconds. Our simulation shows that LitAR, on average, achieves up to 44.1% higher PSNR value than a recent work Xihe on two complex objects with physically-based materials.

## Acknowledgements
We thank the anonymous reviewers for their constructive reviews. This work was supported in part by NSF Grants and VMWare.

## News

- **July 29, 2022** website is online now.

::MoreProjects
---
title: Related Projects
links:
  - /project/privacy-preserving-reflection
  - /project/xihe
  - /project/point-ar
---
::
