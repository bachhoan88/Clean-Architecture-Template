package ${packageName};

import android.arch.core.executor.testing.InstantTaskExecutorRule;

import org.junit.Before;
import org.junit.rules.TestRule;
import org.mockito.MockitoAnnotations;

import java.util.concurrent.Callable;

import io.reactivex.Scheduler;
import io.reactivex.android.plugins.RxAndroidPlugins;
import io.reactivex.functions.Function;
import io.reactivex.schedulers.Schedulers;
import ${appPack}.RxSchedulersOverrideRule;
import ${appPack}.rx.AppSchedulerProvider;
import ${appPack}.rx.SchedulerProvider;

public class ${fragmentName}ViewModelTest {
    private ${fragmentName}ViewModel m${fragmentName}ViewModel;

    private final SchedulerProvider mSchedulerProvider = new AppSchedulerProvider();
    private final RxSchedulersOverrideRule mRxSchedulersOverrideRule = new RxSchedulersOverrideRule();

    private final TestRule mInstantTaskExecutorRule = new InstantTaskExecutorRule();

    @Before
    private void setup() {
        MockitoAnnotations.initMocks(this);
        RxAndroidPlugins.setInitMainThreadSchedulerHandler(new Function<Callable<Scheduler>, Scheduler>() {
            @Override
            public Scheduler apply(Callable<Scheduler> schedulerCallable) throws Exception {
                return Schedulers.trampoline();
            }
        });

        m${fragmentName}ViewModel = new ${fragmentName}ViewModel(mSchedulerProvider);
    }

}
