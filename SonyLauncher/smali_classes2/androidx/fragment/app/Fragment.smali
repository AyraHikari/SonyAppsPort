.class public Landroidx/fragment/app/Fragment;
.super Ljava/lang/Object;
.source "Fragment.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroidx/lifecycle/LifecycleOwner;
.implements Landroidx/lifecycle/ViewModelStoreOwner;
.implements Landroidx/lifecycle/HasDefaultViewModelProviderFactory;
.implements Landroidx/savedstate/SavedStateRegistryOwner;
.implements Landroidx/activity/result/ActivityResultCaller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/Fragment$Api19Impl;,
        Landroidx/fragment/app/Fragment$AnimationInfo;,
        Landroidx/fragment/app/Fragment$InstantiationException;,
        Landroidx/fragment/app/Fragment$SavedState;,
        Landroidx/fragment/app/Fragment$OnPreAttachedListener;
    }
.end annotation


# static fields
.field static final ACTIVITY_CREATED:I = 0x4

.field static final ATTACHED:I = 0x0

.field static final AWAITING_ENTER_EFFECTS:I = 0x6

.field static final AWAITING_EXIT_EFFECTS:I = 0x3

.field static final CREATED:I = 0x1

.field static final INITIALIZING:I = -0x1

.field static final RESUMED:I = 0x7

.field static final STARTED:I = 0x5

.field static final USE_DEFAULT_TRANSITION:Ljava/lang/Object;

.field static final VIEW_CREATED:I = 0x2


# instance fields
.field mAdded:Z

.field mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

.field mArguments:Landroid/os/Bundle;

.field mBackStackNesting:I

.field mBeingSaved:Z

.field private mCalled:Z

.field mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

.field mContainer:Landroid/view/ViewGroup;

.field mContainerId:I

.field private mContentLayoutId:I

.field mDefaultFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

.field mDeferStart:Z

.field mDetached:Z

.field mFragmentId:I

.field mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field mFromLayout:Z

.field mHasMenu:Z

.field mHidden:Z

.field mHiddenChanged:Z

.field mHost:Landroidx/fragment/app/FragmentHostCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/fragment/app/FragmentHostCallback<",
            "*>;"
        }
    .end annotation
.end field

.field mInLayout:Z

.field mIsCreated:Z

.field private mIsPrimaryNavigationFragment:Ljava/lang/Boolean;

.field mLayoutInflater:Landroid/view/LayoutInflater;

.field mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

.field mMaxState:Landroidx/lifecycle/Lifecycle$State;

.field mMenuVisible:Z

.field private final mNextLocalRequestCode:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mOnPreAttachedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment$OnPreAttachedListener;",
            ">;"
        }
    .end annotation
.end field

.field mParentFragment:Landroidx/fragment/app/Fragment;

.field mPerformedCreateView:Z

.field mPostponedDurationRunnable:Ljava/lang/Runnable;

.field public mPreviousWho:Ljava/lang/String;

.field mRemoving:Z

.field mRestored:Z

.field mRetainInstance:Z

.field mRetainInstanceChangedWhileDetached:Z

.field mSavedFragmentState:Landroid/os/Bundle;

.field mSavedStateRegistryController:Landroidx/savedstate/SavedStateRegistryController;

.field mSavedUserVisibleHint:Ljava/lang/Boolean;

.field mSavedViewRegistryState:Landroid/os/Bundle;

.field mSavedViewState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field mState:I

.field mTag:Ljava/lang/String;

.field mTarget:Landroidx/fragment/app/Fragment;

.field mTargetRequestCode:I

.field mTargetWho:Ljava/lang/String;

.field mUserVisibleHint:Z

.field mView:Landroid/view/View;

.field mViewLifecycleOwner:Landroidx/fragment/app/FragmentViewLifecycleOwner;

.field mViewLifecycleOwnerLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Landroidx/lifecycle/LifecycleOwner;",
            ">;"
        }
    .end annotation
.end field

.field mWho:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 124
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/fragment/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 537
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    const/4 v0, -0x1

    iput v0, p0, Landroidx/fragment/app/Fragment;->mState:I

    .line 147
    nop

    .line 148
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    .line 163
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mIsPrimaryNavigationFragment:Ljava/lang/Boolean;

    .line 198
    new-instance v0, Landroidx/fragment/app/FragmentManagerImpl;

    invoke-direct {v0}, Landroidx/fragment/app/FragmentManagerImpl;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 235
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    .line 251
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    .line 260
    new-instance v0, Landroidx/fragment/app/Fragment$1;

    invoke-direct {v0, p0}, Landroidx/fragment/app/Fragment$1;-><init>(Landroidx/fragment/app/Fragment;)V

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mPostponedDurationRunnable:Ljava/lang/Runnable;

    .line 287
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mMaxState:Landroidx/lifecycle/Lifecycle$State;

    .line 294
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwnerLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 303
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mNextLocalRequestCode:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 305
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mOnPreAttachedListeners:Ljava/util/ArrayList;

    .line 538
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->initLifecycle()V

    .line 539
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "contentLayoutId"    # I

    .line 564
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 565
    iput p1, p0, Landroidx/fragment/app/Fragment;->mContentLayoutId:I

    .line 566
    return-void
.end method

.method private ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;
    .locals 1

    .line 3244
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    .line 3245
    new-instance v0, Landroidx/fragment/app/Fragment$AnimationInfo;

    invoke-direct {v0}, Landroidx/fragment/app/Fragment$AnimationInfo;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    .line 3247
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    return-object v0
.end method

.method private getMinimumMaxLifecycleState()I
    .locals 2

    .line 411
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mMaxState:Landroidx/lifecycle/Lifecycle$State;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_0

    goto :goto_0

    .line 414
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mMaxState:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle$State;->ordinal()I

    move-result v0

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    invoke-direct {v1}, Landroidx/fragment/app/Fragment;->getMinimumMaxLifecycleState()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    .line 412
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mMaxState:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle$State;->ordinal()I

    move-result v0

    return v0
.end method

