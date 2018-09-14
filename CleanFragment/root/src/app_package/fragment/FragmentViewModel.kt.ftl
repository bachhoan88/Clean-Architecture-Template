package ${packageName}

import ${appPack}.base.BaseViewModel
import ${appPack}.rx.SchedulerProvider
import javax.inject.Inject

/**
 * ViewModel for [${fragmentName}Fragment]
 */
 
class ${fragmentName}ViewModel @Inject constructor(
        private val schedulerProvider: SchedulerProvider
) : BaseViewModel() {

}
