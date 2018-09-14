package ${packageName}

import androidx.lifecycle.ViewModelProviders
import android.os.Bundle
import ${appPack}.BR
import ${appPack}.R
import ${appPack}.base.BaseFragment
import ${appPack}.databinding.Fragment${fragmentName}Binding

class ${fragmentClassName} : BaseFragment<Fragment${fragmentName}Binding, ${fragmentName}ViewModel>() {
    companion object {
        fun newInstance() = ${fragmentName}Fragment()
    }

    override val bindingVariable: Int
        get() = BR.viewModel

    override val layoutId: Int
        get() = R.layout.fragment_${classToResource(fragmentName)}

    override val viewModel: ${fragmentName}ViewModel
        get() = ViewModelProviders.of(this, viewModelFactory).get(${fragmentName}ViewModel::class.java)

    override fun onActivityCreated(savedInstanceState: Bundle?) {
        super.onActivityCreated(savedInstanceState)
    }
}