.method private getTargetFragment(Z)Landroidx/fragment/app/Fragment;
    .locals 2
    .param p1, "logViolations"    # Z

    .line 868
    if-eqz p1, :cond_0

    .line 869
    invoke-static {p0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->onGetTargetFragmentUsage(Landroidx/fragment/app/Fragment;)V

    .line 872
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_1

    .line 875
    return-object v0

    .line 876
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 878
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findActiveFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0

    .line 880
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private initLifecycle()V
    .locals 1

    .line 569
    new-instance v0, Landroidx/lifecycle/LifecycleRegistry;

    invoke-direct {v0, p0}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    .line 570
    invoke-static {p0}, Landroidx/savedstate/SavedStateRegistryController;->create(Landroidx/savedstate/SavedStateRegistryOwner;)Landroidx/savedstate/SavedStateRegistryController;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mSavedStateRegistryController:Landroidx/savedstate/SavedStateRegistryController;

    .line 573
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mDefaultFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 574
    return-void
.end method

.method public static instantiate(Landroid/content/Context;Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fname"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 586
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public static instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fname"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 612
    const-string v0, ": make sure class name exists, is public, and has an empty constructor that is public"

    const-string v1, "Unable to instantiate fragment "

    .line 613
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 612
    invoke-static {v2, p1}, Landroidx/fragment/app/FragmentFactory;->loadFragmentClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 614
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroidx/fragment/app/Fragment;>;"
    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 615
    .local v3, "f":Landroidx/fragment/app/Fragment;
    if-eqz p2, :cond_0

    .line 616
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 617
    invoke-virtual {v3, p2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 619
    :cond_0
    return-object v3

    .line 631
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroidx/fragment/app/Fragment;>;"
    .end local v3    # "f":Landroidx/fragment/app/Fragment;
    :catch_0
    move-exception v0

    .line 632
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Landroidx/fragment/app/Fragment$InstantiationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": calling Fragment constructor caused an exception"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Landroidx/fragment/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 628
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 629
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v2, Landroidx/fragment/app/Fragment$InstantiationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": could not find Fragment constructor"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Landroidx/fragment/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 624
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v2

    .line 625
    .local v2, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Landroidx/fragment/app/Fragment$InstantiationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Landroidx/fragment/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 620
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v2

    .line 621
    .local v2, "e":Ljava/lang/InstantiationException;
    new-instance v3, Landroidx/fragment/app/Fragment$InstantiationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Landroidx/fragment/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
.end method

.method private prepareCallInternal(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/arch/core/util/Function;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/activity/result/contract/ActivityResultContract<",
            "TI;TO;>;",
            "Landroidx/arch/core/util/Function<",
            "Ljava/lang/Void;",
            "Landroidx/activity/result/ActivityResultRegistry;",
            ">;",
            "Landroidx/activity/result/ActivityResultCallback<",
            "TO;>;)",
            "Landroidx/activity/result/ActivityResultLauncher<",
            "TI;>;"
        }
    .end annotation

    .line 3436
    .local p1, "contract":Landroidx/activity/result/contract/ActivityResultContract;, "Landroidx/activity/result/contract/ActivityResultContract<TI;TO;>;"
    .local p2, "registryProvider":Landroidx/arch/core/util/Function;, "Landroidx/arch/core/util/Function<Ljava/lang/Void;Landroidx/activity/result/ActivityResultRegistry;>;"
    .local p3, "callback":Landroidx/activity/result/ActivityResultCallback;, "Landroidx/activity/result/ActivityResultCallback<TO;>;"
    iget v0, p0, Landroidx/fragment/app/Fragment;->mState:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 3442
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 3448
    .local v0, "ref":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroidx/activity/result/ActivityResultLauncher<TI;>;>;"
    new-instance v7, Landroidx/fragment/app/Fragment$8;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, v0

    move-object v5, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Landroidx/fragment/app/Fragment$8;-><init>(Landroidx/fragment/app/Fragment;Landroidx/arch/core/util/Function;Ljava/util/concurrent/atomic/AtomicReference;Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)V

    invoke-direct {p0, v7}, Landroidx/fragment/app/Fragment;->registerOnPreAttachListener(Landroidx/fragment/app/Fragment$OnPreAttachedListener;)V

    .line 3457
    new-instance v1, Landroidx/fragment/app/Fragment$9;

    invoke-direct {v1, p0, v0, p1}, Landroidx/fragment/app/Fragment$9;-><init>(Landroidx/fragment/app/Fragment;Ljava/util/concurrent/atomic/AtomicReference;Landroidx/activity/result/contract/ActivityResultContract;)V

    return-object v1

    .line 3437
    .end local v0    # "ref":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroidx/activity/result/ActivityResultLauncher<TI;>;>;"
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is attempting to registerForActivityResult after being created. Fragments must call registerForActivityResult() before they are created (i.e. initialization, onAttach(), or onCreate())."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private registerOnPreAttachListener(Landroidx/fragment/app/Fragment$OnPreAttachedListener;)V
    .locals 1
    .param p1, "callback"    # Landroidx/fragment/app/Fragment$OnPreAttachedListener;

    .line 3486
    iget v0, p0, Landroidx/fragment/app/Fragment;->mState:I

    if-ltz v0, :cond_0

    .line 3487
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment$OnPreAttachedListener;->onPreAttached()V

    goto :goto_0

    .line 3490
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mOnPreAttachedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3492
    :goto_0
    return-void
.end method

.method private restoreViewState()V
    .locals 2

    .line 3004
    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3005
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveto RESTORE_VIEW_STATE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3007
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 3008
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->restoreViewState(Landroid/os/Bundle;)V

    .line 3010
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 3011
    return-void
.end method


# virtual methods
.method callStartTransitionListener(Z)V
    .locals 3
    .param p1, "calledDirectly"    # Z

    .line 2763
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-eqz v0, :cond_0

    .line 2764
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mEnterTransitionPostponed:Z

    .line 2766
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz v1, :cond_2

    .line 2768
    nop

    .line 2769
    invoke-static {v0, v1}, Landroidx/fragment/app/SpecialEffectsController;->getOrCreateController(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/SpecialEffectsController;

    move-result-object v0

    .line 2770
    .local v0, "controller":Landroidx/fragment/app/SpecialEffectsController;
    invoke-virtual {v0}, Landroidx/fragment/app/SpecialEffectsController;->markPostponedState()V

    .line 2771
    if-eqz p1, :cond_1

    .line 2775
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroidx/fragment/app/Fragment$3;

    invoke-direct {v2, p0, v0}, Landroidx/fragment/app/Fragment$3;-><init>(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/SpecialEffectsController;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 2783
    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/SpecialEffectsController;->executePendingOperations()V

    .line 2786
    .end local v0    # "controller":Landroidx/fragment/app/SpecialEffectsController;
    :cond_2
    :goto_0
    return-void
.end method

.method createFragmentContainer()Landroidx/fragment/app/FragmentContainer;
    .locals 1

    .line 2894
    new-instance v0, Landroidx/fragment/app/Fragment$4;

    invoke-direct {v0, p0}, Landroidx/fragment/app/Fragment$4;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 2800
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2801
    iget v0, p0, Landroidx/fragment/app/Fragment;->mFragmentId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2802
    const-string v0, " mContainerId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2803
    iget v0, p0, Landroidx/fragment/app/Fragment;->mContainerId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2804
    const-string v0, " mTag="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2805
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/Fragment;->mState:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2806
    const-string v0, " mWho="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2807
    const-string v0, " mBackStackNesting="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/Fragment;->mBackStackNesting:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2808
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAdded="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mAdded:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2809
    const-string v0, " mRemoving="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mRemoving:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2810
    const-string v0, " mFromLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2811
    const-string v0, " mInLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mInLayout:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2812
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHidden="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHidden:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2813
    const-string v0, " mDetached="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mDetached:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2814
    const-string v0, " mMenuVisible="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2815
    const-string v0, " mHasMenu="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2816
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRetainInstance="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mRetainInstance:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2817
    const-string v0, " mUserVisibleHint="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2818
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz v0, :cond_0

    .line 2819
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentManager="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2820
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2822
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-eqz v0, :cond_1

    .line 2823
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHost="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2824
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2826
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_2

    .line 2827
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mParentFragment="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2828
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2830
    :cond_2
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mArguments:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    .line 2831
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mArguments="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mArguments:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2833
    :cond_3
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v0, :cond_4

    .line 2834
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedFragmentState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2835
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2837
    :cond_4
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v0, :cond_5

    .line 2838
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedViewState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2839
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2841
    :cond_5
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mSavedViewRegistryState:Landroid/os/Bundle;

    if-eqz v0, :cond_6

    .line 2842
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedViewRegistryState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2843
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mSavedViewRegistryState:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2845
    :cond_6
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/fragment/app/Fragment;->getTargetFragment(Z)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 2846
    .local v0, "target":Landroidx/fragment/app/Fragment;
    if-eqz v0, :cond_7

    .line 2847
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mTarget="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2848
    const-string v1, " mTargetRequestCode="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2849
    iget v1, p0, Landroidx/fragment/app/Fragment;->mTargetRequestCode:I

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 2851
    :cond_7
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mPopDirection="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getPopDirection()Z

    move-result v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 2852
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getEnterAnim()I

    move-result v1

    if-eqz v1, :cond_8

    .line 2853
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "getEnterAnim="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getEnterAnim()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 2855
    :cond_8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getExitAnim()I

    move-result v1

    if-eqz v1, :cond_9

    .line 2856
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "getExitAnim="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getExitAnim()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 2858
    :cond_9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getPopEnterAnim()I

    move-result v1

    if-eqz v1, :cond_a

    .line 2859
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "getPopEnterAnim="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2860
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getPopEnterAnim()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 2862
    :cond_a
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getPopExitAnim()I

    move-result v1

    if-eqz v1, :cond_b

    .line 2863
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "getPopExitAnim="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getPopExitAnim()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 2865
    :cond_b
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v1, :cond_c

    .line 2866
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mContainer="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2868
    :cond_c
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_d

    .line 2869
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mView="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2871
    :cond_d
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 2872
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2873
    const-string v1, "mAnimatingAway="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2874
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2876
    :cond_e
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 2877
    invoke-static {p0}, Landroidx/loader/app/LoaderManager;->getInstance(Landroidx/lifecycle/LifecycleOwner;)Landroidx/loader/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Landroidx/loader/app/LoaderManager;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2879
    :cond_f
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2880
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Child "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2881
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2, p3, p4}, Landroidx/fragment/app/FragmentManager;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2882
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 666
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method findFragmentByWho(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 1
    .param p1, "who"    # Ljava/lang/String;

    .line 2886
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2887
    return-object p0

    .line 2889
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->findFragmentByWho(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method generateActivityResultKey()Ljava/lang/String;
    .locals 2

    .line 3496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fragment_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_rq#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mNextLocalRequestCode:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getActivity()Landroidx/fragment/app/FragmentActivity;
    .locals 1

    .line 932
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentHostCallback;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    :goto_0
    return-object v0
.end method

.method public getAllowEnterTransitionOverlap()Z
    .locals 1

    .line 2625
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2626
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 2625
    :goto_1
    return v0
.end method

.method public getAllowReturnTransitionOverlap()Z
    .locals 1

    .line 2650
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2651
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 2650
    :goto_1
    return v0
.end method

.method getAnimatingAway()Landroid/view/View;
    .locals 1

    .line 3355
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    .line 3356
    const/4 v0, 0x0

    return-object v0

    .line 3358
    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mAnimatingAway:Landroid/view/View;

    return-object v0
.end method

.method public final getArguments()Landroid/os/Bundle;
    .locals 1

    .line 736
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mArguments:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getChildFragmentManager()Landroidx/fragment/app/FragmentManager;
    .locals 3

    .line 1092
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-eqz v0, :cond_0

    .line 1095
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    return-object v0

    .line 1093
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has not been attached yet."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 905
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;
    .locals 4

    .line 427
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz v0, :cond_4

    .line 430
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mDefaultFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    if-nez v0, :cond_3

    .line 431
    const/4 v0, 0x0

    .line 432
    .local v0, "application":Landroid/app/Application;
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 433
    .local v1, "appContext":Landroid/content/Context;
    :goto_0
    instance-of v2, v1, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_1

    .line 434
    instance-of v2, v1, Landroid/app/Application;

    if-eqz v2, :cond_0

    .line 435
    move-object v0, v1

    check-cast v0, Landroid/app/Application;

    .line 436
    goto :goto_1

    .line 438
    :cond_0
    move-object v2, v1

    check-cast v2, Landroid/content/ContextWrapper;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    .line 440
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    const/4 v2, 0x3

    invoke-static {v2}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 441
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find Application instance from Context "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 442
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", you will not be able to use AndroidViewModel with the default ViewModelProvider.Factory"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 441
    const-string v3, "FragmentManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_2
    new-instance v2, Landroidx/lifecycle/SavedStateViewModelFactory;

    .line 449
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v2, v0, p0, v3}, Landroidx/lifecycle/SavedStateViewModelFactory;-><init>(Landroid/app/Application;Landroidx/savedstate/SavedStateRegistryOwner;Landroid/os/Bundle;)V

    iput-object v2, p0, Landroidx/fragment/app/Fragment;->mDefaultFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 451
    .end local v0    # "application":Landroid/app/Application;
    .end local v1    # "appContext":Landroid/content/Context;
    :cond_3
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mDefaultFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    return-object v0

    .line 428
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t access ViewModels from detached fragment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getEnterAnim()I
    .locals 1

    .line 3261
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    .line 3262
    const/4 v0, 0x0

    return v0

    .line 3264
    :cond_0
    iget v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mEnterAnim:I

    return v0
.end method

.method public getEnterTransition()Ljava/lang/Object;
    .locals 1

    .line 2408
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    .line 2409
    const/4 v0, 0x0

    return-object v0

    .line 2411
    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mEnterTransition:Ljava/lang/Object;

    return-object v0
.end method

.method getEnterTransitionCallback()Landroidx/core/app/SharedElementCallback;
    .locals 1

    .line 3341
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    .line 3342
    const/4 v0, 0x0

    return-object v0

    .line 3344
    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mEnterTransitionCallback:Landroidx/core/app/SharedElementCallback;

    return-object v0
.end method

.method getExitAnim()I
    .locals 1

    .line 3268
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    .line 3269
    const/4 v0, 0x0

    return v0

    .line 3271
    :cond_0
    iget v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mExitAnim:I

    return v0
.end method

.method public getExitTransition()Ljava/lang/Object;
    .locals 1

    .line 2487
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    .line 2488
    const/4 v0, 0x0

    return-object v0

    .line 2490
    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mExitTransition:Ljava/lang/Object;

    return-object v0
.end method

.method getExitTransitionCallback()Landroidx/core/app/SharedElementCallback;
    .locals 1

    .line 3348
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    .line 3349
    const/4 v0, 0x0

    return-object v0

    .line 3351
    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mExitTransitionCallback:Landroidx/core/app/SharedElementCallback;

    return-object v0
.end method

.method getFocusedView()Landroid/view/View;
    .locals 1

    .line 3377
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    .line 3378
    const/4 v0, 0x0

    return-object v0

    .line 3380
    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mFocusedView:Landroid/view/View;

    return-object v0
.end method

.method public final getFragmentManager()Landroidx/fragment/app/FragmentManager;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1039
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    return-object v0
.end method

.method public final getHost()Ljava/lang/Object;
    .locals 1

    .line 959
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentHostCallback;->onGetHost()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final getId()I
    .locals 1

    .line 705
    iget v0, p0, Landroidx/fragment/app/Fragment;->mFragmentId:I

    return v0
.end method

.method public final getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .line 1649
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 1650
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0

    .line 1652
    :cond_0
    return-object v0
.end method

.method public getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 2
    .param p1, "savedFragmentState"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1683
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-eqz v0, :cond_0

    .line 1687
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentHostCallback;->onGetLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1688
    .local v0, "result":Landroid/view/LayoutInflater;
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->getLayoutInflaterFactory()Landroid/view/LayoutInflater$Factory2;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/core/view/LayoutInflaterCompat;->setFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    .line 1689
    return-object v0

    .line 1684
    .end local v0    # "result":Landroid/view/LayoutInflater;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 1

    .line 320
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    return-object v0
.end method

.method public getLoaderManager()Landroidx/loader/app/LoaderManager;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1368
    invoke-static {p0}, Landroidx/loader/app/LoaderManager;->getInstance(Landroidx/lifecycle/LifecycleOwner;)Landroidx/loader/app/LoaderManager;

    move-result-object v0

    return-object v0
.end method

.method getNextTransition()I
    .locals 1

    .line 3303
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    .line 3304
    const/4 v0, 0x0

    return v0

    .line 3306
    :cond_0
    iget v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mNextTransition:I

    return v0
.end method

.method public final getParentFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 1104
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public final getParentFragmentManager()Landroidx/fragment/app/FragmentManager;
    .locals 4

    .line 1056
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 1057
    .local v0, "fragmentManager":Landroidx/fragment/app/FragmentManager;
    if-eqz v0, :cond_0

    .line 1061
    return-object v0

    .line 1058
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not associated with a fragment manager."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getPopDirection()Z
    .locals 1

    .line 3289
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    .line 3290
    const/4 v0, 0x0

    return v0

    .line 3292
    :cond_0
    iget-boolean v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mIsPop:Z

    return v0
.end method

.method getPopEnterAnim()I
    .locals 1

    .line 3275
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    .line 3276
    const/4 v0, 0x0

    return v0

    .line 3278
    :cond_0
    iget v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mPopEnterAnim:I

    return v0
.end method

.method getPopExitAnim()I
    .locals 1

    .line 3282
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    .line 3283
    const/4 v0, 0x0

    return v0

    .line 3285
    :cond_0
    iget v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mPopExitAnim:I

    return v0
.end method

.method getPostOnViewCreatedAlpha()F
    .locals 1

    .line 3366
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    .line 3367
    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 3369
    :cond_0
    iget v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mPostOnViewCreatedAlpha:F

    return v0
.end method

.method public getReenterTransition()Ljava/lang/Object;
    .locals 2

    .line 2525
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    .line 2526
    const/4 v0, 0x0

    return-object v0

    .line 2528
    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mReenterTransition:Ljava/lang/Object;

    sget-object v1, Landroidx/fragment/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 2529
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mReenterTransition:Ljava/lang/Object;

    .line 2528
    :goto_0
    return-object v0
.end method

.method public final getResources()Landroid/content/res/Resources;
    .locals 1

    .line 982
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public final getRetainInstance()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1270
    invoke-static {p0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->onGetRetainInstanceUsage(Landroidx/fragment/app/Fragment;)V

    .line 1271
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mRetainInstance:Z

    return v0
.end method

.method public getReturnTransition()Ljava/lang/Object;
    .locals 2

    .line 2447
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    .line 2448
    const/4 v0, 0x0

    return-object v0

    .line 2450
    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mReturnTransition:Ljava/lang/Object;

    sget-object v1, Landroidx/fragment/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 2451
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mReturnTransition:Ljava/lang/Object;

    .line 2450
    :goto_0
    return-object v0
.end method

.method public final getSavedStateRegistry()Landroidx/savedstate/SavedStateRegistry;
    .locals 1

    .line 457
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mSavedStateRegistryController:Landroidx/savedstate/SavedStateRegistryController;

    invoke-virtual {v0}, Landroidx/savedstate/SavedStateRegistryController;->getSavedStateRegistry()Landroidx/savedstate/SavedStateRegistry;

    move-result-object v0

    return-object v0
.end method

.method public getSharedElementEnterTransition()Ljava/lang/Object;
    .locals 1

    .line 2558
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    .line 2559
    const/4 v0, 0x0

    return-object v0

    .line 2561
    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mSharedElementEnterTransition:Ljava/lang/Object;

    return-object v0
.end method

.method public getSharedElementReturnTransition()Ljava/lang/Object;
    .locals 2

    .line 2596
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    .line 2597
    const/4 v0, 0x0

    return-object v0

    .line 2599
    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mSharedElementReturnTransition:Ljava/lang/Object;

    sget-object v1, Landroidx/fragment/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    .line 2600
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 2601
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mSharedElementReturnTransition:Ljava/lang/Object;

    .line 2599
    :goto_0
    return-object v0
.end method

.method getSharedElementSourceNames()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3319
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3322
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mSharedElementSourceNames:Ljava/util/ArrayList;

    return-object v0

    .line 3320
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method getSharedElementTargetNames()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3327
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mSharedElementTargetNames:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3330
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mSharedElementTargetNames:Ljava/util/ArrayList;

    return-object v0

    .line 3328
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public final getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "resId"    # I

    .line 1004
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "resId"    # I
    .param p2, "formatArgs"    # [Ljava/lang/Object;

    .line 1017
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 1

    .line 713
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public final getTargetFragment()Landroidx/fragment/app/Fragment;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 859
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/fragment/app/Fragment;->getTargetFragment(Z)Landroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public final getTargetRequestCode()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 894
    invoke-static {p0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->onGetTargetFragmentRequestCodeUsage(Landroidx/fragment/app/Fragment;)V

    .line 895
    iget v0, p0, Landroidx/fragment/app/Fragment;->mTargetRequestCode:I

    return v0
.end method

.method public final getText(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "resId"    # I

    .line 993
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getUserVisibleHint()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1356
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 1962
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;
    .locals 2

    .line 361
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/FragmentViewLifecycleOwner;

    if-eqz v0, :cond_0

    .line 365
    return-object v0

    .line 362
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t access the Fragment View\'s LifecycleOwner when getView() is null i.e., before onCreateView() or after onDestroyView()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getViewLifecycleOwnerLiveData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Landroidx/lifecycle/LifecycleOwner;",
            ">;"
        }
    .end annotation

    .line 382
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwnerLiveData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getViewModelStore()Landroidx/lifecycle/ViewModelStore;
    .locals 2

    .line 398
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz v0, :cond_1

    .line 401
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->getMinimumMaxLifecycleState()I

    move-result v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v1}, Landroidx/lifecycle/Lifecycle$State;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 406
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentManager;->getViewModelStore(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/ViewModelStore;

    move-result-object v0

    return-object v0

    .line 402
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Calling getViewModelStore() before a Fragment reaches onCreate() when using setMaxLifecycle(INITIALIZED) is not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 399
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t access ViewModels from detached fragment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final hasOptionsMenu()Z
    .locals 1

    .line 1199
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 673
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method initState()V
    .locals 3

    .line 2175
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->initLifecycle()V

    .line 2176
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mPreviousWho:Ljava/lang/String;

    .line 2177
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 2178
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mAdded:Z

    .line 2179
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mRemoving:Z

    .line 2180
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    .line 2181
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mInLayout:Z

    .line 2182
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mRestored:Z

    .line 2183
    iput v0, p0, Landroidx/fragment/app/Fragment;->mBackStackNesting:I

    .line 2184
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 2185
    new-instance v2, Landroidx/fragment/app/FragmentManagerImpl;

    invoke-direct {v2}, Landroidx/fragment/app/FragmentManagerImpl;-><init>()V

    iput-object v2, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 2186
    iput-object v1, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 2187
    iput v0, p0, Landroidx/fragment/app/Fragment;->mFragmentId:I

    .line 2188
    iput v0, p0, Landroidx/fragment/app/Fragment;->mContainerId:I

    .line 2189
    iput-object v1, p0, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    .line 2190
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 2191
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mDetached:Z

    .line 2192
    return-void
.end method

.method public final isAdded()Z
    .locals 1

    .line 1134
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isDetached()Z
    .locals 1

    .line 1143
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mDetached:Z

    return v0
.end method

.method public final isHidden()Z
    .locals 1

    .line 1192
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHidden:Z

    return v0
.end method

.method final isInBackStack()Z
    .locals 1

    .line 659
    iget v0, p0, Landroidx/fragment/app/Fragment;->mBackStackNesting:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isInLayout()Z
    .locals 1

    .line 1163
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mInLayout:Z

    return v0
.end method

.method public final isMenuVisible()Z
    .locals 2

    .line 1205
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 1206
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->isParentMenuVisible(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1205
    :goto_0
    return v0
.end method

.method isPostponed()Z
    .locals 1

    .line 3384
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    .line 3385
    const/4 v0, 0x0

    return v0

    .line 3387
    :cond_0
    iget-boolean v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mEnterTransitionPostponed:Z

    return v0
.end method

.method public final isRemoving()Z
    .locals 1

    .line 1152
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mRemoving:Z

    return v0
.end method

.method public final isResumed()Z
    .locals 2

    .line 1171
    iget v0, p0, Landroidx/fragment/app/Fragment;->mState:I

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isStateSaved()Z
    .locals 1

    .line 763
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-nez v0, :cond_0

    .line 764
    const/4 v0, 0x0

    return v0

    .line 766
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    move-result v0

    return v0
.end method

.method public final isVisible()Z
    .locals 1

    .line 1180
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1181
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1180
    :goto_0
    return v0
.end method

.method noteStateNotSaved()V
    .locals 1

    .line 3050
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->noteStateNotSaved()V

    .line 3051
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2007
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 2008
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1500
    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " received the following in onActivityResult(): requestCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " resultCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1809
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 1810
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 1790
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 1791
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentHostCallback;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1792
    .local v0, "hostActivity":Landroid/app/Activity;
    :goto_0
    if-eqz v0, :cond_1

    .line 1793
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 1794
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 1796
    :cond_1
    return-void
.end method

.method public onAttachFragment(Landroidx/fragment/app/Fragment;)V
    .locals 0
    .param p1, "childFragment"    # Landroidx/fragment/app/Fragment;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1780
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 2096
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 2097
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 2355
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 1877
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 1878
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->restoreChildFragmentState(Landroid/os/Bundle;)V

    .line 1879
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManager;->isStateAtLeast(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1880
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->dispatchCreate()V

    .line 1882
    :cond_0
    return-void
.end method

.method public onCreateAnimation(IZI)Landroid/view/animation/Animation;
    .locals 1
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "nextAnim"    # I

    .line 1830
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateAnimator(IZI)Landroid/animation/Animator;
    .locals 1
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "nextAnim"    # I

    .line 1852
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .line 2307
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 2308
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .line 2219
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 1934
    iget v0, p0, Landroidx/fragment/app/Fragment;->mContentLayoutId:I

    if-eqz v0, :cond_0

    .line 1935
    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 1937
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .line 2165
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 2166
    return-void
.end method

.method public onDestroyOptionsMenu()V
    .locals 0

    .line 2248
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 2155
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 2156
    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 2201
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 2202
    return-void
.end method

.method public onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 1633
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public onHiddenChanged(Z)V
    .locals 0
    .param p1, "hidden"    # Z

    .line 1217
    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1758
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 1759
    return-void
.end method

.method public onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 1738
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 1739
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentHostCallback;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1740
    .local v0, "hostActivity":Landroid/app/Activity;
    :goto_0
    if-eqz v0, :cond_1

    .line 1741
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 1742
    invoke-virtual {p0, v0, p2, p3}, Landroidx/fragment/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 1744
    :cond_1
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 2140
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 2141
    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0
    .param p1, "isInMultiWindowMode"    # Z

    .line 2081
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 2271
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .line 2284
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 2122
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 2123
    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 0
    .param p1, "isInPictureInPictureMode"    # Z

    .line 2091
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .line 2237
    return-void
.end method

.method public onPrimaryNavigationFragmentChanged(Z)V
    .locals 0
    .param p1, "isPrimaryNavigationFragment"    # Z

    .line 2112
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1602
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 2046
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 2047
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 2070
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 2034
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 2035
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 2133
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 2134
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 1952
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 2023
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 2024
    return-void
.end method

.method performActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 2991
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->noteStateNotSaved()V

    .line 2992
    const/4 v0, 0x3

    iput v0, p0, Landroidx/fragment/app/Fragment;->mState:I

    .line 2993
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 2994
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2995
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    if-eqz v0, :cond_0

    .line 2999
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->restoreViewState()V

    .line 3000
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->dispatchActivityCreated()V

    .line 3001
    return-void

    .line 2996
    :cond_0
    new-instance v0, Landroidx/fragment/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onActivityCreated()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method performAttach()V
    .locals 3

    .line 2913
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mOnPreAttachedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment$OnPreAttachedListener;

    .line 2914
    .local v1, "listener":Landroidx/fragment/app/Fragment$OnPreAttachedListener;
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment$OnPreAttachedListener;->onPreAttached()V

    .line 2915
    .end local v1    # "listener":Landroidx/fragment/app/Fragment$OnPreAttachedListener;
    goto :goto_0

    .line 2916
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mOnPreAttachedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2917
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->createFragmentContainer()Landroidx/fragment/app/FragmentContainer;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p0}, Landroidx/fragment/app/FragmentManager;->attachController(Landroidx/fragment/app/FragmentHostCallback;Landroidx/fragment/app/FragmentContainer;Landroidx/fragment/app/Fragment;)V

    .line 2918
    const/4 v0, 0x0

    iput v0, p0, Landroidx/fragment/app/Fragment;->mState:I

    .line 2919
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 2920
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 2921
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    if-eqz v0, :cond_1

    .line 2925
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentManager;->dispatchOnAttachFragment(Landroidx/fragment/app/Fragment;)V

    .line 2926
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->dispatchAttach()V

    .line 2927
    return-void

    .line 2922
    :cond_1
    new-instance v0, Landroidx/fragment/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onAttach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method performConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 3075
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3076
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3077
    return-void
.end method

.method performContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 3130
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v0, :cond_1

    .line 3131
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3132
    const/4 v0, 0x1

    return v0

    .line 3134
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->dispatchContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 3136
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method performCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 2930
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->noteStateNotSaved()V

    .line 2931
    const/4 v0, 0x1

    iput v0, p0, Landroidx/fragment/app/Fragment;->mState:I

    .line 2932
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 2933
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 2934
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    new-instance v2, Landroidx/fragment/app/Fragment$5;

    invoke-direct {v2, p0}, Landroidx/fragment/app/Fragment$5;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v1, v2}, Landroidx/lifecycle/LifecycleRegistry;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 2946
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mSavedStateRegistryController:Landroidx/savedstate/SavedStateRegistryController;

    invoke-virtual {v1, p1}, Landroidx/savedstate/SavedStateRegistryController;->performRestore(Landroid/os/Bundle;)V

    .line 2947
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2948
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mIsCreated:Z

    .line 2949
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    if-eqz v0, :cond_1

    .line 2953
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 2954
    return-void

    .line 2950
    :cond_1
    new-instance v0, Landroidx/fragment/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onCreate()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .line 3094
    const/4 v0, 0x0

    .line 3095
    .local v0, "show":Z
    iget-boolean v1, p0, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v1, :cond_1

    .line 3096
    iget-boolean v1, p0, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    if-eqz v1, :cond_0

    .line 3097
    const/4 v0, 0x1

    .line 3098
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 3100
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1, p1, p2}, Landroidx/fragment/app/FragmentManager;->dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 3102
    :cond_1
    return v0
.end method

.method performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 2958
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->noteStateNotSaved()V

    .line 2959
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mPerformedCreateView:Z

    .line 2960
    new-instance v0, Landroidx/fragment/app/FragmentViewLifecycleOwner;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/fragment/app/FragmentViewLifecycleOwner;-><init>(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/ViewModelStore;)V

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/FragmentViewLifecycleOwner;

    .line 2961
    invoke-virtual {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 2962
    if-eqz v0, :cond_0

    .line 2964
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/FragmentViewLifecycleOwner;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentViewLifecycleOwner;->initialize()V

    .line 2968
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/FragmentViewLifecycleOwner;

    invoke-static {v0, v1}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->set(Landroid/view/View;Landroidx/lifecycle/LifecycleOwner;)V

    .line 2969
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/FragmentViewLifecycleOwner;

    invoke-static {v0, v1}, Landroidx/lifecycle/ViewTreeViewModelStoreOwner;->set(Landroid/view/View;Landroidx/lifecycle/ViewModelStoreOwner;)V

    .line 2970
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/FragmentViewLifecycleOwner;

    invoke-static {v0, v1}, Landroidx/savedstate/ViewTreeSavedStateRegistryOwner;->set(Landroid/view/View;Landroidx/savedstate/SavedStateRegistryOwner;)V

    .line 2972
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwnerLiveData:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/FragmentViewLifecycleOwner;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 2974
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/FragmentViewLifecycleOwner;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentViewLifecycleOwner;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2978
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/FragmentViewLifecycleOwner;

    .line 2980
    :goto_0
    return-void

    .line 2975
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Called getViewLifecycleOwner() but onCreateView() returned null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method performDestroy()V
    .locals 3

    .line 3212
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->dispatchDestroy()V

    .line 3213
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 3214
    const/4 v0, 0x0

    iput v0, p0, Landroidx/fragment/app/Fragment;->mState:I

    .line 3215
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 3216
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mIsCreated:Z

    .line 3217
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 3218
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    if-eqz v0, :cond_0

    .line 3222
    return-void

    .line 3219
    :cond_0
    new-instance v0, Landroidx/fragment/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onDestroy()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method performDestroyView()V
    .locals 3

    .line 3191
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->dispatchDestroyView()V

    .line 3192
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/FragmentViewLifecycleOwner;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentViewLifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    .line 3193
    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3194
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/FragmentViewLifecycleOwner;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentViewLifecycleOwner;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 3196
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Landroidx/fragment/app/Fragment;->mState:I

    .line 3197
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 3198
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 3199
    iget-boolean v1, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    if-eqz v1, :cond_1

    .line 3207
    invoke-static {p0}, Landroidx/loader/app/LoaderManager;->getInstance(Landroidx/lifecycle/LifecycleOwner;)Landroidx/loader/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/loader/app/LoaderManager;->markForRedelivery()V

    .line 3208
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mPerformedCreateView:Z

    .line 3209
    return-void

    .line 3200
    :cond_1
    new-instance v0, Landroidx/fragment/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onDestroyView()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method performDetach()V
    .locals 3

    .line 3225
    const/4 v0, -0x1

    iput v0, p0, Landroidx/fragment/app/Fragment;->mState:I

    .line 3226
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 3227
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    .line 3228
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 3229
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    if-eqz v0, :cond_1

    .line 3237
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3238
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->dispatchDestroy()V

    .line 3239
    new-instance v0, Landroidx/fragment/app/FragmentManagerImpl;

    invoke-direct {v0}, Landroidx/fragment/app/FragmentManagerImpl;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 3241
    :cond_0
    return-void

    .line 3230
    :cond_1
    new-instance v0, Landroidx/fragment/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onDetach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 1665
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 1666
    return-object v0
.end method

.method performLowMemory()V
    .locals 1

    .line 3080
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->onLowMemory()V

    .line 3081
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->dispatchLowMemory()V

    .line 3082
    return-void
.end method

.method performMultiWindowModeChanged(Z)V
    .locals 1
    .param p1, "isInMultiWindowMode"    # Z

    .line 3065
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->onMultiWindowModeChanged(Z)V

    .line 3066
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->dispatchMultiWindowModeChanged(Z)V

    .line 3067
    return-void
.end method

.method performOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 3118
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v0, :cond_1

    .line 3119
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_0

    .line 3120
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3121
    const/4 v0, 0x1

    return v0

    .line 3124
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 3126
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method performOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .line 3140
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v0, :cond_1

    .line 3141
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_0

    .line 3142
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 3144
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->dispatchOptionsMenuClosed(Landroid/view/Menu;)V

    .line 3146
    :cond_1
    return-void
.end method

.method performPause()V
    .locals 3

    .line 3159
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->dispatchPause()V

    .line 3160
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3161
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/FragmentViewLifecycleOwner;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentViewLifecycleOwner;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 3163
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 3164
    const/4 v0, 0x6

    iput v0, p0, Landroidx/fragment/app/Fragment;->mState:I

    .line 3165
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 3166
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 3167
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    if-eqz v0, :cond_1

    .line 3171
    return-void

    .line 3168
    :cond_1
    new-instance v0, Landroidx/fragment/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onPause()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method performPictureInPictureModeChanged(Z)V
    .locals 1
    .param p1, "isInPictureInPictureMode"    # Z

    .line 3070
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->onPictureInPictureModeChanged(Z)V

    .line 3071
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->dispatchPictureInPictureModeChanged(Z)V

    .line 3072
    return-void
.end method

.method performPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .line 3106
    const/4 v0, 0x0

    .line 3107
    .local v0, "show":Z
    iget-boolean v1, p0, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v1, :cond_1

    .line 3108
    iget-boolean v1, p0, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    if-eqz v1, :cond_0

    .line 3109
    const/4 v0, 0x1

    .line 3110
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 3112
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1, p1}, Landroidx/fragment/app/FragmentManager;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 3114
    :cond_1
    return v0
.end method

.method performPrimaryNavigationFragmentChanged()V
    .locals 2

    .line 3054
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentManager;->isPrimaryNavigation(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    .line 3056
    .local v0, "isPrimaryNavigationFragment":Z
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mIsPrimaryNavigationFragment:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 3057
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v1, v0, :cond_1

    .line 3058
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroidx/fragment/app/Fragment;->mIsPrimaryNavigationFragment:Ljava/lang/Boolean;

    .line 3059
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->onPrimaryNavigationFragmentChanged(Z)V

    .line 3060
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->dispatchPrimaryNavigationFragmentChanged()V

    .line 3062
    :cond_1
    return-void
.end method

.method performResume()V
    .locals 3

    .line 3033
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->noteStateNotSaved()V

    .line 3034
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->execPendingActions(Z)Z

    .line 3035
    const/4 v0, 0x7

    iput v0, p0, Landroidx/fragment/app/Fragment;->mState:I

    .line 3036
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 3037
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 3038
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    if-eqz v0, :cond_1

    .line 3042
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 3043
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3044
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/FragmentViewLifecycleOwner;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentViewLifecycleOwner;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 3046
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->dispatchResume()V

    .line 3047
    return-void

    .line 3039
    :cond_1
    new-instance v0, Landroidx/fragment/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onResume()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method performSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 3149
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 3150
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mSavedStateRegistryController:Landroidx/savedstate/SavedStateRegistryController;

    invoke-virtual {v0, p1}, Landroidx/savedstate/SavedStateRegistryController;->performSave(Landroid/os/Bundle;)V

    .line 3151
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->saveAllStateInternal()Landroid/os/Parcelable;

    move-result-object v0

    .line 3152
    .local v0, "p":Landroid/os/Parcelable;
    if-eqz v0, :cond_0

    .line 3153
    const-string v1, "android:support:fragments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3155
    :cond_0
    return-void
.end method

.method performStart()V
    .locals 3

    .line 3015
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->noteStateNotSaved()V

    .line 3016
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->execPendingActions(Z)Z

    .line 3017
    const/4 v0, 0x5

    iput v0, p0, Landroidx/fragment/app/Fragment;->mState:I

    .line 3018
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 3019
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 3020
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    if-eqz v0, :cond_1

    .line 3024
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 3025
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3026
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/FragmentViewLifecycleOwner;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentViewLifecycleOwner;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 3028
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->dispatchStart()V

    .line 3029
    return-void

    .line 3021
    :cond_1
    new-instance v0, Landroidx/fragment/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onStart()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method performStop()V
    .locals 3

    .line 3175
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->dispatchStop()V

    .line 3176
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3177
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/FragmentViewLifecycleOwner;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentViewLifecycleOwner;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 3179
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 3180
    const/4 v0, 0x4

    iput v0, p0, Landroidx/fragment/app/Fragment;->mState:I

    .line 3181
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 3182
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 3183
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    if-eqz v0, :cond_1

    .line 3187
    return-void

    .line 3184
    :cond_1
    new-instance v0, Landroidx/fragment/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onStop()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method performViewCreated()V
    .locals 2

    .line 2985
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2986
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->dispatchViewCreated()V

    .line 2987
    return-void
.end method

.method public postponeEnterTransition()V
    .locals 2

    .line 2683
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mEnterTransitionPostponed:Z

    .line 2684
    return-void
.end method

.method public final postponeEnterTransition(JLjava/util/concurrent/TimeUnit;)V
    .locals 4
    .param p1, "duration"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 2715
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mEnterTransitionPostponed:Z

    .line 2717
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz v0, :cond_0

    .line 2718
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getHost()Landroidx/fragment/app/FragmentHostCallback;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .local v0, "handler":Landroid/os/Handler;
    goto :goto_0

    .line 2720
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2722
    .restart local v0    # "handler":Landroid/os/Handler;
    :goto_0
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mPostponedDurationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2723
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mPostponedDurationRunnable:Ljava/lang/Runnable;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2724
    return-void
.end method

.method public final registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/activity/result/contract/ActivityResultContract<",
            "TI;TO;>;",
            "Landroidx/activity/result/ActivityResultCallback<",
            "TO;>;)",
            "Landroidx/activity/result/ActivityResultLauncher<",
            "TI;>;"
        }
    .end annotation

    .line 3404
    .local p1, "contract":Landroidx/activity/result/contract/ActivityResultContract;, "Landroidx/activity/result/contract/ActivityResultContract<TI;TO;>;"
    .local p2, "callback":Landroidx/activity/result/ActivityResultCallback;, "Landroidx/activity/result/ActivityResultCallback<TO;>;"
    new-instance v0, Landroidx/fragment/app/Fragment$6;

    invoke-direct {v0, p0}, Landroidx/fragment/app/Fragment$6;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-direct {p0, p1, v0, p2}, Landroidx/fragment/app/Fragment;->prepareCallInternal(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/arch/core/util/Function;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    return-object v0
.end method

.method public final registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultRegistry;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;
    .locals 1
    .param p2, "registry"    # Landroidx/activity/result/ActivityResultRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/activity/result/contract/ActivityResultContract<",
            "TI;TO;>;",
            "Landroidx/activity/result/ActivityResultRegistry;",
            "Landroidx/activity/result/ActivityResultCallback<",
            "TO;>;)",
            "Landroidx/activity/result/ActivityResultLauncher<",
            "TI;>;"
        }
    .end annotation

    .line 3422
    .local p1, "contract":Landroidx/activity/result/contract/ActivityResultContract;, "Landroidx/activity/result/contract/ActivityResultContract<TI;TO;>;"
    .local p3, "callback":Landroidx/activity/result/ActivityResultCallback;, "Landroidx/activity/result/ActivityResultCallback<TO;>;"
    new-instance v0, Landroidx/fragment/app/Fragment$7;

    invoke-direct {v0, p0, p2}, Landroidx/fragment/app/Fragment$7;-><init>(Landroidx/fragment/app/Fragment;Landroidx/activity/result/ActivityResultRegistry;)V

    invoke-direct {p0, p1, v0, p3}, Landroidx/fragment/app/Fragment;->prepareCallInternal(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/arch/core/util/Function;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    return-object v0
.end method

.method public registerForContextMenu(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 2321
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 2322
    return-void
.end method

.method public final requestPermissions([Ljava/lang/String;I)V
    .locals 3
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "requestCode"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1569
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-eqz v0, :cond_0

    .line 1572
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroidx/fragment/app/FragmentManager;->launchRequestPermissions(Landroidx/fragment/app/Fragment;[Ljava/lang/String;I)V

    .line 1573
    return-void

    .line 1570
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final requireActivity()Landroidx/fragment/app/FragmentActivity;
    .locals 4

    .line 944
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 945
    .local v0, "activity":Landroidx/fragment/app/FragmentActivity;
    if-eqz v0, :cond_0

    .line 948
    return-object v0

    .line 946
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not attached to an activity."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final requireArguments()Landroid/os/Bundle;
    .locals 4

    .line 747
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 748
    .local v0, "arguments":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 751
    return-object v0

    .line 749
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not have any arguments."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final requireContext()Landroid/content/Context;
    .locals 4

    .line 916
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 917
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 920
    return-object v0

    .line 918
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not attached to a context."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final requireFragmentManager()Landroidx/fragment/app/FragmentManager;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1083
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    return-object v0
.end method

.method public final requireHost()Ljava/lang/Object;
    .locals 4

    .line 970
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getHost()Ljava/lang/Object;

    move-result-object v0

    .line 971
    .local v0, "host":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 974
    return-object v0

    .line 972
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not attached to a host."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final requireParentFragment()Landroidx/fragment/app/Fragment;
    .locals 5

    .line 1116
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 1117
    .local v0, "parentFragment":Landroidx/fragment/app/Fragment;
    if-nez v0, :cond_1

    .line 1118
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1119
    .local v1, "context":Landroid/content/Context;
    const-string v2, "Fragment "

    if-nez v1, :cond_0

    .line 1120
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " is not attached to any Fragment or host"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1123
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " is not a child Fragment, it is directly attached to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1124
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1127
    .end local v1    # "context":Landroid/content/Context;
    :cond_1
    return-object v0
.end method

.method public final requireView()Landroid/view/View;
    .locals 4

    .line 1973
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 1974
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1978
    return-object v0

    .line 1975
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " did not return a View from onCreateView() or this was called before onCreateView()."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method restoreChildFragmentState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 1897
    if-eqz p1, :cond_0

    .line 1898
    const-string v0, "android:support:fragments"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 1900
    .local v0, "p":Landroid/os/Parcelable;
    if-eqz v0, :cond_0

    .line 1901
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManager;->restoreSaveStateInternal(Landroid/os/Parcelable;)V

    .line 1902
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->dispatchCreate()V

    .line 1905
    .end local v0    # "p":Landroid/os/Parcelable;
    :cond_0
    return-void
.end method

.method final restoreViewState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 639
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 640
    iget-object v2, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 641
    iput-object v1, p0, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 643
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 644
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/FragmentViewLifecycleOwner;

    iget-object v2, p0, Landroidx/fragment/app/Fragment;->mSavedViewRegistryState:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentViewLifecycleOwner;->performRestore(Landroid/os/Bundle;)V

    .line 645
    iput-object v1, p0, Landroidx/fragment/app/Fragment;->mSavedViewRegistryState:Landroid/os/Bundle;

    .line 647
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 648
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 649
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    if-eqz v0, :cond_3

    .line 653
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 654
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/FragmentViewLifecycleOwner;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentViewLifecycleOwner;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 656
    :cond_2
    return-void

    .line 650
    :cond_3
    new-instance v0, Landroidx/fragment/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onViewStateRestored()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAllowEnterTransitionOverlap(Z)V
    .locals 2
    .param p1, "allow"    # Z

    .line 2613
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    .line 2614
    return-void
.end method

.method public setAllowReturnTransitionOverlap(Z)V
    .locals 2
    .param p1, "allow"    # Z

    .line 2638
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    .line 2639
    return-void
.end method

.method setAnimations(IIII)V
    .locals 1
    .param p1, "enter"    # I
    .param p2, "exit"    # I
    .param p3, "popEnter"    # I
    .param p4, "popExit"    # I

    .line 3251
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    .line 3252
    return-void

    .line 3254
    :cond_0
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    iput p1, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mEnterAnim:I

    .line 3255
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    iput p2, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mExitAnim:I

    .line 3256
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    iput p3, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mPopEnterAnim:I

    .line 3257
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    iput p4, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mPopExitAnim:I

    .line 3258
    return-void
.end method

.method public setArguments(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "args"    # Landroid/os/Bundle;

    .line 724
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isStateSaved()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 725
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment already added and state has been saved"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 727
    :cond_1
    :goto_0
    iput-object p1, p0, Landroidx/fragment/app/Fragment;->mArguments:Landroid/os/Bundle;

    .line 728
    return-void
.end method

.method public setEnterSharedElementCallback(Landroidx/core/app/SharedElementCallback;)V
    .locals 1
    .param p1, "callback"    # Landroidx/core/app/SharedElementCallback;

    .line 2366
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    iput-object p1, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mEnterTransitionCallback:Landroidx/core/app/SharedElementCallback;

    .line 2367
    return-void
.end method

.method public setEnterTransition(Ljava/lang/Object;)V
    .locals 1
    .param p1, "transition"    # Ljava/lang/Object;

    .line 2394
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    iput-object p1, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mEnterTransition:Ljava/lang/Object;

    .line 2395
    return-void
.end method

.method public setExitSharedElementCallback(Landroidx/core/app/SharedElementCallback;)V
    .locals 1
    .param p1, "callback"    # Landroidx/core/app/SharedElementCallback;

    .line 2377
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    iput-object p1, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mExitTransitionCallback:Landroidx/core/app/SharedElementCallback;

    .line 2378
    return-void
.end method

.method public setExitTransition(Ljava/lang/Object;)V
    .locals 1
    .param p1, "transition"    # Ljava/lang/Object;

    .line 2470
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    iput-object p1, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mExitTransition:Ljava/lang/Object;

    .line 2471
    return-void
.end method

.method setFocusedView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 3373
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    iput-object p1, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mFocusedView:Landroid/view/View;

    .line 3374
    return-void
.end method

.method public setHasOptionsMenu(Z)V
    .locals 1
    .param p1, "hasMenu"    # Z

    .line 1282
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    if-eq v0, p1, :cond_0

    .line 1283
    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    .line 1284
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1285
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentHostCallback;->onSupportInvalidateOptionsMenu()V

    .line 1288
    :cond_0
    return-void
.end method

.method public setInitialSavedState(Landroidx/fragment/app/Fragment$SavedState;)V
    .locals 2
    .param p1, "state"    # Landroidx/fragment/app/Fragment$SavedState;

    .line 778
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-nez v0, :cond_1

    .line 781
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroidx/fragment/app/Fragment$SavedState;->mState:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 782
    iget-object v0, p1, Landroidx/fragment/app/Fragment$SavedState;->mState:Landroid/os/Bundle;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 783
    return-void

    .line 779
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment already added"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMenuVisibility(Z)V
    .locals 1
    .param p1, "menuVisible"    # Z

    .line 1300
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    if-eq v0, p1, :cond_0

    .line 1301
    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    .line 1302
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1303
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentHostCallback;->onSupportInvalidateOptionsMenu()V

    .line 1306
    :cond_0
    return-void
.end method

.method setNextTransition(I)V
    .locals 1
    .param p1, "nextTransition"    # I

    .line 3310
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 3311
    return-void

    .line 3313
    :cond_0
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    .line 3314
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    iput p1, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mNextTransition:I

    .line 3315
    return-void
.end method

.method setPopDirection(Z)V
    .locals 1
    .param p1, "isPop"    # Z

    .line 3296
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    .line 3297
    return-void

    .line 3299
    :cond_0
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    iput-boolean p1, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mIsPop:Z

    .line 3300
    return-void
.end method

.method setPostOnViewCreatedAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .line 3362
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    iput p1, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mPostOnViewCreatedAlpha:F

    .line 3363
    return-void
.end method

.method public setReenterTransition(Ljava/lang/Object;)V
    .locals 1
    .param p1, "transition"    # Ljava/lang/Object;

    .line 2509
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    iput-object p1, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mReenterTransition:Ljava/lang/Object;

    .line 2510
    return-void
.end method

.method public setRetainInstance(Z)V
    .locals 1
    .param p1, "retain"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1243
    invoke-static {p0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->onSetRetainInstanceUsage(Landroidx/fragment/app/Fragment;)V

    .line 1244
    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->mRetainInstance:Z

    .line 1245
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz v0, :cond_1

    .line 1246
    if-eqz p1, :cond_0

    .line 1247
    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentManager;->addRetainedFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 1249
    :cond_0
    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentManager;->removeRetainedFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 1252
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mRetainInstanceChangedWhileDetached:Z

    .line 1254
    :goto_0
    return-void
.end method

.method public setReturnTransition(Ljava/lang/Object;)V
    .locals 1
    .param p1, "transition"    # Ljava/lang/Object;

    .line 2430
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    iput-object p1, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mReturnTransition:Ljava/lang/Object;

    .line 2431
    return-void
.end method

.method public setSharedElementEnterTransition(Ljava/lang/Object;)V
    .locals 1
    .param p1, "transition"    # Ljava/lang/Object;

    .line 2544
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    iput-object p1, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mSharedElementEnterTransition:Ljava/lang/Object;

    .line 2545
    return-void
.end method

.method setSharedElementNames(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3335
    .local p1, "sharedElementSourceNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "sharedElementTargetNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    .line 3336
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    iput-object p1, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 3337
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    iput-object p2, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 3338
    return-void
.end method

.method public setSharedElementReturnTransition(Ljava/lang/Object;)V
    .locals 1
    .param p1, "transition"    # Ljava/lang/Object;

    .line 2579
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    iput-object p1, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mSharedElementReturnTransition:Ljava/lang/Object;

    .line 2580
    return-void
.end method

.method public setTargetFragment(Landroidx/fragment/app/Fragment;I)V
    .locals 6
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;
    .param p2, "requestCode"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 809
    if-eqz p1, :cond_0

    .line 810
    invoke-static {p0, p1, p2}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->onSetTargetFragmentUsage(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;I)V

    .line 816
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 817
    .local v0, "mine":Landroidx/fragment/app/FragmentManager;
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    goto :goto_0

    .line 818
    :cond_1
    move-object v2, v1

    :goto_0
    nop

    .line 819
    .local v2, "theirs":Landroidx/fragment/app/FragmentManager;
    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    if-ne v0, v2, :cond_2

    goto :goto_1

    .line 820
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must share the same FragmentManager to be set as a target fragment"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 825
    :cond_3
    :goto_1
    move-object v3, p1

    .local v3, "check":Landroidx/fragment/app/Fragment;
    :goto_2
    if-eqz v3, :cond_5

    .line 826
    invoke-virtual {v3, p0}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 825
    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroidx/fragment/app/Fragment;->getTargetFragment(Z)Landroidx/fragment/app/Fragment;

    move-result-object v3

    goto :goto_2

    .line 827
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " as the target of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " would create a target cycle"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 831
    .end local v3    # "check":Landroidx/fragment/app/Fragment;
    :cond_5
    if-nez p1, :cond_6

    .line 832
    iput-object v1, p0, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    .line 833
    iput-object v1, p0, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    goto :goto_3

    .line 834
    :cond_6
    iget-object v3, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz v3, :cond_7

    iget-object v3, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz v3, :cond_7

    .line 836
    iget-object v3, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    iput-object v3, p0, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    .line 837
    iput-object v1, p0, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    goto :goto_3

    .line 840
    :cond_7
    iput-object v1, p0, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    .line 841
    iput-object p1, p0, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    .line 843
    :goto_3
    iput p2, p0, Landroidx/fragment/app/Fragment;->mTargetRequestCode:I

    .line 844
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 3
    .param p1, "isVisibleToUser"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1332
    invoke-static {p0, p1}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->onSetUserVisibleHint(Landroidx/fragment/app/Fragment;Z)V

    .line 1333
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    const/4 v1, 0x5

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget v0, p0, Landroidx/fragment/app/Fragment;->mState:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz v0, :cond_0

    .line 1334
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mIsCreated:Z

    if-eqz v0, :cond_0

    .line 1335
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 1336
    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentManager;->createOrGetFragmentStateManager(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentStateManager;

    move-result-object v2

    .line 1335
    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->performPendingDeferredStart(Landroidx/fragment/app/FragmentStateManager;)V

    .line 1338
    :cond_0
    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    .line 1339
    iget v0, p0, Landroidx/fragment/app/Fragment;->mState:I

    if-ge v0, v1, :cond_1

    if-nez p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    .line 1340
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    .line 1343
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mSavedUserVisibleHint:Ljava/lang/Boolean;

    .line 1345
    :cond_2
    return-void
.end method

.method public shouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;

    .line 1615
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-eqz v0, :cond_0

    .line 1616
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentHostCallback;->onShouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1618
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1376
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 1377
    return-void
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;

    .line 1385
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-eqz v0, :cond_0

    .line 1388
    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1, v1, p2}, Landroidx/fragment/app/FragmentHostCallback;->onStartActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 1389
    return-void

    .line 1386
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1409
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 1410
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "options"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1432
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-eqz v0, :cond_0

    .line 1435
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/fragment/app/FragmentManager;->launchStartActivityForResult(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 1437
    return-void

    .line 1433
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 14
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "requestCode"    # I
    .param p3, "fillInIntent"    # Landroid/content/Intent;
    .param p4, "flagsMask"    # I
    .param p5, "flagsValues"    # I
    .param p6, "extraFlags"    # I
    .param p7, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1466
    move-object v9, p0

    iget-object v0, v9, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    const-string v1, "Fragment "

    if-eqz v0, :cond_1

    .line 1469
    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " received the following in startIntentSenderForResult() requestCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v10, p2

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " IntentSender: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object v11, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " fillInIntent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v12, p3

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " options: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v13, p7

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1469
    :cond_0
    move-object v11, p1

    move/from16 v10, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p7

    .line 1474
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Landroidx/fragment/app/FragmentManager;->launchStartIntentSenderForResult(Landroidx/fragment/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 1476
    return-void

    .line 1467
    :cond_1
    move-object v11, p1

    move/from16 v10, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p7

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startPostponedEnterTransition()V
    .locals 2

    .line 2737
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    iget-boolean v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mEnterTransitionPostponed:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 2741
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-nez v0, :cond_1

    .line 2742
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mEnterTransitionPostponed:Z

    goto :goto_0

    .line 2743
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 2744
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroidx/fragment/app/Fragment$2;

    invoke-direct {v1, p0}, Landroidx/fragment/app/Fragment$2;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 2751
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->callStartTransitionListener(Z)V

    .line 2753
    :goto_0
    return-void

    .line 2739
    :cond_3
    :goto_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 679
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 680
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 681
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    const-string v2, "{"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    iget-object v2, p0, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    iget v2, p0, Landroidx/fragment/app/Fragment;->mFragmentId:I

    if-eqz v2, :cond_0

    .line 688
    const-string v2, " id=0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    iget v2, p0, Landroidx/fragment/app/Fragment;->mFragmentId:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    :cond_0
    iget-object v2, p0, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 692
    const-string v2, " tag="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    iget-object v2, p0, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    :cond_1
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public unregisterForContextMenu(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 2332
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 2333
    return-void
.end method
