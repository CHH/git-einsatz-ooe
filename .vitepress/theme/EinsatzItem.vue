<script>
export default {
    props: ['einsatz']
}
</script>

<template>
    <article class="rounded-xl border p-3">
        <div class="mb-3">
            <div class="font-bold">
                {{ einsatz.einsatzort }}
            </div>
            <div v-if="einsatz.adresse?.ecompl" class="text-gray-500 text-sm">
                {{ einsatz.adresse?.ecompl }}
            </div>
        </div>

        <header class="flex items-center space-x-3">
            <div class="flex-auto">
                <h3 class="">{{ einsatz.einsatzsubtyp.text }}</h3>
            </div>

            <div>
                <span v-if="einsatz.status == 'offen'" class="py-1 px-2 text-sm rounded-full bg-red-500 text-white">Offen</span>
                <span v-else-if="einsatz.status == 'abgeschlossen'" class="py-1 px-2 text-sm rounded-full bg-green-500 text-white">Abgeschlossen</span>
            </div>
        </header>

        <div class="grid grid-cols-3 space-x-6 mt-3 text-sm">
            <div class="text-gray-500">
                Alarmierung:
                {{ $day(einsatz.startzeit).format('lll') }}
            </div>
            <div v-if="einsatz.inzeit" class="text-gray-500">
                Eingerückt:
                {{ $day(einsatz.inzeit).format('lll') }}
            </div>
            <div v-if="einsatz.inzeit" class="text-gray-500">
                Dauer: {{ $day.duration($day(einsatz.inzeit).diff($day(einsatz.startzeit))).locale('de').humanize() }}
            </div>
        </div>
        
        <p class="mt-3">Alarmiert:</p>
        <ul class="">
            <li v-for="({ feuerwehr }, id) in einsatz.feuerwehren" :key="id">
                {{ feuerwehr }}
            </li>
        </ul>
    </article>
</template>