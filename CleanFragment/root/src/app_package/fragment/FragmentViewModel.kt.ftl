package ${packageName}

import ${appPack}.base.BaseViewModel
import ${appPack}.rx.SchedulerProvider
import javax.inject.Inject

class ${fragmentName}ViewModel @Inject constructor(
        private val mSchedulerProvider: SchedulerProvider
) : BaseViewModel<${fragmentName}Navigator>() {

}
