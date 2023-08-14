import day from 'dayjs'
import de from 'dayjs/locale/de'
import relativeTime from 'dayjs/plugin/relativeTime'
import localizedFormat from 'dayjs/plugin/localizedFormat'
import duration from 'dayjs/plugin/duration'

day.locale(de)
day.extend(relativeTime)
day.extend(localizedFormat)
day.extend(duration)

export default day