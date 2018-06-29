package ${packageName}

import android.arch.core.executor.testing.InstantTaskExecutorRule
import ${appPack}.RxSchedulersOverrideRule
import io.reactivex.android.plugins.RxAndroidPlugins
import io.reactivex.schedulers.Schedulers
import ${appPack}.rx.AppSchedulerProvider
import org.junit.Before
import org.junit.Rule
import org.junit.rules.TestRule
import org.mockito.MockitoAnnotations

/**
 * Unit Test for [${fragmentName}ViewModel]
 */
class ${fragmentName}ViewModelTest {
    private lateinit var ${classToResource(fragmentName)}ViewModel: ${fragmentName}ViewModel

    private val schedulerProvider = AppSchedulerProvider()

    @Rule
    @JvmField
    val rxSchedulersOverrideRule: RxSchedulersOverrideRule = RxSchedulersOverrideRule()


    @Rule
    @JvmField
    val instantTaskExecutorRule: TestRule = InstantTaskExecutorRule()

    @Before
    fun setUp() {
        MockitoAnnotations.initMocks(this)
        RxAndroidPlugins.setInitMainThreadSchedulerHandler { scheduler -> Schedulers.trampoline() }

        ${classToResource(fragmentName)}ViewModel = ${fragmentName}ViewModel(schedulerProvider)
    }
}