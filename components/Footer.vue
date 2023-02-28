<template>
    <footer class="bg-gray-100 dark:bg-gray-800 py-4">
        <div class="prose mx-auto dark:prose-invert p-4 md:text-lg opacity-60">

            <div class="flex-col md:flex-row flex justify-between border-b-2 border-b-gray-300">
                <div>
                    <p class="text-sm">
                        叶若琳 | Ruolin <br />
                        CS Ph.D. Student <a href="https://emprise.cs.cornell.edu">EmPRISE Lab, Cornell University</a> <br />
                        Research Interests: Human robot interaction, Intelligent devices, Simulation
                    </p>
                </div>

                <div>
                    <p class="text-sm md:text-right [&_br]:hidden [&_br]:md:inline">
                        <a href="mailto:ry273@cornell.edu">E-Mail</a> <br />
                        <a href="https://github.com/YoruCathy">GitHub</a> <br />
                        <a href="https://twitter.com/Nekovowo">Twitter</a> <br />
                    </p>
                </div>
            </div>


            <div class="text-gray-500 dark:text-gray-400 mx-auto text-sm">
                <p>
                    © <a href="/">Ruolin Ye</a> {{ year }}. Last updated: {{ datetime }}.
                    Use my website <a class="underline" href="https://github.com/YiqinZhao/yiqinzhao.me-source">template made by Yiqin Zhao</a>.
                </p>
            </div>

        </div>

    </footer>
</template>

<script setup>
const year = new Date().getFullYear()
const datetime = new Date().toLocaleDateString()
</script>
