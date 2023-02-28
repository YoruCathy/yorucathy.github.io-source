<style lang="postcss">
body {
  @apply bg-[#FAFAF9] dark:bg-gray-900;
}

p {
  text-align: justify;
  text-justify: inter-word;
  line-height: 1.6em;
}

a {
  transition: opacity 100ms linear, color 100ms linear;
  text-decoration-color: rgba(0, 0, 0, 0.4) !important;
}

a:hover {
  opacity: 0.8;
  color: #fc639b !important;
}

h2 a {
  text-decoration: none !important;
  font-weight: 900 !important;
}

h2 a:before {
  display: block;
  width: 100px;
  max-width: 100%;

  border-top: 1px solid rgba(0, 0, 0, 1);
  padding-bottom: 0.2em;

  content: "";
}
</style>

<script setup>
useHead({
    titleTemplate: (titleChunk) => {
        return titleChunk ? `${titleChunk} - Ruolin Ye` : 'Ruolin Ye';
    }
})
</script>

<template>



	<Link rel="icon" href="data:image/svg+xml,<svg xmlns=%22http://www.w3.org/2000/svg%22 viewBox=%220 0 100 100%22><text y=%22.9em%22 font-size=%2290%22>🐱</text></svg>"/>
  <Link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/katex@0.15.0/dist/katex.min.css"/>

  <!-- <Meta name="theme-color" content="#f5f5f4" media="(prefers-color-scheme: light)"/> -->
  <!-- <Meta name="theme-color" content="#292525" media="(prefers-color-scheme: dark)"/> -->

  <NuxtPage></NuxtPage>

</template>
